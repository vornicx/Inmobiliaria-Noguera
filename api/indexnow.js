import { SITE_ORIGIN } from '../assets/seo-data.js';

const FALLBACK_KEY = '8f5247e3ddad4ee4a985f6b8af52bb13';

export default async function handler(req, res) {
  if (req.method !== 'POST') return res.status(405).json({ error: 'Method not allowed' });
  const origin = String(process.env.SITE_URL || SITE_ORIGIN).replace(/\/$/, '');
  const host = new URL(origin).host;
  const key = process.env.INDEXNOW_KEY || FALLBACK_KEY;
  const paths = Array.isArray(req.body?.paths) ? req.body.paths : [];
  const urlList = [...new Set(paths)]
    .filter((path) => typeof path === 'string' && path.startsWith('/') && !path.startsWith('/admin'))
    .slice(0, 100)
    .map((path) => new URL(path, origin).href);
  if (!urlList.length) return res.status(400).json({ error: 'No valid URLs' });
  if (!process.env.SITE_URL) return res.status(200).json({ skipped: true, reason: 'SITE_URL no configurado', urlList });
  try {
    const response = await fetch('https://api.indexnow.org/indexnow', {
      method: 'POST', headers: { 'Content-Type': 'application/json; charset=utf-8' },
      body: JSON.stringify({ host, key, keyLocation: `${origin}/${key}.txt`, urlList })
    });
    if (!response.ok && response.status !== 202) throw new Error(`IndexNow ${response.status}`);
    return res.status(200).json({ submitted: urlList.length });
  } catch (error) {
    return res.status(502).json({ error: error.message });
  }
}
