import { access, readFile } from 'node:fs/promises';
import { constants } from 'node:fs';
import { resolve } from 'node:path';
import { DEMO_PROPERTIES } from '../assets/data.js';

const root = resolve(new URL('..', import.meta.url).pathname);
const errors = [];
const seen = { id: new Set(), reference: new Set(), slug: new Set() };

async function exists(path) {
  try {
    await access(resolve(root, path.replace(/^\//, '')), constants.R_OK);
    return true;
  } catch {
    return false;
  }
}

for (const property of DEMO_PROPERTIES) {
  for (const key of Object.keys(seen)) {
    const value = String(property[key] ?? '').trim();
    if (!value) errors.push(`El inmueble sin ${key}: ${property.title || '(sin título)'}`);
    else if (seen[key].has(value)) errors.push(`${key} duplicado: ${value}`);
    else seen[key].add(value);
  }

  if (property.status === 'published') {
    if (!property.title?.trim()) errors.push(`Publicado sin título: ${property.reference}`);
    if (!property.short_description?.trim()) errors.push(`Publicado sin resumen: ${property.reference}`);
    if (!property.description?.trim()) errors.push(`Publicado sin descripción: ${property.reference}`);
    if (!Array.isArray(property.images) || property.images.length === 0) errors.push(`Publicado sin imágenes: ${property.reference}`);
  }

  for (const image of property.images || []) {
    if (!(await exists(image))) errors.push(`Imagen inexistente en ${property.reference}: ${image}`);
  }
}

const requiredFiles = [
  'fallback.html', 'vercel.json', 'assets/app.js', 'assets/service.js', 'assets/data.js',
  'assets/styles.css', 'assets/premium.css', 'assets/v5.css', 'assets/v6.css',
  'supabase/schema.sql', 'supabase/seed.sql', 'public/images/property-placeholder.svg'
];
for (const file of requiredFiles) if (!(await exists(file))) errors.push(`Falta archivo obligatorio: ${file}`);

const index = await readFile(resolve(root, 'fallback.html'), 'utf8');
if (!index.includes('/assets/v6.css')) errors.push('fallback.html no carga la hoja final v6.css');
if (!index.includes('lang="es"')) errors.push('fallback.html no declara idioma español');

const vercel = JSON.parse(await readFile(resolve(root, 'vercel.json'), 'utf8'));
if (!Array.isArray(vercel.rewrites) || !vercel.rewrites.some(rule => String(rule.destination).startsWith('/api/render'))) {
  errors.push('vercel.json no contiene el renderizado SEO dinámico hacia /api/render');
}

const novae = DEMO_PROPERTIES.find(property => property.reference === 'NOVAÉ');
if (novae?.featured) errors.push('NOVAÉ no debe aparecer como destacada mientras use render orientativo');
if (!novae?.source_url) errors.push('NOVAÉ necesita fuente oficial documentada');

if (errors.length) {
  console.error(`Validación fallida (${errors.length}):`);
  for (const error of errors) console.error(`- ${error}`);
  process.exit(1);
}

console.log(`Validación correcta: ${DEMO_PROPERTIES.length} inmuebles, ${seen.slug.size} rutas únicas y recursos locales disponibles.`);
