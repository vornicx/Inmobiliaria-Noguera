/* Sube las fotos de la cartera al bucket `property-images` de Supabase y
 * reescribe las URLs de public.properties para que apunten al bucket.
 *
 * La clave NUNCA se escribe aquí ni se pasa por parámetro visible: se lee del
 * entorno. Las políticas de storage del proyecto exigen un usuario admin
 * (schema.sql: `for insert to authenticated with check (... and is_admin())`),
 * así que hace falta la service_role key, que salta RLS. Trátala como una
 * contraseña: no la pegues en chats, capturas ni commits.
 *
 * Uso:
 *   export SUPABASE_URL="https://xxxx.supabase.co"
 *   export SUPABASE_SERVICE_ROLE_KEY="..."     # Settings > API > service_role
 *   node scripts/subir-fotos-supabase.mjs --fotos ./fotos
 *
 * Opciones:
 *   --fotos <dir>   carpeta con las fotos (por defecto ./fotos)
 *   --dry           no sube nada, solo informa de lo que haría
 *   --sql <fichero> escribe el UPDATE de URLs en vez de aplicarlo
 */
import { readFileSync, readdirSync, statSync, existsSync, writeFileSync } from 'fs';
import { join, extname } from 'path';

const arg = (n, def = null) => {
  const i = process.argv.indexOf(n);
  return i > -1 ? (process.argv[i + 1] || true) : def;
};
const DIR = String(arg('--fotos', './fotos'));
const DRY = process.argv.includes('--dry');
const SQL_OUT = arg('--sql', null);
const BUCKET = 'property-images';

const URL_BASE = (process.env.SUPABASE_URL || '').replace(/\/$/, '');
const KEY = process.env.SUPABASE_SERVICE_ROLE_KEY || '';

if (!URL_BASE) { console.error('Falta SUPABASE_URL en el entorno.'); process.exit(1); }
if (!KEY && !DRY) { console.error('Falta SUPABASE_SERVICE_ROLE_KEY en el entorno. Usa --dry para probar sin clave.'); process.exit(1); }
if (!existsSync(DIR)) { console.error(`No existe la carpeta de fotos: ${DIR}`); process.exit(1); }

const MIME = { '.jpg': 'image/jpeg', '.jpeg': 'image/jpeg', '.png': 'image/png', '.webp': 'image/webp' };

const refs = readdirSync(DIR).filter((d) => statSync(join(DIR, d)).isDirectory());
console.log(`inmuebles con fotos: ${refs.length}${DRY ? '  (simulación)' : ''}`);

const porRef = new Map();
let subidas = 0; let saltadas = 0; let fallos = 0; let bytes = 0;

for (const ref of refs) {
  const ficheros = readdirSync(join(DIR, ref)).filter((f) => MIME[extname(f).toLowerCase()]).sort();
  const urls = [];
  for (const f of ficheros) {
    const ruta = join(DIR, ref, f);
    const destino = `${ref}/${f}`;
    const publica = `${URL_BASE}/storage/v1/object/public/${BUCKET}/${destino}`;
    urls.push(publica);
    bytes += statSync(ruta).size;
    if (DRY) { saltadas++; continue; }
    let hecho = false;
    for (let intento = 1; intento <= 3 && !hecho; intento++) {
      try {
        const r = await fetch(`${URL_BASE}/storage/v1/object/${BUCKET}/${encodeURI(destino)}`, {
          method: 'POST',
          headers: {
            Authorization: `Bearer ${KEY}`,
            apikey: KEY,
            'Content-Type': MIME[extname(f).toLowerCase()],
            'x-upsert': 'true',
          },
          body: readFileSync(ruta),
        });
        if (r.ok) { subidas++; hecho = true; break; }
        const cuerpo = await r.text();
        if (intento === 3) console.log(`  fallo ${r.status} en ${destino}: ${cuerpo.slice(0, 90)}`);
        await new Promise((x) => setTimeout(x, 1500 * intento));
      } catch (e) {
        if (intento === 3) console.log(`  red en ${destino}: ${e.message.slice(0, 60)}`);
        await new Promise((x) => setTimeout(x, 1500));
      }
    }
    if (!hecho) fallos++;
  }
  porRef.set(ref, urls);
  if ((subidas + saltadas) % 200 === 0 && subidas + saltadas > 0) {
    console.log(`  ${subidas + saltadas} ficheros · ${(bytes / 1048576).toFixed(1)} MB`);
  }
}

console.log(`\nsubidas ${subidas} · simuladas ${saltadas} · fallos ${fallos} · ${(bytes / 1048576).toFixed(1)} MB`);

// UPDATE de las URLs en la tabla
const q = (v) => `'${String(v).replace(/'/g, "''")}'`;
const sentencias = [...porRef.entries()]
  .filter(([, urls]) => urls.length)
  .map(([ref, urls]) => `update public.properties set images = ARRAY[${urls.map(q).join(',')}]::text[], image_fallback = ${q(urls[0])} where reference = ${q(ref)};`);
const sql = `-- Reapunta las imágenes al bucket ${BUCKET}\nbegin;\n${sentencias.join('\n')}\ncommit;\n`;

if (SQL_OUT) {
  writeFileSync(String(SQL_OUT), sql);
  console.log(`SQL escrito en ${SQL_OUT} (${sentencias.length} updates). Ejecútalo en Supabase > SQL Editor.`);
} else {
  writeFileSync('supabase/update-image-urls.sql', sql);
  console.log(`SQL escrito en supabase/update-image-urls.sql (${sentencias.length} updates).`);
}
if (fallos) console.log(`\nATENCIÓN: ${fallos} ficheros no subieron. Vuelve a lanzar el script: es reanudable (x-upsert).`);
