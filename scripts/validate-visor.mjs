/* Guardia del visor de imágenes de las fichas.
   El visor se ha roto ya dos veces por los mismos motivos: la delegación de
   clics colgada de #app cuando el modal vive fuera, otra capa por encima de la
   galería, o una corrección que no llegaba al navegador por la caché. Esto
   comprueba esas condiciones en cada `npm run check`, antes de publicar. */

import { readFile } from 'node:fs/promises';
import { resolve } from 'node:path';

const root = resolve(new URL('..', import.meta.url).pathname);
const errors = [];
const read = (file) => readFile(resolve(root, file), 'utf8');

const [app, render, fallback, vercelRaw, ...sheets] = await Promise.all([
  read('assets/app.js'),
  read('api/render.js'),
  read('fallback.html'),
  read('vercel.json'),
  read('assets/styles.css'),
  read('assets/premium.css'),
  read('assets/v5.css'),
  read('assets/v6.css'),
]);
const css = sheets.join('\n');

/* Última declaración de z-index para un selector simple. No resuelve
   especificidad: basta porque cada capa se declara con su propio selector. */
function zIndexOf(selector) {
  const pattern = new RegExp(`(?:^|[,{}\\s])${selector.replace(/[.#]/g, '\\$&')}\\s*(?:,[^{]*)?\\{([^}]*)\\}`, 'g');
  let value = null;
  for (const match of css.matchAll(pattern)) {
    const found = [...match[1].matchAll(/z-index\s*:\s*(-?\d+)/g)].pop();
    if (found) value = Number(found[1]);
  }
  return value;
}

function ruleFor(selector) {
  const pattern = new RegExp(`(?:^|[,{}\\s])${selector.replace(/[.#]/g, '\\$&')}\\s*(?:,[^{]*)?\\{([^}]*)\\}`, 'g');
  return [...css.matchAll(pattern)].map((match) => match[1]).join('\n');
}

/* 1. El modal se pinta en #modal-root, fuera de #app: la delegación de clics
      tiene que estar en document o los botones dejan de responder. */
if (!/document\.addEventListener\(\s*'click'\s*,\s*onUiClick\s*\)/.test(app)) {
  errors.push('La delegación de clics del visor no está en document: el modal vive fuera de #app y sus botones dejarían de responder.');
}

/* 2. Acciones mínimas del visor. */
for (const action of ['open-gallery', 'close-modal', 'gallery-prev', 'gallery-next']) {
  if (!app.includes(`action === '${action}'`)) errors.push(`El visor no atiende la acción "${action}".`);
}

/* 3. Teclado: salir y pasar fotos. */
for (const key of ['Escape', 'ArrowLeft', 'ArrowRight']) {
  if (!new RegExp(`event\\.key === '${key}'`).test(app)) errors.push(`El visor no responde a la tecla ${key}.`);
}

/* 4. Una foto caída no puede dejar el visor con el icono de imagen rota. */
const modalFn = app.match(/function renderGalleryModal\(\)\s*\{[\s\S]*?\n\}/)?.[0] || '';
if (!modalFn.includes('imageErrorAttr')) {
  errors.push('La imagen del visor no tiene respaldo onerror: una URL caída se vería como un visor roto.');
}

/* 5. El contenedor del modal debe existir en el HTML servido y en el de reserva. */
if (!render.includes('id="modal-root"')) errors.push('api/render.js no incluye <div id="modal-root">.');
if (!fallback.includes('id="modal-root"')) errors.push('fallback.html no incluye <div id="modal-root">.');

/* 6. Nada puede quedar por encima del visor ni bloquear sus controles. */
const galleryZ = zIndexOf('#modal-root');
if (!galleryZ) errors.push('#modal-root no declara z-index propio.');
for (const selector of ['#cookie-root', '.whatsapp-float']) {
  const layer = zIndexOf(selector);
  if (layer === null) continue;
  if (galleryZ !== null && layer >= galleryZ) {
    errors.push(`${selector} (z-index ${layer}) queda por encima del visor (z-index ${galleryZ}) y volvería a bloquear sus botones.`);
  }
}
/* #modal-root está siempre en el documento, vacío casi todo el tiempo y con la
   z más alta. Si captura el puntero y alguna hoja lo estira a pantalla
   completa, se traga los toques de toda la web, empezando por las fotos que
   abren el visor. El puntero lo recibe el fondo del modal, no el contenedor. */
if (!/pointer-events\s*:\s*none/.test(ruleFor('#modal-root'))) {
  errors.push('#modal-root no fija pointer-events: none: vacío y por encima de todo, interceptaría los toques de la página (las fotos dejarían de abrir el visor).');
}
if (!/pointer-events\s*:\s*auto/.test(ruleFor('.modal-backdrop'))) {
  errors.push('.modal-backdrop no fija pointer-events: auto: el visor abierto no recibiría clics.');
}

for (const selector of ['.modal-close', '.modal-nav']) {
  const rule = ruleFor(selector);
  if (!/pointer-events\s*:\s*auto/.test(rule)) errors.push(`${selector} no fija pointer-events: auto.`);
  const controlZ = zIndexOf(selector);
  if (galleryZ !== null && (controlZ === null || controlZ < galleryZ)) {
    errors.push(`${selector} no se declara por encima del fondo del visor.`);
  }
}

/* 7. El botón "Ver N fotos" es absoluto: la galería debe posicionarlo. */
if (!/\.gallery\s*\{[^}]*position\s*:\s*relative/.test(css)) {
  errors.push('.gallery no es position: relative, así que "Ver N fotos" se colocaría respecto al documento.');
}

/* 8. Una corrección que no llega al navegador es una corrección que no existe:
      /assets no puede volver a servirse como inmutable sin huella en el nombre. */
const vercel = JSON.parse(vercelRaw);
const assetsRule = (vercel.headers || []).find((rule) => String(rule.source).startsWith('/assets/'));
const cacheControl = assetsRule?.headers?.find((header) => header.key.toLowerCase() === 'cache-control')?.value || '';
if (/immutable/i.test(cacheControl) || /max-age=(?!0\b)\d+/.test(cacheControl)) {
  errors.push(`vercel.json cachea /assets como "${cacheControl}": quien ya visitó la web seguiría con el JavaScript antiguo tras cada corrección.`);
}
if (!render.includes("assetUrl('/assets/app.js')") || !render.includes('importmap')) {
  errors.push('api/render.js no versiona app.js ni sus módulos: el navegador no distinguiría una versión de otra.');
}

if (errors.length) {
  console.error(`Visor de imágenes: ${errors.length} comprobación(es) fallida(s):`);
  for (const error of errors) console.error(`- ${error}`);
  process.exit(1);
}

console.log('Visor de imágenes correcto: delegación global, controles accesibles, respaldo de imagen y assets versionados.');
