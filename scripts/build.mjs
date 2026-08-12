import { cp, mkdir, rm, copyFile, stat } from 'node:fs/promises';
import { resolve, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const out = resolve(root, 'dist');

const staticRoots = ['assets', 'public'];
const staticFiles = [
  'favicon.svg',
  'manifest.webmanifest',
  'robots.txt',
  'fallback.html',
  '8f5247e3ddad4ee4a985f6b8af52bb13.txt'
];

await rm(out, { recursive: true, force: true });
await mkdir(out, { recursive: true });

for (const entry of staticRoots) {
  await cp(resolve(root, entry), resolve(out, entry), { recursive: true });
}

for (const entry of staticFiles) {
  await copyFile(resolve(root, entry), resolve(out, entry));
}

const required = [
  'assets/styles.css',
  'assets/app.js',
  'assets/data.js',
  'assets/service.js',
  'assets/seo-data.js',
  'assets/premium.css',
  'assets/v5.css',
  'assets/v6.css',
  'assets/seo.css',
  'public/images/property-placeholder.svg',
  'favicon.svg',
  'manifest.webmanifest',
  'robots.txt'
];

for (const entry of required) {
  const info = await stat(resolve(out, entry));
  if (!info.isFile() || info.size === 0) throw new Error(`Build inválido: falta ${entry}`);
}

console.log(`Build estático generado en ${out}`);
