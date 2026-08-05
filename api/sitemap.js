import { SITE_ORIGIN } from '../assets/seo-data.js';
import { absoluteUrl, escapeHtml, getPublicProperties, sitemapEntries } from './_seo.js';

export default async function handler(_req, res) {
  const properties = await getPublicProperties();
  const origin = String(process.env.SITE_URL || SITE_ORIGIN).replace(/\/$/, '');
  const entries = sitemapEntries(properties, origin);
  const xml = `<?xml version="1.0" encoding="UTF-8"?>\n<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:image="http://www.google.com/schemas/sitemap-image/1.1">\n${entries.map((entry) => `  <url>\n    <loc>${escapeHtml(entry.url)}</loc>\n    <lastmod>${escapeHtml(new Date(entry.lastmod).toISOString())}</lastmod>\n    <changefreq>${entry.changefreq}</changefreq>\n    <priority>${entry.priority}</priority>${(entry.images || []).slice(0, 10).map((image) => `\n    <image:image><image:loc>${escapeHtml(absoluteUrl(image, origin))}</image:loc></image:image>`).join('')}\n  </url>`).join('\n')}\n</urlset>`;
  res.statusCode = 200;
  res.setHeader('Content-Type', 'application/xml; charset=utf-8');
  res.setHeader('Cache-Control', 'public, s-maxage=300, stale-while-revalidate=86400');
  res.end(xml);
}
