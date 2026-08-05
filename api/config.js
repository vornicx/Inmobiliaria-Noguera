export default function handler(_request, response) {
  response.setHeader('Cache-Control', 'no-store, max-age=0');
  response.status(200).json({
    supabaseUrl: process.env.SUPABASE_URL || '',
    supabaseAnonKey: process.env.SUPABASE_ANON_KEY || '',
    siteUrl: process.env.SITE_URL || '',
    gaMeasurementId: process.env.GA_MEASUREMENT_ID || '',
  });
}
