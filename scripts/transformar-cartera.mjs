/* cartera.json (extracción cruda) -> modelo de la web + SQL para Supabase */
import { readFileSync, writeFileSync } from 'fs';

const cruda = JSON.parse(readFileSync('cartera.json', 'utf8'));

const TIPOS = [
  [/^(piso)/i, 'piso'], [/^(á|a)tico/i, 'ático'], [/^casa para reformar/i, 'casa_reformar'],
  [/^casa/i, 'casa'], [/^chalet/i, 'chalet'], [/^apartamento/i, 'apartamento'],
  [/^(local|oficina)/i, 'local'], [/^nave/i, 'nave'],
  [/^parcela r(ú|u)stica/i, 'parcela_rustica'], [/^parcela/i, 'parcela_urbana'],
  [/^solar/i, 'solar'], [/^(garaje|parking|plaza de garaje)/i, 'garaje'],
  [/^(d(ú|u)plex)/i, 'piso'], [/^edificio/i, 'casa'], [/^trastero/i, 'garaje'],
];

/* Los títulos nuevos empiezan por emoji y van en mayúsculas, así que el tipo
   no puede inferirse sólo del primer token: se normaliza y se busca en todo. */
const normaliza = (s) => String(s || '')
  .replace(/[\u{1F300}-\u{1FAFF}\u{2600}-\u{27BF}\u{FE0F}]/gu, ' ')
  .replace(/\s+/g, ' ').trim();

const tipoDe = (titulo, descripcion) => {
  const t = normaliza(titulo);
  for (const [re, tipo] of TIPOS) if (re.test(t)) return tipo;
  const suelto = t + ' ' + normaliza(descripcion).slice(0, 120);
  for (const [, tipo] of TIPOS) {
    const palabra = { piso: /\bpiso\b/i, 'ático': /\b(á|a)tico\b/i, casa_reformar: /casa para reformar|para reformar/i,
      casa: /\bcasa\b/i, chalet: /\bchalet\b/i, apartamento: /\bapartamento\b/i, local: /\blocal\b|\boficina\b/i,
      nave: /\bnave\b/i, parcela_rustica: /parcela r(ú|u)stica|finca r(ú|u)stica/i, parcela_urbana: /\bparcela\b/i,
      solar: /\bsolar\b/i, garaje: /\bgaraje\b|\bparking\b|\bplaza de garaje\b|\btrastero\b/i }[tipo];
    if (palabra && palabra.test(suelto)) return tipo;
  }
  return 'piso';
};

/* Títulos heterogéneos: unos en MAYÚSCULAS con emoji, otros con la referencia
   incrustada. Se normalizan para poder mostrarlos con dignidad. */
const tituloLimpio = (s) => {
  let t = normaliza(s)
    .replace(/\(\s*Ref[:.\s]*[\w\d]+\s*\)/gi, '')
    .replace(/\bRef[:.\s]*\d+\b/gi, '')
    .replace(/^[^\p{L}]+/u, '')
    .replace(/\s{2,}/g, ' ')
    .replace(/\s+([,.)])/g, '$1')
    .trim();
  const letras = t.replace(/[^\p{L}]/gu, '');
  const mayus = letras ? letras.replace(/[^\p{Lu}]/gu, '').length / letras.length : 0;
  if (mayus > 0.6 && t.length > 8) {
    t = t.toLowerCase().replace(/^(\p{Ll})/u, (m) => m.toUpperCase());
  }
  return t
    .replace(/(^|[^\p{L}])(ecija|écija)(?![\p{L}])/giu, (m, a) => a + 'Écija')
    .replace(/(^|[^\p{L}])sevilla(?![\p{L}])/giu, (m, a) => a + 'Sevilla')
    .replace(/\b(avd|avda)\b\.?/gi, 'Avda.')
    .replace(/\s*\(\s*\)/g, '')
    .replace(/[\s,;.-]+$/, '')
    .trim();
};

const num = (s) => {
  if (!s) return null;
  const limpio = String(s).replace(/\./g, '').replace(',', '.').replace(/[^\d.]/g, '');
  const n = Number(limpio);
  return Number.isFinite(n) && n > 0 ? n : null;
};

