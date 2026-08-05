import { DEMO_PROPERTIES } from '../assets/data.js';
import { SEO_PAGES, GUIDES, INDEXABLE_CORE_ROUTES, SITE_ORIGIN } from '../assets/seo-data.js';
import { buildJsonLd, resolveRoute, sitemapEntries } from '../api/_seo.js';
import render from '../api/render.js';
import sitemap from '../api/sitemap.js';

const errors=[];
const assert=(condition,message)=>{if(!condition) errors.push(message)};
const allPages=[...Object.entries(SEO_PAGES),...Object.entries(GUIDES)];
const titles=new Set(), descriptions=new Set();
for (const [path,page] of allPages) {
  assert(path.startsWith('/'),`Ruta inválida: ${path}`);
  assert(page.metaTitle?.length>=25 && page.metaTitle.length<=70,`Longitud de title en ${path}: ${page.metaTitle?.length}`);
  assert(page.description?.length>=90 && page.description.length<=180,`Longitud de description en ${path}: ${page.description?.length}`);
  assert(!titles.has(page.metaTitle),`Title duplicado: ${page.metaTitle}`); titles.add(page.metaTitle);
  assert(!descriptions.has(page.description),`Description duplicada: ${page.description}`); descriptions.add(page.description);
  assert(page.title && page.intro,`Contenido principal incompleto: ${path}`);
  if (page.kind==='guide') {
    assert(page.answer && page.sections?.length>=4,`Guía superficial: ${path}`);
    assert(page.sources?.length,`Guía sin fuentes: ${path}`);
  }
}

const publicProperties=DEMO_PROPERTIES.filter(p=>p.status==='published');
for (const path of INDEXABLE_CORE_ROUTES) {
  const route=resolveRoute(path,{},publicProperties);
  assert(route.status===200,`Ruta indexable no resuelve 200: ${path}`);
  assert(route.robots.startsWith('index'),`Ruta indexable con robots incorrecto: ${path}`);
  const graph=buildJsonLd(route,SITE_ORIGIN)?.['@graph'] || [];
  assert(graph.some(item=>Array.isArray(item['@type']) ? item['@type'].includes('RealEstateAgent') : item['@type']==='RealEstateAgent'),`Falta entidad inmobiliaria en ${path}`);
}

const facet=resolveRoute('/inmuebles',{operation:'venta'},publicProperties);
assert(facet.robots.startsWith('noindex'), 'Los filtros de catálogo deben ser noindex');
assert(resolveRoute('/admin',{},publicProperties).robots.includes('noindex'),'Admin debe ser noindex');
assert(resolveRoute('/ruta-inexistente',{},publicProperties).status===404,'Una ruta inexistente debe devolver 404');
for (const property of publicProperties) {
  const route=resolveRoute(`/inmuebles/${property.slug}`,{},publicProperties);
  assert(route.status===200,`Ficha no resuelve: ${property.slug}`);
  assert(route.title.includes(property.title),`Title de ficha sin nombre: ${property.slug}`);
  assert(buildJsonLd(route,SITE_ORIGIN)['@graph'].some(item=>item['@type']==='RealEstateListing'),`Falta RealEstateListing: ${property.slug}`);
}

const entries=sitemapEntries(publicProperties,SITE_ORIGIN);
const urls=entries.map(e=>e.url);
assert(urls.length===new Set(urls).size,'Sitemap con URLs duplicadas');
assert(!urls.some(url=>/admin|favoritos|comparar|busquedas-guardadas/.test(url)),'Sitemap incluye rutas privadas');
assert(urls.includes(`${SITE_ORIGIN}/guias`),'Sitemap no incluye el hub de guías');

function mockResponse(){
  return {statusCode:200,headers:{},body:'',setHeader(k,v){this.headers[k.toLowerCase()]=v},end(v=''){this.body+=v},status(code){this.statusCode=code;return this},json(data){this.setHeader('Content-Type','application/json');this.end(JSON.stringify(data));return this}};
}
for (const path of ['', 'pisos-venta-ecija', 'guias/gastos-comprar-vivienda-andalucia', `inmuebles/${publicProperties[0].slug}`, 'no-existe']) {
  const req={query:{path},method:'GET'}; const res=mockResponse(); await render(req,res);
  assert(res.body.includes('<h1'),`SSR sin H1: /${path}`);
  assert(res.body.includes('rel="canonical"'),`SSR sin canonical: /${path}`);
  assert(res.body.includes('id="seo-schema"'),`SSR sin JSON-LD identificado: /${path}`);
  assert(res.headers['x-robots-tag'],`SSR sin X-Robots-Tag: /${path}`);
  if(path==='no-existe') assert(res.statusCode===404,'SSR 404 no devuelve status 404');
}
const smRes=mockResponse(); await sitemap({query:{},method:'GET'},smRes);
assert(smRes.body.startsWith('<?xml'), 'Sitemap dinámico no es XML');
assert(smRes.body.includes('<image:image>'), 'Sitemap no incluye imágenes');
assert(smRes.headers['content-type']?.includes('application/xml'),'Sitemap sin Content-Type XML');

if(errors.length){console.error(`Validación SEO/GEO fallida (${errors.length}):`); errors.forEach(e=>console.error(`- ${e}`)); process.exit(1)}
console.log(`Validación SEO/GEO correcta: ${allPages.length} páginas editoriales, ${entries.length} URLs en sitemap y SSR comprobado.`);
