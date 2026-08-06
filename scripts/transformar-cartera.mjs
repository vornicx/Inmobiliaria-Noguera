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

/* El sitio de origen sirve entidades HTML (&#8230;, &#8211;) que sin
   descodificar se publicarían tal cual en la ficha. */
const ENTIDADES = { '&#8230;': '...', '&#8211;': '-', '&#8212;': '-', '&amp;': '&',
  '&quot;': '"', '&#039;': "'", '&apos;': "'", '&nbsp;': ' ', '&hellip;': '...', '&ndash;': '-' };
const desescapa = (v) => typeof v === 'string'
  ? v.replace(/&#?\w+;/g, (m) => ENTIDADES[m] ?? m).replace(/\s{2,}/g, ' ').trim()
  : v;

/* Los valores vienen como '17m2', '78.30', '3.000m2', '6420m2'. Quitar todo lo
   que no sea dígito conservaba el 2 de "m2" (17 -> 172) y borrar los puntos
   convertía 78.30 en 7830. Se retira primero la unidad, y el punto sólo se
   trata como separador de miles cuando le siguen exactamente tres dígitos. */
const num = (s) => {
  if (s === null || s === undefined) return null;
  let t = String(s).toLowerCase()
    .replace(/m\s*(?:2|²)/g, ' ')
    .replace(/metros?(?:\s+cuadrados?)?/g, ' ')
    .replace(/[€$]/g, ' ')
    .trim();
  const soloNumero = t.match(/-?[\d.,]+/);
  if (!soloNumero) return null;
  t = soloNumero[0];
  t = t.replace(/\.(?=\d{3}(?:\D|$))/g, '');   // 3.000 -> 3000
  t = t.replace(/,(?=\d{3}(?:\D|$))/g, '');    // 1,250 -> 1250
  t = t.replace(',', '.');                     // decimal español
  const n = Number(t);
  return Number.isFinite(n) && n > 0 ? n : null;
};

const zonaDe = (titulo) => {
  const m = (titulo || '').match(/\ben\s+(?:zona\s+)?([^(]+?)\s*(?:\(Ref|$)/i);
  if (!m) return 'Écija';
  return m[1].trim().replace(/\s+/g, ' ').replace(/^el\s+/i, 'El ').slice(0, 60) || 'Écija';
};

/* Los slugs de las fichas nuevas llevan el emoji percent-encoded (%f0%9f%94%91),
   que sin descodificar acaba en la URL pública como "f0-9f-94-91...". */
const slugDe = (url) => {
  const bruto = (url.match(/\/property\/([^/]+)\//) || [])[1] || '';
  let s = bruto;
  for (let i = 0; i < 2; i++) {
    try { const d = decodeURIComponent(s); if (d === s) break; s = d; } catch (_) { break; }
  }
  s = s.replace(/(?:^|-)(?:[0-9a-f]{2}-){2,}[0-9a-f]{2}-?/gi, '-');
  return s
    .replace(/[\u{1F300}-\u{1FAFF}\u{2600}-\u{27BF}\u{FE0F}]/gu, '-')
    .normalize('NFD').replace(/[\u0300-\u036f]/g, '')
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '')
    .replace(/-{2,}/g, '-')
    .slice(0, 80)
    .replace(/-+$/, '');
};

const caracteristicas = (v) => (Array.isArray(v) ? v : String(v || "").split(/[\n,]| {2,}/))
  .map((x) => String(x))
  .map((s) => s.trim())
  .filter((s) => s.length > 2 && s.length < 42)
  .slice(0, 10);

const salida = [];
const descartes = [];
const erratas = [];

for (const x of cruda) {
  const precio = num(x.precio);
  const tipo = tipoDe(x.titulo, x.descripcion);
  const esSuelo = ['solar', 'parcela_rustica', 'parcela_urbana'].includes(tipo);
  let sup = num(x.sup);
  /* IMPLAUSIBLE: la web de origen tiene erratas de tecleo (p.ej. '1.5002' donde
     la descripción dice 1500 m²). No se adivina el valor: se descarta para que
     la ficha muestre "Consultar" en vez de una superficie absurda. */
  if (sup !== null && sup < 5) { erratas.push({ ref: x.ref, valor: x.sup, titulo: x.titulo }); sup = null; }

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
    title: desescapa(tituloLimpio(x.titulo)),
    short_description: desescapa((x.resumen || '').slice(0, 240)),
    description: desescapa((x.descripcion || x.resumen || '').trim()),
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

// red de seguridad: slug y referencia únicos (la BD tiene unique en ambos)
const slugsVistos = new Map();
salida.forEach((p) => {
  if (!p.slug) p.slug = `inmueble-${p.reference}`.toLowerCase();
  const n = (slugsVistos.get(p.slug) || 0) + 1;
  slugsVistos.set(p.slug, n);
  if (n > 1) p.slug = `${p.slug}-${n}`;
});

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
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  featured = excluded.featured,
  updated_at = now();`).join('\n')}
commit;
`;

writeFileSync('seed-properties.sql', sql);
writeFileSync('cartera-web.json', JSON.stringify(salida, null, 1));

console.log(`inmuebles válidos: ${salida.length}`);
if (erratas.length) {
  console.log(`superficies imposibles en el origen (descartadas): ${erratas.length}`);
  erratas.forEach((e) => console.log(`   ref ${e.ref}: "${e.valor}" · ${String(e.titulo).slice(0, 46)}`));
}
console.log(`descartados: ${descartes.length}`);
descartes.slice(0, 8).forEach((d) => console.log(`   ${d.motivo}: ${(d.titulo || '').slice(0, 50)}`));
console.log(`\noperación: venta ${salida.filter((p) => p.operation === 'venta').length} · alquiler ${salida.filter((p) => p.operation === 'alquiler').length}`);
const tipos = {};
salida.forEach((p) => { tipos[p.property_type] = (tipos[p.property_type] || 0) + 1; });
console.log('tipos:', tipos);
console.log(`imágenes totales: ${salida.reduce((a, p) => a + p.images.length, 0)}`);
console.log(`precio: min ${Math.min(...salida.map((p) => p.price))} · max ${Math.max(...salida.map((p) => p.price))}`);
console.log(`SQL: seed-properties.sql (${Math.round(sql.length / 1024)} KB)`);
