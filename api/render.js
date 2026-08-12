import { SITE_ORIGIN } from '../assets/seo-data.js';
import { absoluteUrl, buildJsonLd, escapeHtml, getPublicProperties, normalizePath, renderSsrContent, resolveRoute } from './_seo.js';
import { assetUrl, moduleImportMap } from './assets.js';

const STYLESHEETS = ['/assets/styles.css', '/assets/premium.css', '/assets/v5.css', '/assets/v6.css', '/assets/seo.css'];
const APP_MODULES = ['/assets/service.js', '/assets/data.js', '/assets/seo-data.js'];

function queryObject(req) {
  const result = { ...(req.query || {}) };
  delete result.path;
  return result;
}

export default async function handler(req, res) {
  const properties = await getPublicProperties();
  const requested = Array.isArray(req.query?.path) ? req.query.path.join('/') : (req.query?.path || '');
  const path = normalizePath(requested);
  const query = queryObject(req);
  const legacyProperty = path.startsWith('/property/') ? properties.find((property) => {
    try { return normalizePath(new URL(property.source_url || '').pathname) === path; } catch { return false; }
  }) : null;
  let redirect = '';
  if (legacyProperty) redirect = `/inmuebles/${legacyProperty.slug}`;
  else if (path === '/vender') redirect = '/vender-vivienda-ecija';
  else if (path === '/quienes-somos') redirect = '/nosotros';
  else if (path === '/agents') redirect = '/agentes';
  else if (path === '/contactar') redirect = '/contacto';
  else if (/^\/(todos|property|full-width-listing|simple-listing|listado-inmuebles-mapa)(\/page\/\d+)?$/.test(path)) redirect = '/inmuebles';
  else if (path === '/' && query['property-type'] === 'piso') redirect = '/pisos-venta-ecija';
  else if (path === '/' && query['property-type'] === 'casa') redirect = '/casas-venta-ecija';
  else if (path === '/' && query['property-contract-type'] === 'alquiler') redirect = '/alquiler-ecija';
  else if (path === '/' && query['property-contract-type'] === 'venta') redirect = '/inmuebles';
  if (redirect) {
    res.statusCode = 308;
    res.setHeader('Location', redirect);
    res.setHeader('Cache-Control', 'public, s-maxage=86400');
    res.end();
    return;
  }
  const route = resolveRoute(path, query, properties);
  const origin = String(process.env.SITE_URL || SITE_ORIGIN).replace(/\/$/, '');
  const canonical = `${origin}${route.path === '/' ? '/' : route.path}`;
  const image = absoluteUrl(route.image || properties.find((item) => item.images?.length)?.images?.[0], origin);
  const jsonLd = buildJsonLd(route, origin);
  const verification = [
    process.env.GOOGLE_SITE_VERIFICATION ? `<meta name="google-site-verification" content="${escapeHtml(process.env.GOOGLE_SITE_VERIFICATION)}">` : '',
    process.env.BING_SITE_VERIFICATION ? `<meta name="msvalidate.01" content="${escapeHtml(process.env.BING_SITE_VERIFICATION)}">` : ''
  ].join('');
  const html = `<!doctype html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">
<title>${escapeHtml(route.title)}</title>
<meta name="description" content="${escapeHtml(route.description)}">
<meta name="robots" content="${escapeHtml(route.robots)}">
<link rel="canonical" href="${escapeHtml(canonical)}">
<link rel="alternate" hreflang="es-ES" href="${escapeHtml(canonical)}">
<link rel="alternate" hreflang="x-default" href="${escapeHtml(canonical)}">
<meta name="theme-color" content="#991f36">
<meta name="geo.region" content="ES-AN"><meta name="geo.placename" content="Écija"><meta name="ICBM" content="37.5409815, -5.0875463">
<meta property="og:type" content="${route.type === 'guide' ? 'article' : 'website'}">
<meta property="og:locale" content="es_ES"><meta property="og:site_name" content="Inmobiliaria Noguera">
<meta property="og:title" content="${escapeHtml(route.title)}"><meta property="og:description" content="${escapeHtml(route.description)}">
<meta property="og:url" content="${escapeHtml(canonical)}"><meta property="og:image" content="${escapeHtml(image)}"><meta property="og:image:alt" content="${escapeHtml(route.h1)}">
<meta name="twitter:card" content="summary_large_image"><meta name="twitter:title" content="${escapeHtml(route.title)}"><meta name="twitter:description" content="${escapeHtml(route.description)}"><meta name="twitter:image" content="${escapeHtml(image)}">
${verification}
<link rel="icon" href="/favicon.svg" type="image/svg+xml"><link rel="icon" href="/public/images/brand/favicon-32.png" type="image/png" sizes="32x32"><link rel="apple-touch-icon" href="/public/images/brand/apple-touch-icon.png"><link rel="manifest" href="/manifest.webmanifest">
<link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Manrope:wght@500;600;700;800&display=swap" rel="stylesheet">
${STYLESHEETS.map((href) => `<link rel="stylesheet" href="${assetUrl(href)}">`).join('')}
<script type="importmap">${moduleImportMap(APP_MODULES)}</script>
<script id="seo-schema" type="application/ld+json">${JSON.stringify(jsonLd).replace(/</g, '\\u003c')}</script>
</head>
<body>
<a class="skip-link" href="#main">Saltar al contenido</a>
<div id="app" aria-live="polite">${renderSsrContent(route, properties)}</div>
<div id="toast-region" class="toast-region" aria-live="assertive"></div>
<div id="modal-root"></div>
<div id="cookie-root"></div>
<script type="module" src="${assetUrl('/assets/app.js')}"></script>
</body></html>`;

  res.statusCode = route.status;
  res.setHeader('Content-Type', 'text/html; charset=utf-8');
  const dynamicRoute = ['property','collection','area'].includes(route.type);
  const privateRoute = ['utility','legal'].includes(route.type) || path.startsWith('/admin');
  res.setHeader('Cache-Control', privateRoute ? 'private, no-store, max-age=0' : route.status === 200 ? (dynamicRoute ? 'public, s-maxage=60, stale-while-revalidate=300' : 'public, s-maxage=3600, stale-while-revalidate=86400') : 'public, s-maxage=60');
  res.setHeader('X-Robots-Tag', route.robots);
  res.setHeader('Link', `<${canonical}>; rel="canonical"`);
  res.end(html);
}
