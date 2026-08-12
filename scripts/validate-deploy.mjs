import { access, readFile, stat } from 'node:fs/promises';
import { constants } from 'node:fs';
import { resolve, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const dist = resolve(root, 'dist');
const errors = [];

async function exists(path) {
  try { await access(resolve(dist, path), constants.R_OK); return true; }
  catch { return false; }
}

const required = [
  'assets/styles.css',
  'assets/app.js',
  'public/images/property-placeholder.svg',
  'favicon.svg',
  'manifest.webmanifest',
  'robots.txt'
];

for (const file of required) {
  if (!(await exists(file))) errors.push(`No se publicará ${file}`);
  else if ((await stat(resolve(dist, file))).size === 0) errors.push(`${file} está vacío`);
}

const vercel = JSON.parse(await readFile(resolve(root, 'vercel.json'), 'utf8'));
if (vercel.outputDirectory !== 'dist') errors.push('vercel.json debe fijar outputDirectory=dist');
if (vercel.buildCommand !== 'npm run build') errors.push('vercel.json debe fijar buildCommand=npm run build');

const render = await readFile(resolve(root, 'api/render.js'), 'utf8');
const referencedAssets = [...new Set(render.match(/\/assets\/[A-Za-z0-9._/-]+/g) || [])];
if (!referencedAssets.length) errors.push('api/render.js no referencia ningún recurso /assets/');
for (const href of referencedAssets) {
  const target = href.replace(/^\//, '');
  if (!(await exists(target))) errors.push(`El SSR referencia ${href}, pero no existe en dist`);
}

if (errors.length) {
  console.error(`Validación de despliegue fallida (${errors.length}):`);
  errors.forEach(error => console.error(`- ${error}`));
  process.exit(1);
}

console.log(`Validación de despliegue correcta: ${referencedAssets.length} recursos SSR comprobados dentro de dist.`);
