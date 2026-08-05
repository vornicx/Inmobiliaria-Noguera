/* Extracción de inmobiliarianoguera.com — su propio sitio, robots.txt sin
   restricciones. Una sola petición HTML por ficha (nada de renderizar, que
   dispara decenas de peticiones), 8 s de separación, y CONTROL DE ESTADO:
   ante un 403 espera y reintenta, y aborta si el servidor deja de responder.
   El extractor anterior no miraba el código y guardó 70 fichas vacías. */
import { readFileSync, writeFileSync, existsSync } from 'fs';

const UA = 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36';
const PAUSA = Number(process.env.PAUSA || 8000);
const SALIDA = process.env.SALIDA || 'cartera.json';
const LIMITE = Number(process.env.LIMITE || 0);

const urls = readFileSync('urls.txt', 'utf8').trim().split('\n').filter((u) => /\/property\/[^/]+\/$/.test(u));
const hechas = existsSync(SALIDA) ? JSON.parse(readFileSync(SALIDA, 'utf8')) : [];
const ya = new Set(hechas.map((x) => x.url));
const pend = urls.filter((u) => !ya.has(u)).slice(0, LIMITE || undefined);

console.log(`total ${urls.length} · hechas ${hechas.length} · pendientes ${pend.length} · pausa ${PAUSA}ms`);
console.log(`estimado: ~${Math.ceil(pend.length * PAUSA / 60000)} min`);

const dormir = (ms) => new Promise((r) => setTimeout(r, ms));
const txt = (s) => s.replace(/<[^>]+>/g, ' ')
  .replace(/&nbsp;/g, ' ').replace(/&amp;/g, '&').replace(/&euro;/g, '€')
  .replace(/&#8364;/g, '€').replace(/&hellip;/g, '').replace(/&[a-z]+;/g, ' ')
  .replace(/\s+/g, ' ').trim();

function parsear(h, url) {
  const uno = (re, i = 1) => { const m = h.match(re); return m ? txt(m[i]) : null; };
  // el primer bloque .property-amenities es el del inmueble actual
  const cabecera = h.split('property-amenities')[1] || '';
  const dato = (etiqueta) => {
    const m = cabecera.match(new RegExp(`<strong>([^<]*)</strong>\\s*(?:${etiqueta})`, 'i'));
    return m && m[1] != null ? txt(m[1]) : null;
  };
  const slider = (h.match(/id="property-images"[\s\S]*?<\/ul>/) || [''])[0];
  const abs = (s) => 'https://inmobiliarianoguera.com/' + s.replace(/^\/+/, '').replace(/-\d+x\d+(\.\w+)$/, '$1');
  let fotos = [...new Set((slider.match(/wp-content\/uploads\/[^"'\s)]+\.(?:jpe?g|png)/gi) || []).map(abs))];
  /* Las fichas recientes no usan el flexslider: respaldo por og:image y por la
     imagen destacada, antes de dar la ficha por sin fotos. */
  if (!fotos.length) {
    const og = (h.match(/og:image" content="([^"]+)"/) || [])[1];
    const dest = (h.match(/property-featured-image[\s\S]{0,400}?(wp-content\/uploads\/[^"'\s)]+\.(?:jpe?g|png))/i) || [])[1];
    fotos = [...new Set([og, dest].filter(Boolean).map((s) => abs(s.replace(/^https?:\/\/[^/]+\//, ''))))];
  }
  const amen = (h.match(/id="amenities"[\s\S]*?(?=<\/div>\s*<\/div>)/) || [''])[0];
  const features = [...new Set((amen.match(/class="available"[^>]*>(?:<i[^>]*><\/i>)?\s*([^<]+)/g) || [])
    .map((s) => txt(s.replace(/class="available"[^>]*>/, ''))).filter((s) => s.length > 1 && s.length < 45))];

  return {
    url,
    ref: (url.match(/ref-?\.?\s*(\w+)\/?$/i) || [])[1] || uno(/Ref\.?\s*([\w\d]+)\)/i),
    titulo: (uno(/og:title" content="([^"]+)"/) || '').replace(/\s*-\s*Inmobiliaria Noguera.*$/i, '').trim(),
    precio: uno(/class="price"[\s\S]{0,120}?<span>([^<]+)<\/span>/),
    operacion: (cabecera.match(/<strong>\s*Para\s*<\/strong>\s*(Venta|Alquiler)/i) || [])[1] || null,
    sup: dato('Sup\\.'),
    banos: dato('Ba[ñn]os'),
    dorm: dato('Dormitorios'),
    parking: dato('Parking'),
    descripcion: uno(/id="description"[^>]*>([\s\S]*?)<\/div>/),
    caract: features,
    fotos,
    vendido: /vendid[oa]|reservad[oa]/i.test(txt(h.slice(0, 6000))),
  };
}

let fallosSeguidos = 0;
let n = 0;

for (const url of pend) {
  let html = null;
  for (let intento = 1; intento <= 3 && !html; intento++) {
    try {
      const r = await fetch(url, { headers: { 'User-Agent': UA, 'Accept-Language': 'es-ES,es;q=0.9' } });
      if (r.status === 200) { html = await r.text(); break; }
      console.log(`   HTTP ${r.status} en ${url.split('/').slice(-2)[0]} (intento ${intento}) — esperando`);
      await dormir(20000 * intento);
    } catch (e) {
      console.log(`   red: ${e.message.slice(0, 50)} (intento ${intento})`);
      await dormir(15000);
    }
  }

  if (!html) {
    fallosSeguidos++;
    if (fallosSeguidos >= 5) { console.log('\nABORTADO: 5 fallos seguidos. El servidor no responde.'); break; }
    continue;
  }
  fallosSeguidos = 0;

  const d = parsear(html, url);
  if (!d.titulo) console.log(`   aviso: sin título en ${url.split('/').slice(-2)[0]}`);
  hechas.push(d);
  n++;
  if (n % 10 === 0) {
    writeFileSync(SALIDA, JSON.stringify(hechas, null, 1));
    const ok = hechas.filter((x) => x.titulo && x.precio).length;
    console.log(`   ${hechas.length}/${urls.length} · completas ${ok}`);
  }
  await dormir(PAUSA);
}

writeFileSync(SALIDA, JSON.stringify(hechas, null, 1));
const ok = hechas.filter((x) => x.titulo && x.precio).length;
console.log(`\nFIN · registros ${hechas.length} · completas ${ok} · fotos ${hechas.reduce((a, x) => a + x.fotos.length, 0)}`);