const zonaDe = (titulo) => {
  const m = (titulo || '').match(/\ben\s+(?:zona\s+)?([^(]+?)\s*(?:\(Ref|$)/i);
  if (!m) return 'Écija';
  return m[1].trim().replace(/\s+/g, ' ').replace(/^el\s+/i, 'El ').slice(0, 60) || 'Écija';
};

const slugDe = (url) => (url.match(/\/property\/([^/]+)\//) || [])[1] || '';

const caracteristicas = (v) => (Array.isArray(v) ? v : String(v || "").split(/[\n,]| {2,}/))
  .map((x) => String(x))
  .map((s) => s.trim())
  .filter((s) => s.length > 2 && s.length < 42)
  .slice(0, 10);

const salida = [];
const descartes = [];

for (const x of cruda) {
  const precio = num(x.precio);
  const tipo = tipoDe(x.titulo, x.descripcion);
  const esSuelo = ['solar', 'parcela_rustica', 'parcela_urbana'].includes(tipo);
  const sup = num(x.sup);

  if (!precio) { descartes.push({ ref: x.ref, motivo: 'sin precio', titulo: x.titulo }); continue; }
  /* Muchas fichas no llevan la referencia en el slug. Se deriva del propio
     slug, que es único en su sitio, para no perderlas. */
  const slug = slugDe(x.url);
  const ref = x.ref || slug.replace(/[^a-z0-9]+/gi, '-').replace(/^-|-$/g, '');
  if (!ref) { descartes.push({ ref: null, motivo: 'sin referencia ni slug', titulo: x.titulo }); continue; }

  salida.push({
    id: `noguera-${ref}`,
    reference: String(ref),
    slug,
    title: tituloLimpio(x.titulo),
    short_description: (x.resumen || '').slice(0, 240),
    description: (x.descripcion || x.resumen || '').trim(),
    operation: (x.operacion || 'VENTA').toLowerCase() === 'alquiler' ? 'alquiler' : 'venta',
    property_type: tipo,
    price: precio,
    previous_price: null,
    location: 'Écija',
    province: 'Sevilla',
    zone: zonaDe(normaliza(x.titulo)),
    address: 'Écija',
    bedrooms: num(x.dorm),
    bathrooms: num(x.banos),
    area: esSuelo ? null : sup,
    plot_area: esSuelo ? sup : null,
    floor: null,
    year_built: null,
    energy_rating: null,
    features: caracteristicas(x.caract),
    images: x.fotos,
    image_fallback: x.fotos[0] || null,
    source_url: x.url,
    featured: false,
    exclusive: false,
    status: 'published',
    availability: x.vendido ? 'sold' : 'available',
    agent_name: 'Equipo Noguera',
    agent_phone: '955 90 07 48',
  });
}

// red de seguridad: referencia única (la BD tiene unique)
const vistas = new Map();
salida.forEach((p) => {
  const n = (vistas.get(p.reference) || 0) + 1;
  vistas.set(p.reference, n);
  if (n > 1) { p.reference = `${p.reference}-${n}`; p.id = `noguera-${p.reference}`; }
});

// destaca los 6 más caros con foto, para que la home tenga fondo
salida.filter((p) => p.images.length >= 3).sort((a, b) => b.price - a.price)
  .slice(0, 6).forEach((p) => { p.featured = true; });

const q = (v) => v === null || v === undefined ? 'null' : `'${String(v).replace(/'/g, "''")}'`;
const arr = (a) => a && a.length ? `ARRAY[${a.map((s) => q(s)).join(',')}]::text[]` : `'{}'::text[]`;
const n = (v) => v === null || v === undefined ? 'null' : Number(v);

const sql = `-- Carga de la cartera de Inmobiliaria Noguera
-- Generado desde inmobiliarianoguera.com (su propio sitio; robots.txt lo permite).
-- Ejecutar en Supabase > SQL Editor DESPUÉS de schema.sql
begin;
${salida.map((p) => `insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values (${q(p.reference)}, ${q(p.slug)}, ${q(p.title)}, ${q(p.short_description)}, ${q(p.description)},
  ${q(p.operation)}, ${q(p.property_type)}, ${n(p.price)}, ${q(p.location)}, ${q(p.province)}, ${q(p.zone)}, ${q(p.address)},
  ${n(p.bedrooms)}, ${n(p.bathrooms)}, ${n(p.area)}, ${n(p.plot_area)},
  ${arr(p.features)}, ${arr(p.images)}, ${q(p.image_fallback)}, ${q(p.source_url)},
  ${p.featured}, ${q(p.status)}, ${q(p.availability)}, ${q(p.agent_name)}, ${q(p.agent_phone)}, now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();`).join('\n')}
commit;
`;

writeFileSync('seed-properties.sql', sql);
writeFileSync('cartera-web.json', JSON.stringify(salida, null, 1));

console.log(`inmuebles válidos: ${salida.length}`);
console.log(`descartados: ${descartes.length}`);
descartes.slice(0, 8).forEach((d) => console.log(`   ${d.motivo}: ${(d.titulo || '').slice(0, 50)}`));
console.log(`\noperación: venta ${salida.filter((p) => p.operation === 'venta').length} · alquiler ${salida.filter((p) => p.operation === 'alquiler').length}`);
const tipos = {};
salida.forEach((p) => { tipos[p.property_type] = (tipos[p.property_type] || 0) + 1; });
console.log('tipos:', tipos);
console.log(`imágenes totales: ${salida.reduce((a, p) => a + p.images.length, 0)}`);
console.log(`precio: min ${Math.min(...salida.map((p) => p.price))} · max ${Math.max(...salida.map((p) => p.price))}`);
console.log(`SQL: seed-properties.sql (${Math.round(sql.length / 1024)} KB)`);
