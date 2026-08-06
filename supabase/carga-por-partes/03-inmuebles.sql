-- Parte 3 de 4 · 50 inmuebles
-- Pega y ejecuta en Supabase > SQL Editor. Reejecutable sin duplicar.
begin;
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('se-vende-fabuloso-local', 'se-vende-fabuloso-local', 'Se vende fabuloso local', '', 'Superficie total 100 m², local superficie solar 100 m², superficie útil 100 m², 1 aseo, escaparate, planta baja, exterior.',
  'venta', 'local', 88000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, 1, 100, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/04/Imagen-de-WhatsApp-2025-03-31-a-las-12.32.03_2be104dd.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/Imagen-de-WhatsApp-2025-03-31-a-las-12.32.07_5323e7c3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/Imagen-de-WhatsApp-2025-03-31-a-las-12.32.07_db76bc22.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/04/Imagen-de-WhatsApp-2025-03-31-a-las-12.32.03_2be104dd.jpg', 'https://inmobiliarianoguera.com/property/se-vende-fabuloso-local/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-en-calle-la-victoria', 'casa-en-calle-la-victoria', 'Casa en calle La Victoria', '', 'CASA EN CALLE LA VICTORIA',
  'venta', 'casa', 200000, 'Écija', 'Sevilla', 'calle La Victoria', 'Écija',
  null, null, 5822, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2022/03/0.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/03/1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/03/2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/03/3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/03/4.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2022/03/0.jpeg', 'https://inmobiliarianoguera.com/property/casa-en-calle-la-victoria/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('se-vende-amplio-local-en-ecija', 'se-vende-amplio-local-en-ecija', 'Se vende amplio local en Écija', '', 'Superficie total 100 m², local superficie útil 100 m², escaparate (2), estado conservación: buen estado, exterior.',
  'venta', 'local', 78000, 'Écija', 'Sevilla', 'ÉCIJA', 'Écija',
  null, 1, 1002, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/04/IMG-20250422-WA0006.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/IMG-20250422-WA0007.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/IMG-20250422-WA0008.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/IMG-20250422-WA0009.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/IMG-20250422-WA0010.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/IMG-20250422-WA0011.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/IMG-20250422-WA0012.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/IMG-20250422-WA0015.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/04/IMG-20250422-WA0006.jpg', 'https://inmobiliarianoguera.com/property/se-vende-amplio-local-en-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('se-vende-chalet-unifamiliar-en-canada-rosal', 'se-vende-chalet-unifamiliar-en-canada-rosal', 'Se vende chalet unifamiliar en cañada rosal', '', 'Se vende amplio chalet unifamiliar en Cañada Rosal, con una superficie total de 530 m² y una superficie útil de 200 m². La vivienda cuenta con 3 habitaciones individuales, 3 habitaciones dobles, 2 baños, 1 aseo y está adaptada para personas con discapacidad. Entre sus características destacan el sistema de aire acondicionado con domótica, los armarios empotrados, la chimenea con instalación, la cocina, el comedor, el garaje para más de 2 vehículos, el jardín privado, la piscina propia, la terraza ,y el suelo de porcelánico. La propiedad se encuentra en buen estado de conservación, en una zona urbanizada y soleada, ideal para disfrutar en familia. ¡No pierdas la oportunidad de adquirir esta increíble propiedad en Cañada Rosal!',
  'venta', 'chalet', 300000, 'Écija', 'Sevilla', 'CAÑADA ROSAL', 'Écija',
  6, 3, 5302, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/04/0.1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/0.2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/1-11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/2-11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/3-11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/4-10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/5-11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/6-10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/7-9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/8-10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/9-10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/10-9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/11-10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/12-11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/13-8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/14-8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/15-7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/16-7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/17-7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/18-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/19-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/20-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/21.0.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/21-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/22-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/23-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/24-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/25-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/26-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/27-3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/04/0.1.jpg', 'https://inmobiliarianoguera.com/property/se-vende-chalet-unifamiliar-en-canada-rosal/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-en-venta-en-ecija-3', 'casa-en-venta-en-ecija-3', 'Casa en venta en Écija', '', 'Se vende amplio chalet unifamiliar en Cañada Rosal, con una superficie total de 530 m² y una superficie útil de 200 m². La vivienda cuenta con 3 habitaciones individuales, 3 habitaciones dobles, 2 baños, 1 aseo y está adaptada para personas con discapacidad. Entre sus características destacan el sistema de aire acondicionado con domótica, los armarios empotrados, la chimenea con instalación, la cocina, el comedor, el garaje para más de 2 vehículos, el jardín privado, la piscina propia, la terraza ,y el suelo de porcelánico. La propiedad se encuentra en buen estado de conservación, en una zona urbanizada y soleada, ideal para disfrutar en familia. ¡No pierdas la oportunidad de adquirir esta increíble propiedad en Cañada Rosal!',
  'venta', 'casa', 300000, 'Écija', 'Sevilla', 'VENTA EN ECIJA', 'Écija',
  6, 3, 5302, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/05/0.1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/0.2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/12.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/13.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/14.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/15.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/16.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/17.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/18.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/19.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/20-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/21.0.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/21.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/22.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/23.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/24.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/25.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/26.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/27.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/05/0.1.jpg', 'https://inmobiliarianoguera.com/property/casa-en-venta-en-ecija-3/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('parcela-en-venta-en-canada-de-rabadan', 'parcela-en-venta-en-canada-de-rabadan', 'Parcela en venta en cañada de rabadan', '', 'Este terreno en venta se encuentra en el municipio de Fuente Palmera. Cuenta con una superficie total de 255 m² y una superficie solar de 255 m². Una excelente oportunidad para construir la casa de tus sueños en este amplio espacio. No pierdas la oportunidad de adquirir este terreno y comienza a planificar tu nuevo hogar. ¡Contáctanos para más información!',
  'venta', 'parcela_urbana', 38630, 'Écija', 'Sevilla', 'VENTA EN CAÑADA DE RABADAN', 'Écija',
  null, null, null, 255,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/09/IMG-20250910-WA0018.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/09/IMG-20250910-WA0018.jpg', 'https://inmobiliarianoguera.com/property/parcela-en-venta-en-canada-de-rabadan/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('se-vende-nave-industrial-en-ecija', 'se-vende-nave-industrial-en-ecija', 'se vende nave industrial en Écija', '', 'Superficie total 1500 m², nave comercial superficie solar 1500 m², superficie útil 1500 m², estado conservación: buen estado, nº de planta: 1, exterior, patio (700m2',
  'venta', 'nave', 480000, 'Écija', 'Sevilla', 'ecija', 'Écija',
  null, 1, 15002, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/06/1-9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/06/2-9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/06/3-9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/06/4-9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/06/5-9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/06/6-8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/06/7-8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/06/8-8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/06/9-7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/06/10-7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/06/11-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/06/12-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/06/13-6.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/06/1-9.jpg', 'https://inmobiliarianoguera.com/property/se-vende-nave-industrial-en-ecija/',
  true, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-en-venta-en-ecija-4', 'casa-en-venta-en-ecija-4', 'Casa en venta en Écija', '', 'EXCLUSIVIDAD',
  'venta', 'casa', 114000, 'Écija', 'Sevilla', 'VENTA EN ECIJA', 'Écija',
  1, null, 3002, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/10/1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/12.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/13.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/14.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/15.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/16.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/17.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/18.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/10/1.jpg', 'https://inmobiliarianoguera.com/property/casa-en-venta-en-ecija-4/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('se-vende-piso-en-zona-centro-de-ecija', 'se-vende-piso-en-zona-centro-de-ecija', 'Se vende piso en zona centro de Écija', '', 'EXCLUSIVIDAD',
  'venta', 'piso', 140000, 'Écija', 'Sevilla', 'CENTRO DE ECIJA', 'Écija',
  3, 2, 802, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/07/1-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/2-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/3-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/4-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/5-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/6-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/7-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/8-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/9-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/10-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/11-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/12-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/13-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/15-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/16-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/17.1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/17-3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/07/1-4.jpg', 'https://inmobiliarianoguera.com/property/se-vende-piso-en-zona-centro-de-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('parcela-rustica-en-los-algarbes', 'parcela-rustica-en-los-algarbes', 'Parcela rustica en Los Algarbes', '', 'Inmobiliaria Noguera vende Parcela rustica en Los Algarbes ( muy cercano al municipio de La Carlota y Ecija). Tiene una superficie de 5.000m2 de terreno, se encuentra actualmente sembrado de olivos. Parcela totalmente vallada y con puerta de entrada. Ideal para seguir con la plantacion o sembrar otro tipo de cultivo. Posibilidad de luz y agua. Ref.: 8057 PRECIO 62.000€ Para más información no dude en contactar con nosotros: www.inmobiliarianoguera.com info@inmobiliarianoguera.com 95 590 07 48 / 653 855 641 #oportunidad #ecija #centrodeEcija #inmobiliarianoguera #pisos #inmobiliaria #piso #casa #adosada #pisoconpatio #idealista #fotocasa #oportunidad #ecija #centrodeEcija #inmobiliarianoguera #pisos #inmobiliaria #piso #casa #adosada #pisoconpatio #idealista #fotocas',
  'venta', 'parcela_rustica', 62000, 'Écija', 'Sevilla', 'Los Algarbes', 'Écija',
  null, null, null, 50002,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2023/05/0-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2023/05/1-7.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2023/05/0-6.jpg', 'https://inmobiliarianoguera.com/property/parcela-rustica-en-los-algarbes/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('26467', '26467', 'Local en venta en Écija', '', '💥EXCLUSIVIDAD💥 💷24.000€💷 🔑LOCAL EN VENTA EN ÉCIJA 🔑 Inmobiliaria Finance Noguera vende estupendo local en Écija, ideal para inversión o montar tu negocio. ✅Este local comercial en venta cuenta con una superficie total de 18 m² distribuidos en una misma planta. Dispone de 1 aseo y se encuentra en buen estado de conservación. ✅Este local es ideal para emprender un nuevo negocio. No pierdas la oportunidad de adquirir este inmueble con grandes posibilidades en una ubicación estratégica. Información general: ➡Superficie útil: 18 m2 ➡Aseos: 1 ➡Conservación: buen estado ➡Ref.: 8539 ➡Precio: 24.000€ Para más información no dude en contactar con nosotros: www.inmobiliarianoguera.com info@inmobiliarianoguera.com #inmobiliarianoguera #pisosenecija #casasconpatio #casasbonitas #ecija #idealista #fotocasa #inmobiliaria #pisosconterraza #inversion #OPORTUNIDADPara más información no dude en contactar con nosotros: www.inmobiliarianoguera.com info@inmobiliarianoguera.com 955900748 / 653 855 641 ****** En cumplimiento del Decreto de la Junta de Andalucía 218/2005 del 11 de Octubre, el Impuesto de Transmisiones Patrimoniales ó IVA, los gastos de Notaría y Registro regulados por arancel no están incluidos en el precio. Los honorarios profesionales de la Agencia no están incluidos. Validez de precios 7 días, sujeto a disponibilidades y confirmación por propietarios. Se considera que la descripción y los precios indicados para las propiedades a la venta en este sitio web son correctos. No obstante, la información que contiene esta página puede ser sujeta a errores u omisiones. Las propiedades pueden ser sujetas a cambio de precio, venta o retirada del mercado #oportunidad #ecija #centrodeEcija #inmobiliarianoguera #pisos #inmobiliaria #piso #casa #adosada #pisoconpatio #idealista #fotocasa #oportunidad #ecija #centrodeEcija #inmobiliarianoguera #pisos #inmobiliaria #piso #casa #adosada #pisoconpatio #idealista #fotocas',
  'venta', 'local', 24000, 'Écija', 'Sevilla', 'VENTA EN ÉCIJA', 'Écija',
  null, 1, 18, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/09/IMG-20250617-WA0245.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/09/IMG-20250617-WA0246.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/09/Imagen-de-WhatsApp-2025-06-17-a-las-19.14.55_e995870a.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/09/IMG-20250617-WA0245.jpg', 'https://inmobiliarianoguera.com/property/26467/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('parcela-en-venta-en-villanueva-del-rey', 'parcela-en-venta-en-villanueva-del-rey', 'Parcela en venta en villanueva del rey', '', 'EXCLUSIVIDAD',
  'venta', 'parcela_urbana', 134000, 'Écija', 'Sevilla', 'VENTA EN VILLANUEVA DEL REY', 'Écija',
  null, null, null, 775,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/09/IMG-20250910-WA0018.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/09/IMG-20250910-WA0016.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/09/IMG-20250910-WA0017.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/09/IMG-20250910-WA0019.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/09/copiImagen-de-WhatsApp-2025-09-10-a-las-19.01.58_774185e8.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/09/IMG-20250910-WA0018.jpg', 'https://inmobiliarianoguera.com/property/parcela-en-venta-en-villanueva-del-rey/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('1459', 'casa-para-reformar-en-zona-el-puente-ref-1459', 'Casa para reformar en zona El Puente', '', 'Casa para derribar en venta en Écija concretamente situada en la zona del Puente con una superficie de solar de 264m2, y una superficie construida de 344m2. Situacion inmejorable, y con capacidad para una gran vivienda y zona de ocio. Precio: 120.000€.',
  'venta', 'casa_reformar', 120000, 'Écija', 'Sevilla', 'El Puente', 'Écija',
  null, null, 3442, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2020/05/catastro.png']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2020/05/catastro.png', 'https://inmobiliarianoguera.com/property/casa-para-reformar-en-zona-el-puente-ref-1459/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-mas-nave-en-venta-en-ecija-sevilla', 'casa-mas-nave-en-venta-en-ecija-sevilla', 'Casa más nave en venta en Écija (Sevilla)', '', 'CASA MÁS NAVE EN VENTA EN ÉCIJA (SEVILLA)',
  'venta', 'casa', 481000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  3, 2, 1031, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0082.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0083.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0084.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0086.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0087.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0088.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0089.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0090.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0091.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0092.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0093.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0094.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0095.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0096.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0097.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0098.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0099.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0100.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0101.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0102.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0103.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0104.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0082.jpg', 'https://inmobiliarianoguera.com/property/casa-mas-nave-en-venta-en-ecija-sevilla/',
  true, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('solar-en-venta-cercano-al-centro-ecija', 'solar-en-venta-cercano-al-centro-ecija', 'Solar en venta cercano al centro, Écija', '', 'Este solar en venta en Écija cuenta con una superficie total de 162 m², ideal para construir la vivienda de tus sueños. Con una ubicación céntrica, ofrece la posibilidad de crear un proyecto a medida en una de las zonas más buscadas. No pierdas la oportunidad de invertir en este terreno y crear el hogar que siempre has deseado.',
  'venta', 'solar', 98000, 'Écija', 'Sevilla', 'VENTA CERCANO AL CENTRO, ECIJA', 'Écija',
  null, null, null, 162,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/10/FOTO-LOGO-OK.png','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1000_F_80608289_EYweHmlIKRlr5DCedYTEhXanOIqtZ3Ke.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/10/FOTO-LOGO-OK.png', 'https://inmobiliarianoguera.com/property/solar-en-venta-cercano-al-centro-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('duplex-en-el-centro-de-ecija-3', 'duplex-en-el-centro-de-ecija-3', 'Duplex en el centro de Écija', '', 'ATENCION INVERSORES',
  'venta', 'piso', 125000, 'Écija', 'Sevilla', 'El CENTRO DE ECIJA', 'Écija',
  1, 1, 382, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/03/IMG-20250308-WA0010.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/IMG-20250307-WA0013.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/IMG-20250307-WA0014.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/IMG-20250307-WA0017.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/IMG-20250307-WA0019.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/IMG-20250307-WA0021.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/IMG-20250307-WA0022.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/IMG-20250307-WA0023.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/IMG-20250307-WA0024.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/IMG-20250307-WA0027.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/IMG-20250308-WA0007.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/03/IMG-20250308-WA0010.jpg', 'https://inmobiliarianoguera.com/property/duplex-en-el-centro-de-ecija-3/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('2513', 'casa-en-zona-centro-ref-2513', 'Casa en zona centro', '', 'EXCLUSIVIDAD',
  'venta', 'casa', 264000, 'Écija', 'Sevilla', 'centro', 'Écija',
  5, 2, 331, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/10/0.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.04.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.07-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.09-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.09-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.09.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.14-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.14-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.14.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.15-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.15-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.15-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.15.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.16-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.16.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/10/0.jpeg', 'https://inmobiliarianoguera.com/property/casa-en-zona-centro-ref-2513/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('novae-nueva-urbanizacion-en-ecija', 'novae-nueva-urbanizacion-en-ecija', 'Novaé -nueva urbanizacion en Écija', '', 'Inmobiliaria Noguera presenta en EXCLUSIVA una nueva PROMOCION DE VIVIENDAS DE OBRA NUEVA, diseñada para quienes buscan calidad, confort y un hogar pensado para durar: NOVAÉ!',
  'venta', 'piso', 125000, 'Écija', 'Sevilla', 'ÉCIJA', 'Écija',
  null, null, null, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/12/terraza-atardecer.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/12/terraza-atardecer.jpg', 'https://inmobiliarianoguera.com/property/novae-nueva-urbanizacion-en-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('fantastico-chalet-en-venta-con-todas-las-calidades-y-comodidades-en-ecija-sevill', 'fantastico-chalet-en-venta-con-todas-las-calidades-y-comodidades-en-ecija-sevill', 'Fántastico chalet en venta con todas las calidades y comodidades en Écija (Sevilla)', '', 'BAJADA DE PRECIO',
  'venta', 'chalet', 640000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  4, 7, 800, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/01/1-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/2-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/3-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/4-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/5-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/6-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/7-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/8-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/9-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/10-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/12.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/13.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/14.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/15.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/16.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/17.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/18.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/19.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/20.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/21-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/22.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/23.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/24.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/25.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/26.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/27.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/01/1-2.jpg', 'https://inmobiliarianoguera.com/property/%f0%9f%94%91fantastico-chalet-en-venta-con-todas-las-calidades-y-comodidades-en-ecija-sevilla-%f0%9f%94%91/',
  true, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-para-reformar-en-ecija-2', 'casa-para-reformar-en-ecija-2', 'Casa para reformar en Écija', '', '180 m² solar, 7 habitaciones (7 dobles), 1 baño, TIENE POZO, PATIO DE LUZ.',
  'venta', 'casa_reformar', 117000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  7, 1, 180, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1890.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1891.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1892.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1893.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1894.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1895.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1896.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1897.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1898.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1899.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1900.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1901.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1890.jpg', 'https://inmobiliarianoguera.com/property/casa-para-reformar-en-ecija-2/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('nave-en-venta-en-uno-de-los-mejores-poligonos-de-ecija', 'nave-en-venta-en-uno-de-los-mejores-poligonos-de-ecija', 'Nave en venta en uno de los mejores poligonos de Écija', '', 'EXCLUSIVIDAD',
  'venta', 'nave', 149000, 'Écija', 'Sevilla', 'VENTA EN UNO DE LOS MEJORES POLIGONOS DE ÉCIJA', 'Écija',
  null, 1, 129, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/10/0-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/1-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/2-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/3-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/4-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/5-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/6-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/7-5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/8-5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/9-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/10-4.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/10/0-2.jpg', 'https://inmobiliarianoguera.com/property/nave-en-venta-en-uno-de-los-mejores-poligonos-de-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('7659', 'casa-de-pueblo-en-el-centro-de-ecija-ref-7659', 'Casa de pueblo en el centro de Écija', '', 'CASA DE PUEBLO EN ZONA CÉNTRICA DE ÉCIJA (SEVILLA)',
  'venta', 'casa', 189000, 'Écija', 'Sevilla', 'El centro de Ecija', 'Écija',
  5, 1, 1802, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2021/12/0-7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2021/12/1-7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2021/12/5-5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2021/12/6-9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2021/12/7-4.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2021/12/0-7.jpg', 'https://inmobiliarianoguera.com/property/casa-de-pueblo-en-el-centro-de-ecija-ref-7659/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('locales-en-bruto', 'locales-en-bruto', 'Locales en bruto', '', '�LOCALES EN BRUTO DE ÉCIJA (SEVILLA)� ➡FINANCIAMOS EL 100%➡ �Inmobiliaria Noguera vende locales, son 6, a lo que varían el precio individualmente depende los metros de cada uno de ellos, aparte se puede comprar en conjunto o independiente, los 6 juntos al precio en pack de 255.000€ &#8211; El local se compone de 6 locales escriturados independientes: 1º local de 92 m2 2º local de 102 m2 3º local de 92 m2 4º local de 92 m2 5º local de 104m2 6º local de 161 m2 VARIACIÓN PRECIO €/M2 -Operación por 1 local 440€/m2 -Operación por 2 local 430€/m2 -Operación por 3 local 420€/m2 -Operación por 4 local 410€/m2 -Operación por 5 local 400€/m2 ➡92 M2 ➡RENTA LIBRE ➡FINANCIAMOS EL 100% ( infórmese sin compromiso)',
  'venta', 'local', 38900, 'Écija', 'Sevilla', 'BRUTO', 'Écija',
  null, null, 922, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/04/5-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/04/6-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/04/7-1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/04/5-1.jpg', 'https://inmobiliarianoguera.com/property/locales-en-bruto/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('0683', 'casa-en-el-matadero-ref-0683', 'Casa en el Matadero', '', 'Casa en la zona del matadero con 460m2 de superficie, 8 habitaciones (4 dobles, 4 individuales), 2 baños, 2 cocinas, lavadero, 2 comedores, terraza y patio. Casa de estilo antiguo.',
  'venta', 'casa', 217000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  8, 4, 4602, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2020/05/683_0.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/05/683_1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2020/05/683_0.jpg', 'https://inmobiliarianoguera.com/property/casa-en-el-matadero-ref-0683/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('parcela-rustica', 'parcela-rustica', 'Parcela rustica', '', 'EXCLUSIVIDAD',
  'venta', 'parcela_rustica', 175000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  5, 2, null, 100002,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/10/1-5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/2-5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/4-5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/5-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/6-5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/8-5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/10-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/15-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/18-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/20.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/22.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/24-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/26.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/28.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/31.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/33.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/39.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/40.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/10/1-5.jpg', 'https://inmobiliarianoguera.com/property/parcela-rustica/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-en-venta-cerca-de-ecija', 'casa-en-venta-cerca-de-ecija', 'Casa en venta cerca de Écija', '', '�EXCLUSIVIDAD� CASA CERCA DE ÉCIJA (SEVILLA) �PRECIO: 154.300€€ � ➡FINANCIAMOS HASTA EL 100%➡ Inmobiliaria Noguera casa a 20 minutos de Écija, con amplio patio. La vivienda cuenta con una superficie de aproximadamente 208 m2. Está distribuida en 5 dormitorios, cocina amueblada, salón y 2 bañoS. . Renta libre ➡Ref. : 8284 ➡Precio: 154.300€€� NEGOCIABLES Para más información no dude en contactar con nosotros: ☎️ / oportunidad ecija centrodeEcijal inmobiliarianoguera pisos inmobiliaria piso.',
  'venta', 'casa', 154300, 'Écija', 'Sevilla', 'VENTA CERCA DE ECIJA', 'Écija',
  5, 2, 2082, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/05/1-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/2-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/3-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/4-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/5-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/6-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/7-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/8-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/9-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/10-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/11-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/12-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/13-1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/05/1-4.jpg', 'https://inmobiliarianoguera.com/property/casa-en-venta-cerca-de-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('doble-cochera-cerrada', 'doble-cochera-cerrada', 'Doble cochera cerrada', '', '‼OPORTUNIDAD‼ COCHERA CERRADA PARA DOS VEHICULOS EN ZONA ALGODONERA �Precio: 28.900€� Inmobiliaria Noguera vende cochera cerrada con dos plazas de garaje de capacidad. Tiene una superficie de aproximadamente 33 m2. , con puerta privada Está perfectamente ubicada y muy fácil de maniobra para su acceso al interior. ▶Capacidad para dos vehículo, asi como posiblidad de usar como trastero. �Precio: 28.900� Ref: 338 Para más información no dude en contactar con nosotros: 955900748/ 653855641',
  'venta', 'piso', 28900, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, 332, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/04/3-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/04/4-1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/04/3-1.jpg', 'https://inmobiliarianoguera.com/property/doble-cochera-cerrada/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('5587', 'casa-en-zona-puerta-cerrada-ref-5587', 'Casa en zona Puerta Cerrada', '', 'Casa con tres plantas y una superficie de 330 m² distribuidos en 7 habitaciones (1 doble, 6 individuales), 3 baños, cocina, lavadero, 2 comedores, patio con montera, jardín, garaje, agua, aire acondicionado y piscina.',
  'venta', 'casa', 375000, 'Écija', 'Sevilla', 'Puerta Cerrada', 'Écija',
  7, 3, 330, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5587_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5587_5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5587_6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5587_7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5587_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5587_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5587_3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5587_4.jpg', 'https://inmobiliarianoguera.com/property/casa-en-zona-puerta-cerrada-ref-5587/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('solar-en-venta-en-zona-ronda-del-ferrocarril-ecija', 'solar-en-venta-en-zona-ronda-del-ferrocarril-ecija', 'Solar cercano a zona del ferrocarril, Écija', '', 'EXCLUSIVIDAD',
  'venta', 'solar', 58000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, null, 93,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/11/1-1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/11/1-1.jpg', 'https://inmobiliarianoguera.com/property/solar-en-venta-en-zona-ronda-del-ferrocarril-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('local-en-alquiler-en-la-calle-miguel-de-cervantes', 'local-en-alquiler-en-la-calle-miguel-de-cervantes', 'Local en alquiler en la calle miguel de cervantes', '', 'SE ALQUILA local comercial en Écija , cuenta con una superficie total de 20 m². Dispone de una estancia , zona de almacenamiento y aseo. Se encuentra en buen estado de conservación. Se ubica en planta baja y es exterior, ofreciendo accesibilidad y adecuado para cualquier tipo de negocio. Si buscas un espacio para emprender o expandir tu negocio en Écija, este local es una excelente opción.',
  'alquiler', 'local', 500, 'Écija', 'Sevilla', 'ALQUILER EN LA CALLE MIGUEL DE CERVANTES', 'Écija',
  2, 1, 20, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/02/WhatsApp-Image-2026-02-19-at-14.51.49.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/WhatsApp-Image-2026-02-19-at-14.51.48-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/WhatsApp-Image-2026-02-19-at-14.51.48-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/WhatsApp-Image-2026-02-19-at-14.51.48-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/WhatsApp-Image-2026-02-19-at-14.51.49-6.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/02/WhatsApp-Image-2026-02-19-at-14.51.49.jpeg', 'https://inmobiliarianoguera.com/property/local-en-alquiler-en-la-calle-miguel-de-cervantes/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('parcela-urbana-en-canada-rosal', 'parcela-urbana-en-canada-rosal', 'Parcela urbana en Cañada Rosal', '', 'EXCLUSIVIDAD',
  'venta', 'parcela_urbana', 79000, 'Écija', 'Sevilla', 'Cañada Rosal', 'Écija',
  null, null, null, 5512,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/02/4374_22513105437_1_20220311205804997.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/02/Sin-titulo.png']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/02/4374_22513105437_1_20220311205804997.jpg', 'https://inmobiliarianoguera.com/property/parcela-urbana-en-canada-rosal/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('273', 'casa-para-reformar-c-arroyo-ref-273', 'Casa para reformar C/Arroyo', '', 'Casa para reformar en Calle Arroyo. Tiene una superficie solar de 136m2, y existe una planta construida con patio trasero.',
  'venta', 'casa_reformar', 63000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  3, 1, 136, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2020/01/IMG_4454.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/IMG_4455.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/IMG_4467.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/IMG_4448-copia.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/IMG_4449-copia.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/IMG_4457.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2020/01/IMG_4454.jpg', 'https://inmobiliarianoguera.com/property/casa-para-reformar-c-arroyo-ref-273/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('local-en-venta-cercano-al-centro-de-ecija', 'local-en-venta-cercano-al-centro-de-ecija', 'Local en venta cercano al centro de Écija', '', 'EXCLUSIVIDAD 57 .000€',
  'venta', 'local', 57000, 'Écija', 'Sevilla', 'VENTA CERCANO AL CENTRO DE ECIJA', 'Écija',
  null, 1, 101, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/03/1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/10.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/03/1.jpg', 'https://inmobiliarianoguera.com/property/local-en-venta-cercano-al-centro-de-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-para-derribar-en-zona-centro-ecija-sevilla', 'casa-para-derribar-en-zona-centro-ecija-sevilla', 'Casa para derribar en zona centro, Écija (Sevilla)', '', '✴EXCLUSIVIDAD✴ 🔑CASA PARA DERRIBAR EN ZONA CENTRO, ECIJA (SEVILLA) 🔑 💵Precio: 110.000€💵 ✅ Inmobiliaria Noguera vende casa para derribar en zona centro. ✅Esta espaciosa vivienda en Écija se encuentra en venta. Con una superficie total de 250 m². Se encuentra para derribar, lo que brinda la oportunidad de adaptarla completamente a tus gustos y necesidades. ✅Ubicada en el municipio de Écija, esta propiedad ofrece un gran potencial para convertirse en el hogar de tus sueños. ¡No dejes pasar esta oportunidad única! ➡ Casa en el Centro ➡ Vivienda de RENTA LIBRE ➡ Ref. : 8635 💵Precio: 110.000€💵 Para más información no dude en contactar con nosotros: ****** En cumplimiento del Decreto de la Junta de Andalucía 218/2005 del 11 de Octubre, el Impuesto de Transmisiones Patrimoniales ó IVA, los gastos de Notaría y Registro regulados por arancel no están incluidos en el precio. Los honorarios profesionales de la Agencia no están incluidos. Validez de precios 7 días, sujeto a disponibilidades y confirmación por propietarios. Se considera que la descripción y los precios indicados para las propiedades a la venta en este sitio web son correctos. No obstante, la información que contiene esta página puede ser sujeta a errores u omisiones. Las propiedades pueden ser sujetas a cambio de precio, venta o retirada del mercado #oportunidad #ecija #centrodeEcija #inmobiliarianoguera #pisos #inmobiliaria #piso #casa #adosada #pisoconpatio #idealista #fotocasa #oportunidad #ecija #centrodeEcija #inmobiliarianoguera #pisos #inmobiliaria #piso #casa #adosada #pisoconpatio #idealista #fotocasa',
  'venta', 'casa', 110000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, 250, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/03/1-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/2-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/3-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/4-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/5-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/6-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/7-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/8-1.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/03/1-1.jpeg', 'https://inmobiliarianoguera.com/property/%f0%9f%94%91casa-para-derribar-en-zona-centro-ecija-sevilla-%f0%9f%94%91/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('local-zona-puerta-osuna-en-alquiler', 'local-zona-puerta-osuna-en-alquiler', 'Local zona puerta osuna en alquiler', '', 'Este local en alquiler en Écija cuenta con una superficie total de 84 m², siendo la superficie útil de 83 m². Dispone de 1 habitación individual, 1 aseo y se encuentra en buen estado de conservación. Ideal para emprender un nuevo negocio en una de las zonas más activas de Écija. ¡No pierdas esta oportunidad y ven a visitarlo!',
  'alquiler', 'local', 520, 'Écija', 'Sevilla', 'ALQUILER', 'Écija',
  3, 1, 84, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/03/1-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/2-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/3-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/4-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/5-2.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/03/1-2.jpeg', 'https://inmobiliarianoguera.com/property/local-zona-puerta-osuna-en-alquiler/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('chalet-en-urbanizacion-privada-de-ecija-sevilla', 'chalet-en-urbanizacion-privada-de-ecija-sevilla', 'Chalet en urbanización privada de Écija (Sevilla)', '', 'EXCLUSIVIDAD Precio: 255.000€',
  'venta', 'chalet', 255000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  4, 2, 980, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/03/3-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/4-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/5-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/6-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/7-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/8-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/9-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/10-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/11-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/13-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/14-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/15-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/16.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/17.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/18.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/19.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/20.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/22.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/23.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/25.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/26.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/03/3-3.jpeg', 'https://inmobiliarianoguera.com/property/chalet-en-urbanizacion-privada-de-ecija-sevilla/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('solar-en-venta-en-zona-el-matadero-de-ecija', 'solar-en-venta-en-zona-el-matadero-de-ecija', 'Solar en venta en zona el matadero de Écija', '', 'EXCLUSIVIDAD',
  'venta', 'solar', 79000, 'Écija', 'Sevilla', 'VENTA EN ZONA EL MATADERO DE ECIJA', 'Écija',
  null, null, null, 117,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/03/643362192_1457345639735614_4030878075409422777_n.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/03/643362192_1457345639735614_4030878075409422777_n.jpg', 'https://inmobiliarianoguera.com/property/solar-en-venta-en-zona-el-matadero-de-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('nave-en-poligono-de-ecija-sevilla', 'nave-en-poligono-de-ecija-sevilla', 'Nave en poligono de Écija, Sevilla', '', 'EXCLUSIVIDAD Precio: 224.000€',
  'venta', 'nave', 224000, 'Écija', 'Sevilla', 'POLIGONO DE ECIJA, SEVILLA', 'Écija',
  null, 1, 400, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/1-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/2-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/3-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/4-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/5-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/6-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/7-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/8-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/9-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/10-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/11-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/12-2.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0.jpeg', 'https://inmobiliarianoguera.com/property/nave-en-poligono-de-ecija-sevilla/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-en-calle-barba', 'casa-en-calle-barba', 'Casa en Calle Barba', '', 'BAJADA DE PRECIO',
  'venta', 'casa', 53000, 'Écija', 'Sevilla', 'Calle Barba', 'Écija',
  null, null, 3562, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2023/03/0-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2023/03/1-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2023/03/2-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2023/03/3.png','https://inmobiliarianoguera.com/wp-content/uploads/2023/03/WhatsApp-Image-2026-04-15-at-14.21.27.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2023/03/WhatsApp-Image-2026-04-15-at-14.21.28.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2023/03/WhatsApp-Image-2026-04-15-at-14.21.29-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2023/03/WhatsApp-Image-2026-04-15-at-14.21.30-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2023/03/WhatsApp-Image-2026-04-15-at-14.21.30-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2023/03/WhatsApp-Image-2026-04-15-at-14.21.30-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2023/03/WhatsApp-Image-2026-04-15-at-14.21.30.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2023/03/WhatsApp-Image-2026-04-15-at-14.21.31-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2023/03/WhatsApp-Image-2026-04-15-at-14.21.31.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2023/03/0-1.jpeg', 'https://inmobiliarianoguera.com/property/casa-en-calle-barba/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('fantastico-chalet-con-piscina-en-ecija', 'fantastico-chalet-con-piscina-en-ecija', 'Fantastico chalet con piscina en Écija', '', '💥EXCLUSIVIDAD💥 💸PRECIO: 590.000 € 💵 🔑 FANTASTICO CHALET CON PISCINA EN ECIJA🔑 ✅Inmobiliaria Noguera vende precioso chalet con piscina en Écija. ✅Dispone de una superficie de 300 m2, divididos en 4 habitaciones (2 dobles y 2 individuales), 4 baños, cocina, salón con chimenea, &#8230; ✅De sus zonas exteriores destacan su zona de barbacoa y su estupenda piscina donde disfrutar y relajarte. ✅ No pierdas la oportunidad de adquirir este fantástico chalet en Écija! ➡PISCINA ➡CHIMENEA ➡BARBACOA ➡AMPLIA ZONA EXTERIOR ➡Ref.: 5451 💸PRECIO: 590.000 € 💵 Para más información no dude en contactar con nosotros: 💻www.inmobiliarianoguera.com info@inmobiliarianoguera.com ☎️95 590 07 48 / 653 855 641 ***** En cumplimiento del Decreto de la Junta de Andalucía 218/2005 del 11 de Octubre, el Impuesto de Transmisiones Patrimoniales ó IVA, los gastos de Notaría y Registro regulados por arancel no están incluidos en el precio. Los honorarios profesionales de la Agencia no están incluidos. Validez de precios 7 días, sujeto a disponibilidades y confirmación por propietarios. Se considera que la descripción y los precios indicados para las propiedades a la venta en este sitio web son correctos. No obstante, la información que contiene esta página puede ser sujeta a errores u omisiones. Las propiedades pueden ser sujetas a cambio de precio, venta o retirada del mercado #oportunidad #ecija #centrodeEcijal #inmobiliarianoguera #pisos #inmobiliaria #PisoEnVenta',
  'venta', 'chalet', 590000, 'Écija', 'Sevilla', 'ECIJA', 'Écija',
  4, 4, 300, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-18.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-20.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-23.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-24.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-25.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-29.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-30.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-32.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-37.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-39.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-42.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-46.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-50.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-53.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-62.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-63.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-64.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-66.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-67.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-68.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-72.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-73.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-74.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-75.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-77.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-78.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-82.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-3.jpg', 'https://inmobiliarianoguera.com/property/%f0%9f%94%91-fantastico-chalet-con-piscina-en-ecija%f0%9f%94%91/',
  true, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-para-reformar-zona-centro-de-ecija-sevilla', 'casa-para-reformar-zona-centro-de-ecija-sevilla', 'Casa para reformar zona centro de Écija, Sevilla)', '', 'EXCLUSIVIDAD Precio: 120.000€',
  'venta', 'casa_reformar', 120000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, 375, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/04/1-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/2-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/3-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/4-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/5-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/6-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/7-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/8-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/9-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/10-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/11-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/12-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/13-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/14-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/15-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/16-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/17-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/18-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/19-5.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/04/1-5.jpeg', 'https://inmobiliarianoguera.com/property/casa-para-reformar-zona-centro-de-ecija-sevilla/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('local-en-alquiler-en-ecija', 'local-en-alquiler-en-ecija', 'Local en alquiler en Écija', '', 'Este local en alquiler en una de las mejores ubicaciones de Écija cuenta con una superficie total de 85 m² aproximadamente. Dispone de entrada, 3 salas independientes y 1 aseo. Ideal para emprender un nuevo negocio en una de las zonas más activas de Écija. ¡No pierdas esta oportunidad y ven a visitarlo!',
  'alquiler', 'local', 520, 'Écija', 'Sevilla', 'ALQUILER EN ECIJA', 'Écija',
  null, 1, 84, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/04/1-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/2-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/3-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/4-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/5-8.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/04/1-6.jpeg', 'https://inmobiliarianoguera.com/property/local-en-alquiler-en-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('local-en-venta-en-el-centro-de-ecija', 'local-en-venta-en-el-centro-de-ecija', 'Local en venta en el centro de Écija', '', 'EXCLUSIVIDAD 63.000€',
  'venta', 'local', 63000, 'Écija', 'Sevilla', 'VENTA EN EL CENTRO DE ÉCIJA', 'Écija',
  null, 1, 60, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/04/IMG-20231024-WA0028.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/IMG-20231024-WA0039.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/IMG-20231024-WA0046.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/IMG-20231024-WA0047.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/04/IMG-20231024-WA0028.jpg', 'https://inmobiliarianoguera.com/property/local-en-venta-en-el-centro-de-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('piso-zona-c-cordoba-ecija', 'piso-zona-c-cordoba-ecija', 'Piso zona c/cordoba (Écija)', '', 'EXCLUSIVIDAD',
  'venta', 'piso', 95000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  3, 1, 752, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/1-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/3-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/4-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/5-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/6-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/7-10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/9-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/10-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/11-10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/12-10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/13-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/14-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/15-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/16-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/17-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/18-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/19-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/20-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/21-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/22-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/23-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/24-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/25-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/26-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/27-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/28-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/29-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/30-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/31-4.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0-3.jpeg', 'https://inmobiliarianoguera.com/property/piso-zona-c-cordoba-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('local-en-pleno-centro-de-ecija-sevilla', 'local-en-pleno-centro-de-ecija-sevilla', 'Local en pleno centro de Écija (Sevilla)', '', '⬇️ BAJADA DE PRECIO ⬇️ ✴ EXCLUSIVIDAD ✴ 💵 Precio: 76.900€ 💵 📍 LOCAL EN PLENO CENTRO DE ECIJA (SEVILLA) 📍 🆕 Inmobiliaria Noguera vende local situado en calle comercial del centro de Écija (Sevilla). ✅ Se vende local comercial en Écija, con una superficie de 60 m² aproximadamente. Este local cuenta con 1 aseo y está adaptado para personas con discapacidad. Dispone de escaparate y se encuentra en buen estado de conservación, ubicado en calle comercial del centro de Écija. Si estás buscando un local comercial en Écija, esta puede ser una excelente oportunidad para ti. ✅ 60 m2 aprox. ➡ Dispone de escaparate ➡ Excelente situación ➡ 1 aseo. Ref. : 8411 💵 Precio: 76.900€ 💵 Para más información no dude en contactar con nosotros: www.inmobiliarianoguera.com info@inmobiliarianoguera.com 95 590 07 48 / 653 855 641 ***** En cumplimiento del Decreto de la Junta de Andalucía 218/2005 del 11 de Octubre, el Impuesto de Transmisiones Patrimoniales ó IVA, los gastos de Notaría y Registro regulados por arancel no están incluidos en el precio. Los honorarios profesionales de la Agencia no están incluidos. Validez de precios 7 días, sujeto a disponibilidades y confirmación por propietarios. Se considera que la descripción y los precios indicados para las propiedades a la venta en este sitio web son correctos. No obstante, la información que contiene esta página puede ser sujeta a errores u omisiones. Las propiedades pueden ser sujetas a cambio de precio, venta o retirada del mercado #inmobiliarianoguera #pisosenecija #ecija #idealista #fotocasa #inmobiliaria #pisosconterraza #inversion #oportunidadinmobiliaria',
  'venta', 'local', 76900, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, 1, 58, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/12/1-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/2-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/3-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/4-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/5-2.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/12/1-2.jpeg', 'https://inmobiliarianoguera.com/property/%f0%9f%93%8dlocal-en-pleno-centro-de-ecija-sevilla%f0%9f%93%8d/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-senorial-en-el-centro-de-ecija-sevilla', 'casa-senorial-en-el-centro-de-ecija-sevilla', 'Casa señorial en el centro de Écija (Sevilla)', '', 'EXCLUSIVIDAD',
  'venta', 'casa', 240000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  5, 4, 470, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/04/1-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/2-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/3-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/4-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/5-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/6-10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/7-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/8-Puerta-del-patio.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/9-COCINA.JPG.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/10-DORMITORIO6.JPG.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/11-DORMITORIO7.JPG.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/12-DORMITORIO1.JPG.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/13-DORMITORIO2.JPG.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/14-DORMITORIO3.JPG.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/15-DORMITORIO4.JPG.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/15.1-DORMITORIO5.JPG.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/16-BAaeO2.JPG.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/BAaeO1.JPG.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/ESCALERAS.JPG.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/04/1-9.jpeg', 'https://inmobiliarianoguera.com/property/casa-senorial-en-el-centro-de-ecija-sevilla/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-para-derribar-en-zona-el-calle-el-carmen-ecija-sevilla', 'casa-para-derribar-en-zona-el-calle-el-carmen-ecija-sevilla', 'Casa para derribar en zona el calle el carmen, Écija (Sevilla)', '', 'EXCLUSIVIDAD',
  'venta', 'casa', 55000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, 135, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/04/WhatsApp-Image-2026-04-28-at-11.44.27-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/WhatsApp-Image-2026-04-28-at-11.44.28-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/WhatsApp-Image-2026-04-28-at-11.44.29-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/WhatsApp-Image-2026-04-28-at-11.44.41.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/WhatsApp-Image-2026-04-28-at-11.44.42-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/WhatsApp-Image-2026-04-28-at-11.44.43.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/WhatsApp-Image-2026-04-28-at-11.44.44.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/WhatsApp-Image-2026-04-28-at-11.44.45-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/WhatsApp-Image-2026-04-28-at-11.44.45.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/WhatsApp-Image-2026-04-28-at-11.44.46.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/WhatsApp-Image-2026-04-28-at-11.44.48-3.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/04/WhatsApp-Image-2026-04-28-at-11.44.27-3.jpeg', 'https://inmobiliarianoguera.com/property/casa-para-derribar-en-zona-el-calle-el-carmen-ecija-sevilla/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-en-venta-en-zona-centro-ecija-sevilla', 'casa-en-venta-en-zona-centro-ecija-sevilla', 'Casa en venta en zona centro, Écija ( Sevilla)', '', 'EXCLUSIVIDAD Precio: 198.000€',
  'venta', 'casa', 198000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  4, 2, 240, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0.0.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0.1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0.2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0.3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0.4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0.5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0.6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0.7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0.8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/2-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/3-13.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/4-13.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/5.1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/5-13.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/6-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/7-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/8-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/26-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/29-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/31-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/33-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/37-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/38-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/39-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/40-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/41-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/45.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/52.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/53.1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/53.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0.0.jpeg', 'https://inmobiliarianoguera.com/property/casa-en-venta-en-zona-centro-ecija-sevilla/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-en-calle-moreria-pleno-centro-de-ecija-sevilla', 'casa-en-calle-moreria-pleno-centro-de-ecija-sevilla', 'Casa en calle moreria, pleno centro de Écija (Sevilla)', '', 'EXCLUSIVIDAD',
  'venta', 'casa', 120000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  5, 1, 240, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/04/1-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/2-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/3.0.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/3-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/4-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/5-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/6-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/7-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/8-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/9-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/10-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/11-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/12-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/13-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/14-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/15-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/16-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/17-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/18-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/19-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/20-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/21-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/22-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/23-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/24-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/25-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/26-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/27-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/28-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/29-3.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/04/1-7.jpeg', 'https://inmobiliarianoguera.com/property/casa-en-calle-moreria-pleno-centro-de-ecija-sevilla/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('alquiler-de-local-en-avd-miguel-de-cervantes', 'alquiler-de-local-en-avd-miguel-de-cervantes', 'Alquiler de Local en Avda. Miguel de Cervantes', '', 'SE ALQUILA EDIFICIO COMPLETO EN EN AVD. MIGUEL DE CERVANTES (ANTIGUA SUCURSAL DE UNICAJA (ECIJA,SEVILLA)',
  'alquiler', 'local', 1900, 'Écija', 'Sevilla', 'Avd. Miguel de Cervantes', 'Écija',
  6, 2, 350, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/02/1-2-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/1-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/2-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/3-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/4-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/5-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/6-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/7-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/8-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/9-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/10-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/11-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/12-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/13-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/14-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/15-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/16-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/17.1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/17-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/18-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/19-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/20.1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/20-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/21-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/21-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/22-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/23-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/24-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/25-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/26-1.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/02/1-2-1.jpeg', 'https://inmobiliarianoguera.com/property/alquiler-de-local-en-avd-miguel-de-cervantes/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
commit;
