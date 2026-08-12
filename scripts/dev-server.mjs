import http from 'node:http';
import { readFile, stat } from 'node:fs/promises';
import { extname, join, normalize, resolve } from 'node:path';
import render from '../api/render.js';
import sitemap from '../api/sitemap.js';
import config from '../api/config.js';
import indexnow from '../api/indexnow.js';

const projectRoot = new URL('..', import.meta.url).pathname;
const useDist = process.argv.includes('--dist');
const root = useDist ? resolve(projectRoot, 'dist') : projectRoot;
const port = Number(process.env.PORT || 4173);
const types = {'.css':'text/css; charset=utf-8','.js':'text/javascript; charset=utf-8','.mjs':'text/javascript; charset=utf-8','.svg':'image/svg+xml','.jpg':'image/jpeg','.jpeg':'image/jpeg','.png':'image/png','.webp':'image/webp','.json':'application/json; charset=utf-8','.txt':'text/plain; charset=utf-8','.webmanifest':'application/manifest+json'};

function adapt(res) {
  res.status = (code) => { res.statusCode = code; return res; };
  res.json = (data) => { res.setHeader('Content-Type','application/json; charset=utf-8'); res.end(JSON.stringify(data)); return res; };
  return res;
}

async function parseBody(req) {
  if (!['POST','PUT','PATCH'].includes(req.method || '')) return undefined;
  let body=''; for await (const chunk of req) body += chunk;
  try { return body ? JSON.parse(body) : {}; } catch { return {}; }
}

const server = http.createServer(async (req, rawRes) => {
  const res=adapt(rawRes); const url=new URL(req.url, `http://${req.headers.host}`);
  req.query=Object.fromEntries(url.searchParams); req.body=await parseBody(req);
  if (url.pathname === '/api/config') return config(req,res);
  if (url.pathname === '/api/sitemap' || url.pathname === '/sitemap.xml') return sitemap(req,res);
  if (url.pathname === '/api/indexnow') return indexnow(req,res);
  const safe=normalize(url.pathname).replace(/^(\.\.(\/|\\|$))+/, '');
  const file=join(root, safe.replace(/^\//,''));
  try {
    const info=await stat(file);
    if (info.isFile()) { res.statusCode=200; res.setHeader('Content-Type', types[extname(file)] || 'application/octet-stream'); return res.end(await readFile(file)); }
  } catch {}
  req.query={...Object.fromEntries(url.searchParams), path:url.pathname.replace(/^\//,'')};
  return render(req,res);
});
server.listen(port, () => console.log(`Noguera SEO/GEO (${useDist ? 'dist' : 'source'}): http://localhost:${port}`));
