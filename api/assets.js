import { statSync } from 'node:fs';

/* Los archivos de /assets no llevan huella en el nombre. Mientras se sirvieron
   como "immutable" durante un año, cualquier corrección publicada —incluida la
   del visor de imágenes— seguía sin llegar a quien ya había visitado la web:
   su navegador reutilizaba el app.js antiguo y el fallo parecía volver solo.
   Esta marca cambia en cada despliegue y acompaña a la cabecera de
   revalidación de vercel.json. Hacen falta las dos cosas. */

const ASSET_FILES = ['app.js', 'service.js', 'data.js', 'seo-data.js', 'styles.css', 'premium.css', 'v5.css', 'v6.css', 'seo.css', 'mobile.css'];

function localVersion() {
  try {
    const stamps = ASSET_FILES.map((file) => statSync(new URL(`../assets/${file}`, import.meta.url)).mtimeMs);
    return Math.round(Math.max(...stamps)).toString(36);
  } catch {
    return 'dev';
  }
}

export const ASSET_VERSION = String(process.env.VERCEL_GIT_COMMIT_SHA || process.env.VERCEL_DEPLOYMENT_ID || '').slice(0, 12) || localVersion();

export function assetUrl(path) {
  return `${path}?v=${ASSET_VERSION}`;
}

/* Los módulos que importa app.js (./service.js, ./data.js, ./seo-data.js) no
   heredan la marca del script principal. Sin este mapa podría convivir un
   app.js nuevo con un service.js viejo, que es peor que no versionar nada. */
export function moduleImportMap(paths) {
  return JSON.stringify({ imports: Object.fromEntries(paths.map((path) => [path, assetUrl(path)])) }).replace(/</g, '\\u003c');
}
