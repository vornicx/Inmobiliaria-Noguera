-- Parte 4 de 4 · inmuebles 151-200 de 200
-- Pega y ejecuta en Supabase > SQL Editor. Reejecutable sin duplicar.
begin;
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('se-alquila-edificio-completo-en-en-avd-miguel-de-cervantes-antigua-sucursal-de-u', 'se-alquila-edificio-completo-en-en-avd-miguel-de-cervantes-antigua-sucursal-de-u', 'Se alquila edificio completo en en Avda. miguel de cervantes (antigua sucursal de unicaja (Écija,Sevilla)', '', 'SE ALQUILA EDIFICIO COMPLETO EN EN AVD. MIGUEL DE CERVANTES (ANTIGUA SUCURSAL DE UNICAJA (ECIJA,SEVILLA)',
  'alquiler', 'piso', 1900, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, 2, 300, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/04/1-2-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/2.3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/2-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/3-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/4-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/5-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/6-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/7-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/8-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/9-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/10-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/11-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/12-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/13-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/14-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/15-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/16-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/17.1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/17-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/18-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/19-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/20.1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/20-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/21-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/21-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/22-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/23-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/24-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/25-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/26-1.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/04/1-2-1.jpeg', 'https://inmobiliarianoguera.com/property/se-alquila-edificio-completo-en-en-avd-miguel-de-cervantes-antigua-sucursal-de-unicaja-ecijasevilla-2/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('se-alquila-edificio-completo-en-en-avd-miguel-de-cervantes-antigua-sucursal-de-u-2', 'se-alquila-edificio-completo-en-en-avd-miguel-de-cervantes-antigua-sucursal-de-u-2', 'Se alquila edificio completo en en Avda. miguel de cervantes (antigua sucursal de unicaja (Écija,Sevilla)', '', 'SE ALQUILA EDIFICIO COMPLETO EN EN AVD. MIGUEL DE CERVANTES (ANTIGUA SUCURSAL DE UNICAJA (ECIJA,SEVILLA)',
  'alquiler', 'piso', 1900, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, 2, 300, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/02/1-2-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/2.3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/2-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/3-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/4-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/5-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/6-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/7-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/8-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/9-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/10-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/11-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/12-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/13-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/14-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/15-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/16-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/17.1-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/17-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/18-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/19-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/20.1-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/20-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/21-2-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/21-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/22-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/23-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/24-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/25-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/26-3.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/02/1-2-3.jpeg', 'https://inmobiliarianoguera.com/property/se-alquila-edificio-completo-en-en-avd-miguel-de-cervantes-antigua-sucursal-de-unicaja-ecijasevilla/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-en-la-alcarrachela-ecija-sevilla', 'casa-en-la-alcarrachela-ecija-sevilla', 'Casa en la alcarrachela, Écija (Sevilla)', '', 'EXCLUSIVIDAD',
  'venta', 'casa', 310000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  4, 3, 200, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/05/1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/13.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/14.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/15.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/16.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/17-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/17.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/18.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/19.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/20.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/21.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/22.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/24.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/26.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/27.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/05/1.jpeg', 'https://inmobiliarianoguera.com/property/casa-en-la-alcarrachela-ecija-sevilla/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('amplio-local-en-bruto-en-calle-hospital-ecija-sevilla', 'amplio-local-en-bruto-en-calle-hospital-ecija-sevilla', 'Amplio local en bruto en calle hospital, Écija (Sevilla)', '', 'EXCLUSIVIDAD',
  'venta', 'local', 198000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, 278, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/05/1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/2-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/3-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/4-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/5-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/6-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/7-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/WhatsApp-Image-2026-04-27-at-11.22.11-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/WhatsApp-Image-2026-04-27-at-11.22.11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/WhatsApp-Image-2026-04-27-at-11.22.12-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/WhatsApp-Image-2026-04-27-at-11.22.12-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/WhatsApp-Image-2026-04-27-at-11.22.12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/WhatsApp-Image-2026-04-27-at-11.22.13-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/WhatsApp-Image-2026-04-27-at-11.22.13-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/WhatsApp-Image-2026-04-27-at-11.22.13.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/WhatsApp-Image-2026-04-27-at-11.22.14-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/WhatsApp-Image-2026-04-27-at-11.22.14-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/WhatsApp-Image-2026-04-27-at-11.22.14-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/WhatsApp-Image-2026-04-27-at-11.22.14-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/WhatsApp-Image-2026-04-27-at-11.22.14.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/WhatsApp-Image-2026-04-27-at-11.22.15-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/WhatsApp-Image-2026-04-27-at-11.22.15-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/WhatsApp-Image-2026-04-27-at-11.22.15-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/WhatsApp-Image-2026-04-27-at-11.22.15-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/WhatsApp-Image-2026-04-27-at-11.22.15.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/WhatsApp-Image-2026-04-27-at-11.22.16-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/WhatsApp-Image-2026-04-27-at-11.22.16-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/WhatsApp-Image-2026-04-27-at-11.22.16.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/05/1.jpg', 'https://inmobiliarianoguera.com/property/amplio-local-en-bruto-en-calle-hospital-ecija-sevilla/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-para-reformar-en-zona-centro-de-ecija-sevilla', 'casa-para-reformar-en-zona-centro-de-ecija-sevilla', 'Casa para reformar en zona centro de Écija (Sevilla)', '', 'EXCLUSIVIDAD',
  'venta', 'casa_reformar', 75000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  4, 2, 230, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/05/360_Snapshot-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/360_Snapshot-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/360_Snapshot-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/360_Snapshot-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/360_Snapshot.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/05/360_Snapshot-1.jpg', 'https://inmobiliarianoguera.com/property/casa-para-reformar-en-zona-centro-de-ecija-sevilla/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('parcela-con-piscina-a-pocos-minutos-de-ecija-sevilla-2', 'parcela-con-piscina-a-pocos-minutos-de-ecija-sevilla-2', 'Parcela con piscina a pocos minutos de Écija (Sevilla)', '', 'EXCLUSIVIDAD Precio: 246.000€',
  'venta', 'parcela_urbana', 246000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  4, 1, null, 700,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/05/1-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/2-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/3-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/4-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/5-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/6-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/7-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/8-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/9-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/10-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/11-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/12-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/13-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/WhatsApp-Image-2026-05-11-at-13.16.43-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/WhatsApp-Image-2026-05-11-at-13.16.43-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/WhatsApp-Image-2026-05-11-at-13.16.43.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/05/1-4.jpeg', 'https://inmobiliarianoguera.com/property/parcela-con-piscina-a-pocos-minutos-de-ecija-sevilla-2/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-en-venta-en-zona-centro-ecija-sevilla-2', 'casa-en-venta-en-zona-centro-ecija-sevilla-2', 'Casa en venta en zona centro, Écija (Sevilla)', '', 'EXCLUSIVIDAD',
  'venta', 'casa', 235000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  6, 3, 295, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/05/0.1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/0.2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/0.3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/0.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/1-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/3-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/4-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/5-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/8-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/9-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/10-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/11-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/12-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/13.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/14.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/15.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/16-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/17-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/18-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/19-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/20-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/21-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/22-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/23-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/24-2.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/05/0.1.jpg', 'https://inmobiliarianoguera.com/property/casa-en-venta-en-zona-centro-ecija-sevilla-2/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-en-venta-zona-el-ferrocarril-ecija-sevilla', 'casa-en-venta-zona-el-ferrocarril-ecija-sevilla', 'Casa en venta zona el ferrocarril Écija (Sevilla)', '', 'EXCLUSIVIDAD',
  'venta', 'casa', 150000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  3, 2, 220, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/05/1-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/2-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/9-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/11-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/12.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/13-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/14-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/IMG-20240314-WA0057.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/IMG-20240314-WA0071.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/IMG-20240314-WA0076.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/05/1-1.jpg', 'https://inmobiliarianoguera.com/property/%f0%9f%92%a5casa-en-venta-zona-el-ferrocarril-ecija-sevilla-%f0%9f%92%a5/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('alquiler-vacacional-en-fuengirola', 'alquiler-vacacional-en-fuengirola', 'Alquiler vacacional en Fuengirola', '', '¡¡Disponible mes de agosto en Fuengirola!!',
  'alquiler', 'piso', 1250, 'Écija', 'Sevilla', 'Fuengirola', 'Écija',
  3, 1, 60, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/05/1-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/2-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/3-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/4-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/5-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/6-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/7-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/8-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/9-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/10-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/11-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/12-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/13-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/14-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/15-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/16.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/17.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/18.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/19.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/20.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/21.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/22.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/23.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/24-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/25.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/26-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/27-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/28.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/29.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/30.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/05/1-2.jpg', 'https://inmobiliarianoguera.com/property/alquiler-vacacional-en-fuengirola/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-en-venta-en-ecija-sevilla', 'casa-en-venta-en-ecija-sevilla', 'Casa con dos viviendas independientes en venta en Écija (Sevilla)', '', '💥 EXCLUSIVIDAD 💥 💵 Precio: 175.000€ 💵 💥 CASA CON DOS VIVIENDAS INDEPENDIENTES EN VENTA EN ECIJA (SEVILLA) 💥 ✅ Inmobiliaria Noguera vende Esta espaciosa casa, dividida en dos viviendas independientes en Écija, ideal para aquellos que buscan un hogar amplio y confortable. ✅ En planta baja encontramos una vivienda con amplio salon comedor, cocina con despensa, tres habitaciones, baño completo, lavadero y dos patios. ✅ En la planta superior, gran salon con balcon exterior, cocina, tres habitaciones, baño completo y amplia terraza/azotea , con trastero. ✅ Las viviendas se encuentran en buen estado de conservación, lo que permite entrar a vivir sin necesidad de realizar reformas inmediatas. Su diseño y dimensiones aseguran una estancia agradable y luminosa, perfecta para crear un ambiente acogedor. ✅ La amplitud y calidad de la vivienda hacen que sea una estupenda opción, ideal para quien busca un hogar cómodo y espacioso en Écija. No pierdas la oportunidad de adquirir esta casa y convertirla en el hogar de tus sueños en Écija. Contacta con nosotros para más información. ➡ RENTA LIBRE ➡ TERRAZA ➡ PATIO ➡ Ref. : 8661 💵 Precio: 175.000€ 💵 Para más información no dude en contactar con nosotros:www.inmobiliarianoguera.cominfo@inmobiliarianoguera.com95 590 07 48 / 653 855 641****** En cumplimiento del Decreto de la Junta de Andalucía 218/2005 del 11 de Octubre, el Impuesto de Transmisiones Patrimoniales ó IVA, los gastos de Notaría y Registro regulados por arancel no están incluidos en el precio. Los honorarios profesionales de la Agencia no están incluidos. Validez de precios 7 días, sujeto a disponibilidades y confirmación por propietarios. Se considera que la descripción y los precios indicados para las propiedades a la venta en este sitio web son correctos. No obstante, la información que contiene esta página puede ser sujeta a errores u omisiones. Las propiedades pueden ser sujetas a cambio de precio, venta o retirada del mercado',
  'venta', 'casa', 175000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  6, 2, 225, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/05/1-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/2-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/2-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/3-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/4-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/5-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/6-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/7-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/8-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/9-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/10-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/11-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/12-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/13-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/14-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/16-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/17-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/18-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/19.2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/19-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/20-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/21-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/22-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/23-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/24-3.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/05/1-5.jpeg', 'https://inmobiliarianoguera.com/property/%f0%9f%92%a5casa-en-venta-en-ecija-sevilla-%f0%9f%92%a5/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('duplex-en-zona-arroyo-ecija-sevilla', 'duplex-en-zona-arroyo-ecija-sevilla', 'Duplex en zona arroyo, Écija (Sevilla)', '', 'EXCLUSIVIDAD',
  'venta', 'piso', 130000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  3, 2, 200, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/05/1-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/2-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/3-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/4-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/5-13.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/6-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/7-13.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/8-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/9-10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/10-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/11-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/12-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/13-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/14-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/15-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/16-10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/17-10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/18-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/19-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/20-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/21-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/22-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/23-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/24-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/25-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/26-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/27-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/28-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/29-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/30-1.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/05/1-11.jpeg', 'https://inmobiliarianoguera.com/property/duplex-en-zona-arroyo-ecija-sevilla/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('piso-de-renta-libre-con-garaje-y-ascensor-en-ecija-sevilla', 'piso-de-renta-libre-con-garaje-y-ascensor-en-ecija-sevilla', 'Piso de renta libre con garaje y ascensor en Écija (Sevilla)', '', 'EXCLUSIVIDAD',
  'venta', 'piso', 134500, 'Écija', 'Sevilla', 'Écija', 'Écija',
  3, 2, 80, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/05/1-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/2-13.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/3-13.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/4-13.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/5-14.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/6-13.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/7-14.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/8-13.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/9-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/10-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/11-10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/12-13.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/13-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/14-10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/15-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/16-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/17-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/18-10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/19-10.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/05/1-12.jpeg', 'https://inmobiliarianoguera.com/property/%f0%9f%94%91piso-de-renta-libre-con-garaje-y-ascensor-en-ecija-sevilla-%f0%9f%94%91/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('apartamento-en-venta-en-puerta-cerrada-ecija-sevilla', 'apartamento-en-venta-en-puerta-cerrada-ecija-sevilla', 'Apartamento en venta en puerta cerrada, Écija (Sevilla)', '', '✴ EXCLUSIVIDAD ✴💵 Precio: 107.000€ 💵 📍 APARTAMENTO EN VENTA EN PUERTA CERRADA, ECIJA (SEVILLA) 📍 ✅ Inmobiliaria Noguera vende este apartamento situada en la C/Carreras, zona de Puerta Cerrada, Écija (Sevilla) ✅ Este acogedor apartamento en venta en Écija ofrece una superficie total de 47m2. Dispone de una vivienda interior con un salón comedor, cocina equipada, habitación doble con un gran armario empotrado y un baño completo con plato de ducha, ideal para personas o parejas que buscan confort y funcionalidad. El apartamento se encuentra en buen estado de conservación, listo para ser habitado sin necesidad de reformas. Un detalle destacado es el patio interior y privado que permite la entrada de luz natural y ventilación, mejorando la calidad del ambiente interior. ✅ Esta propiedad es una oportunidad atractiva en Écija para quienes buscan un hogar funcional y cómodo. OBSERVACIONES: ➡ PATIO ➡ RENTA LIBRE ➡ PLANTA BAJA ➡ EXCELENTE UBICACION ➡ Ref. : 8674 💵 Precio: 107.000€ 💵 Para más información no dude en contactar con nosotros: ****** En cumplimiento del Decreto de la Junta de Andalucía 218/2005 del 11 de Octubre, el Impuesto de Transmisiones Patrimoniales ó IVA, los gastos de Notaría y Registro regulados por arancel no están incluidos en el precio. Los honorarios profesionales de la Agencia no están incluidos. Validez de precios 7 días, sujeto a disponibilidades y confirmación por propietarios. Se considera que la descripción y los precios indicados para las propiedades a la venta en este sitio web son correctos. No obstante, la información que contiene esta página puede ser sujeta a errores u omisiones. Las propiedades pueden ser sujetas a cambio de precio, venta o retirada del mercado #oportunidad #ecija #centrodeEcija #inmobiliarianoguera #pisos #inmobiliaria #piso #casa #adosada #pisoconpatio #idealista #fotocasa #oportunidad #ecija #centrodeEcija #inmobiliarianoguera #pisos #inmobiliaria #piso #casa #adosada #pisoconpatio #idealista #fotocasa',
  'venta', 'apartamento', 107000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  1, 1, 47, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/06/0.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/13.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/14.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/15.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/16.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/17.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/18.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/19.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/20.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/21.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/22.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/23.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/06/0.jpeg', 'https://inmobiliarianoguera.com/property/%f0%9f%93%8d-apartamento-en-venta-en-puerta-cerrada-ecija-sevilla-%f0%9f%93%8d/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-para-reformar-en-ecija-sevilla', 'casa-para-reformar-en-ecija-sevilla', 'Casa para reformar en Écija, (Sevilla)', '', 'EXCLUSIVIDAD',
  'venta', 'casa_reformar', 55000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  4, 2, 320, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/12/1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/WhatsApp-Image-2025-11-11-at-12.31.40-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/WhatsApp-Image-2025-11-11-at-12.31.40-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/WhatsApp-Image-2025-11-11-at-12.31.40-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/WhatsApp-Image-2025-11-11-at-12.31.40-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/WhatsApp-Image-2025-11-11-at-12.31.40-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/WhatsApp-Image-2025-11-11-at-12.31.40.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/12/1.jpeg', 'https://inmobiliarianoguera.com/property/casa-para-reformar-en-ecija-sevilla/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('piso-en-alquiler-en-ecija', 'piso-en-alquiler-en-ecija', 'Piso en alquiler en Écija', '', 'Este luminoso piso de 70 m² ubicado en la primera planta ofrece una opción cómoda y funcional para quienes buscan un hogar en Écija (Sevilla). Consta de dos habitaciones individuales y una doble, ideal para familias pequeñas o profesionales que necesiten espacio adicional. El inmueble cuenta con un comedor amplio y un balcón, que aportan una agradable sensación de amplitud y luz natural. El baño está equipado y el estado general del piso es bueno, listo para entrar a vivir. Dispone de aire acondicionado para garantizar una temperatura agradable en cualquier estación.',
  'alquiler', 'piso', 700, 'Écija', 'Sevilla', 'ALQUILER EN ECIJA', 'Écija',
  3, 1, 75, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/2-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/3-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/4-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/5-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/6-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/7-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/8-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/9-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/10-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/11-2.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1-2.jpeg', 'https://inmobiliarianoguera.com/property/piso-en-alquiler-en-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-de-pueblo-en-venta-ecija-sevilla', 'casa-de-pueblo-en-venta-ecija-sevilla', 'Casa de pueblo en venta. Écija (Sevilla)', '', 'EXCLUSIVIDAD',
  'venta', 'casa', 362700, 'Écija', 'Sevilla', 'Écija', 'Écija',
  6, 3, 340, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/2-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/3-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/4-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/5-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/6-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/7-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/8-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/9-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/10-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/11-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/12-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/13-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/14-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/15-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/16-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/17-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/18-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/19-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/20-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/22-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/23-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/24-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/25.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/26.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/27.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/28-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/29-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/30-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/31.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1-3.jpeg', 'https://inmobiliarianoguera.com/property/%f0%9f%94%91casa-de-pueblo-en-venta-ecija-sevilla-%f0%9f%94%91/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('venta-de-garaje-en-la-alcarrachela-calle-barcelona-ecija-sevilla', 'venta-de-garaje-en-la-alcarrachela-calle-barcelona-ecija-sevilla', 'Venta de garaje en la alcarrachela, calle barcelona, Écija (Sevilla)', '', '💥EXCLUSIVIDAD💥 💷Precio: 8.000€ 💷 📍 VENTA DE GARAJE EN LA ALCARRACHELA, CALLE BARCELONA, ÉCIJA (SEVILLA) 📍 ✅Inmobiliaria Noguera vende plaza de garaje en una de las zonas más demandadas de Écija, el barrio de la Alcarrachela, en la calle Barcelona. ✅Situada en la planta sótano del edificio, se accede a través de rampa , con fácil maniobra y muy buena ubicación. ✅Este garaje cuenta con una superficie de 15 m² aproximadamente,. ✅Para más información o para agendar una visita, ¡contáctanos!. ▶️ Ref.: 8617 💷Precio: 8.000€💷 Para más información no dude en contactar con nosotros: 95 590 07 48/ 653 855 641 www.inmobiliarianoguera.com info@inmobiliarianoguera.com *******En cumplimiento del Decreto de la Junta de Andalucía 218/2005 del 11 de Octubre, el Impuesto de Transmisiones Patrimoniales ó IVA, los gastos de Notaría y Registro regulados por arancel no están incluidos en el precio. Los honorarios profesionales de la Agencia no están incluidos. Validez de precios 7 días, sujeto a disponibilidades y confirmación por propietarios. Se considera que la descripción y los precios indicados para las propiedades a la venta en este sitio web son correctos. No obstante, la información que contiene esta página puede ser sujeta a errores u omisiones. Las propiedades pueden ser sujetas a cambio de precio, venta o retirada del mercado #inmobiliarianoguera #pisosenecija #casasconpatio #casasbonitas #ecija #idealista #fotocasa #inmobiliaria #pisosconterraza #inversion #OportunidadesInmobiliarias',
  'venta', 'garaje', 8000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, 15, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/02/0.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/1-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/2-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/3-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/4-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/5-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/6-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/7-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/8-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/9-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/10-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/11-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/12-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/13-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/14-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/15-1.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/02/0.jpeg', 'https://inmobiliarianoguera.com/property/%f0%9f%93%8d-venta-de-garaje-en-la-alcarrachela-calle-barcelona-ecija-sevilla-%f0%9f%93%8d/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-amueblada-en-la-luisiana-sevilla', 'casa-amueblada-en-la-luisiana-sevilla', 'Casa amueblada en la luisiana (Sevilla)', '', 'EXCLUSIVIDAD',
  'venta', 'casa', 160000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  3, 1, 140, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/2-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/3-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/4-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/5-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/6-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/7-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/8-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/9-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/10-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/11-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/12-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/13-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/14-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/15-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/16-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/17-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/18-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/19-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/20-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/21-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/22-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/23-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/24-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/25.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/26.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/27-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/28-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/29-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/30-2.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1-5.jpeg', 'https://inmobiliarianoguera.com/property/%f0%9f%93%8d-casa-amueblada-en-la-luisiana-sevilla-%f0%9f%93%8d/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('parcela-rustica-a-2-min-de-ecija', 'parcela-rustica-a-2-min-de-ecija', 'Parcela rustica a 2 min de Écija', '', '💥 EXCLUSIVIDAD 💥 💴 PRECIO: 110.000€ 💴 🔑 PARCELA RÚSTICA FRENTE AVILLANUEVA DEL REY. A 300 METROS DE AUTOVIA (SEVILLA ) 🔑 ➡ Inmobiliaria Finance Noguera pone a la venta una amplia finca rústica situada en Écija, con una superficie de 4200 m² aproximadamente, junto a Joisa. ➡ Este terreno cultivable es ideal para proyectos agrícolas o para quienes busquen un espacio natural y tranquilo para desarrollar distintas actividades. ➡ La finca cuenta con edificaciones existentes, incluyendo una nave de apero de unos 60m aproximados y una perrera, que aportan funcionalidad para diferentes usos. ➡ Disponibilidad de electricidad y pozo propio que facilitan el acceso a servicios básicos. ➡ Además, la zona está totalmente vallada y es llana, lo que permite un fácil aprovechamiento del terreno. El alumbrado presente en la finca asegura la seguridad y comodidad durante la noche. ➡ Esta propiedad destaca por su versatilidad y condiciones para el cultivo, siendo una excelente oportunidad para inversión o desarrollo rural en la zona de Écija. ➡️ PARCELA RUSTICA ➡️ NAVE DE APERO DE 60m2 ➡️ CULTIVABLE ➡️ FÁCIL ACCESO ➡️ Ref. : 8681 💵 Precio: 110.000€ 💵 Para más información no dude en contactar con nosotros: www.inmobiliarianoguera.com info@inmobiliarianoguera.com 95 590 07 48 / 653 855 641 ****** En cumplimiento del Decreto de la Junta de Andalucía 218/2005 del 11 de Octubre, el Impuesto de Transmisiones Patrimoniales ó IVA, los gastos de Notaría y Registro regulados por arancel no están incluidos en el precio. Los honorarios profesionales de la Agencia no están incluidos. Validez de precios 7 días, sujeto a disponibilidades y confirmación por propietarios. Se considera que la descripción y los precios indicados para las propiedades a la venta en este sitio web son correctos. No obstante, la información que contiene esta página puede ser sujeta a errores u omisiones. Las propiedades pueden ser sujetas a cambio de precio, venta o retirada del mercado #oportunidad #ecija #centrodeEcija #inmobiliarianoguera #pisos #inmobiliaria #piso #casa #adosada #pisoconpatio #idealista #fotocasa #oportunidad #ecija #centrodeEcija #inmobiliarianoguera #pisos #inmobiliaria #piso #casa #adosada #pisoconpatio #idealista #fotocasa',
  'venta', 'parcela_rustica', 110000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, null, 4200,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/06/0-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/2-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/3-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/4-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/5-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/6-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/7-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/8-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/9-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/10-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/11-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/12-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/13-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/14-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/15-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/16-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/17.0.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/17-3.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/06/0-1.jpeg', 'https://inmobiliarianoguera.com/property/parcela-rustica-a-2-min-de-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('atico-en-venta-en-ecija', 'atico-en-venta-en-ecija', 'Atico en venta en Écija', '', 'EXCLUSIVIDAD',
  'venta', 'ático', 220000, 'Écija', 'Sevilla', 'VENTA EN ECIJA', 'Écija',
  3, 1, 103, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/2-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/3-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/4-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/5-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/6-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/7-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/8-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/9-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/10-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/11-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/12-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/13.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/14.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/15.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/16-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/17-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/18-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/19-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/20-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/21-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/22-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/23-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/24-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/25-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/26-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/27-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/28-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/29-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/30.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1-6.jpeg', 'https://inmobiliarianoguera.com/property/atico-en-venta-en-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('solar-en-zona-centro-ecija-sevilla', 'solar-en-zona-centro-ecija-sevilla', 'Solar en zona centro, Écija, Sevilla', '', 'EXCLUSIVIDAD Precio: 99.000€',
  'venta', 'solar', 99000, 'Écija', 'Sevilla', 'CENTRO, ÉCIJA, SEVILLA', 'Écija',
  null, null, null, 163,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/03/WhatsApp-Image-2026-03-13-at-17.21.39-1.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/03/WhatsApp-Image-2026-03-13-at-17.21.39-1.jpeg', 'https://inmobiliarianoguera.com/property/%f0%9f%93%8dsolar-en-zona-centro-ecija-sevilla%f0%9f%93%8d/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-en-venta-en-la-alcarrachela-ecija-sevilla', 'casa-en-venta-en-la-alcarrachela-ecija-sevilla', 'Casa en venta en la alcarrachela- Écija (Sevilla)', '', 'EXCLUSIVIDAD Precio: 230.000€',
  'venta', 'casa', 230000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  3, 3, 220, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/4-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/5-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/6-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/7-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/9-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/10-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/11-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/12.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/13-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/14-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/15-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/16-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/17-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/18-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/19-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/20-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/21-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/22-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/23-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/24-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/25-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/26-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/27-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/28-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/29-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/30-3.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1.jpg', 'https://inmobiliarianoguera.com/property/%f0%9f%93%8dcasa-en-venta-en-la-alcarrachela-ecija-sevilla%f0%9f%93%8d/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-en-venta-en-balcon-de-ecija', 'casa-en-venta-en-balcon-de-ecija', 'Casa en venta en BALCON DE Écija', '', 'CASA VPO EN BALCÓN DE ÉCIJA (SEVILLA)',
  'venta', 'casa', 175000, 'Écija', 'Sevilla', 'venta en BALCON DE ECIJA', 'Écija',
  3, 2, 90, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/03/5-9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/6-8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/7-7.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/03/5-9.jpg', 'https://inmobiliarianoguera.com/property/casa-en-venta-en-balcon-de-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('atico-con-dos-terrazas-en-la-alcarrachela-ecija', 'atico-con-dos-terrazas-en-la-alcarrachela-ecija', 'Ático con dos terrazas en la alcarrachela ( Écija)', '', '✴️EXCLUSIVIDAD✴️💸PRECIO 205.000€💸 📍ÁTICO CON DOS TERRAZAS EN LA ALCARRACHELA ( ECIJA)📍 ✅Inmobiliaria Noguera vende este ático, ubicado edificio con ascensor, ofrece una superficie de 80 m², diseñado para quienes buscan confort y amplitud. ✅Dispone de tres dormitorios ideales para familias o para quienes necesitan espacio adicional para oficina o invitados. Cuenta con dos baños, lo que aporta funcionalidad y privacidad para los residentes. ✅La propiedad está en buen estado de conservación asegurando una estructura sólida y acabados duraderos. Uno de sus mayores atractivos es la abundante luz natural que entra gracias a su orientación exterior, creando ambientes cálidos y acogedores. Además, tiene dos terrazas: una de 24 m², perfecta para disfrutar de comidas al aire libre, y otra más amplia de 110 m², ideal para eventos o momentos de relax con vistas panorámicas. ✅La plaza de parking incluida tiene capacidad para dos vehiculos y añade comodidad, facilitando el estacionamiento en una zona demandada. ✅Este ático destaca por combinar espacios amplios, buena ubicación y múltiples zonas exteriores, haciendo que vivir aquí sea una experiencia placentera y funcional. ▶️ VIVIENDA DE VPO ▶️INCLUYE PLAZA DE GARAJE EN EL PRECIO ▶️Ref.: 8688 💸PRECIO 205.000€💸 Para más información no dude en contactar con nosotros: [www.inmobiliarianoguera.com](https://www.inmobiliarianoguera.com/...) info@inmobiliarianoguera.com 95 590 07 48 / 653 855 641 ***** En cumplimiento del Decreto de la Junta de Andalucía 218/2005 del 11 de Octubre, el Impuesto de Transmisiones Patrimoniales ó IVA, los gastos de Notaría y Registro regulados por arancel no están incluidos en el precio. Los honorarios profesionales de la Agencia no están incluidos. Validez de precios 7 días, sujeto a disponibilidades y confirmación por propietarios. Se considera que la descripción y los precios indicados para las propiedades a la venta en este sitio web son correctos. No obstante, la información que contiene esta página puede ser sujeta a errores u omisiones. Las propiedades pueden ser sujetas a cambio de precio, venta o retirada del mercado',
  'venta', 'ático', 205000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  3, 2, 80, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/2-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/3-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/4-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/5-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/6-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/7-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/8-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/9.1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/9-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/10-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/11-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/12-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/13-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/14-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/15-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/16.1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/16-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/17-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/18-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/19-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/20-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/21-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/22-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/23-6.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1-7.jpeg', 'https://inmobiliarianoguera.com/property/%f0%9f%93%8datico-con-dos-terrazas-en-la-alcarrachela-ecija%f0%9f%93%8d/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('parcela-rustica-a-10-minutos-de-ecija-sevilla', 'parcela-rustica-a-10-minutos-de-ecija-sevilla', 'Parcela rustica a 10 minutos de Écija (Sevilla)', '', '✴EXCLUSIVIDAD✴ 💵Precio: 195.000€💵 📍 PARCELA RUSTICA A 10 MINUTOS DE ÉCIJA (SEVILLA) 📍 ✅ Inmobiliaria Noguera vende parcela rústica de unos 4.000m2, de muy fácil acceso , con varias construcciones, luz y agua. ✅ La vivienda tiene 150m2 aprox, y cuenta con dos amplios salones, uno de ellos con chimenea, tres grandes habitaciones, dos baños completos, dos cocinas, amplia cochera , patio central y patio trasero, donde se enclava la zona de ocio con porche, barbacoa y piscina. ✅También en la zona trasera de la casa encontramos una nave de aperos de unos 100m2 y todo el terreno cultivable, en el que actualmente hay olivos. ➡ PARCELA RUSTICA ➡ CASA ➡ NAVE ➡ LUZ Y AGUA ➡ ZONA DE PISCINA ➡ BUENA UBICACION ➡ Ref. : 0453 💵Precio: 195.000€💵 Para más información no dude en contactar con nosotros: www.inmobiliarianoguera.com info@inmobiliarianoguera.com 95 590 07 48 / 653 855 641 ****** En cumplimiento del Decreto de la Junta de Andalucía 218/2005 del 11 de Octubre, el Impuesto de Transmisiones Patrimoniales ó IVA, los gastos de Notaría y Registro regulados por arancel no están incluidos en el precio. Los honorarios profesionales de la Agencia no están incluidos. Validez de precios 7 días, sujeto a disponibilidades y confirmación por propietarios. Se considera que la descripción y los precios indicados para las propiedades a la venta en este sitio web son correctos. No obstante, la información que contiene esta página puede ser sujeta a errores u omisiones. Las propiedades pueden ser sujetas a cambio de precio, venta o retirada del mercado #oportunidad #ecija #centrodeEcija #inmobiliarianoguera #pisos #inmobiliaria #piso #casa #adosada #pisoconpatio #idealista #fotocasa #oportunidad #ecija #centrodeEcija #inmobiliarianoguera #pisos #inmobiliaria #piso #casa #adosada #pisoconpatio #idealista #fotocasa Ver menos',
  'venta', 'parcela_rustica', 195000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  3, 2, null, 4100,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/06/000000.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/00000.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/0000.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/000.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/000.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/00.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/0-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/2-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/3-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/4-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/5-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/6-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/7-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/8-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/9-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/10-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/11-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/12-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/13-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/14-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/15-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/16-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/17-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/18-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/19-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/20-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/21-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/22-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/23-7.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/06/000000.jpg', 'https://inmobiliarianoguera.com/property/%f0%9f%93%8d-parcela-rustica-a-10-minutos-de-ecija-sevilla-%f0%9f%93%8d/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('finca-rustica-a-10-min-de-ecija', 'finca-rustica-a-10-min-de-ecija', 'Finca rustica a 10 min de Écija', '', 'Ref. 7906.',
  'venta', 'parcela_rustica', 155000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  2, 2, null, 2500,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2022/10/0-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/10/3-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/10/5-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/10/6-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/10/9-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/10/13.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2022/10/0-5.jpeg', 'https://inmobiliarianoguera.com/property/finca-rustica-a-10-min-de-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('atico-en-venta-en-zona-calle-merinos-ecija-sevilla', 'atico-en-venta-en-zona-calle-merinos-ecija-sevilla', 'Ático en venta en zona calle merinos. Écija (Sevilla)', '', 'EXCLUSIVIDAD',
  'venta', 'ático', 185000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  3, 1, 90, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/06/0.1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/01.1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/01.2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/01.3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/01.4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/01.5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/01.6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/2-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/3-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/6-10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/7-10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/8-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/13-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/15-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/16-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/17-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/18-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/19-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/20-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/28-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/29-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/30-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/31-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/32-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/33-5.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/06/0.1.jpg', 'https://inmobiliarianoguera.com/property/atico-en-venta-en-zona-calle-merinos-ecija-sevilla/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('piso-en-venta-en-ecija-sevilla', 'piso-en-venta-en-ecija-sevilla', 'Piso en venta en Écija (Sevilla)', '', 'EXCLUSIVIDAD',
  'venta', 'piso', 54000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  3, 1, 70, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/2-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/3.1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/3-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/4.0.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/4-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/7.0.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/8-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/9-1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1-1.jpg', 'https://inmobiliarianoguera.com/property/%f0%9f%94%91piso-en-venta-en-ecija-sevilla%f0%9f%94%91/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('solar-situado-cercano-al-centro-de-ecija-sevilla', 'solar-situado-cercano-al-centro-de-ecija-sevilla', 'Solar situado cercano al centro de Écija (Sevilla)', '', 'EXCLUSIVIDAD Precio: 155.000€',
  'venta', 'solar', 155000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, null, 150,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1000_F_80608289_EYweHmlIKRlr5DCedYTEhXanOIqtZ3Ke.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/ChatGPT-Image-26-jun-2026-14_19_23.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1000_F_80608289_EYweHmlIKRlr5DCedYTEhXanOIqtZ3Ke.jpg', 'https://inmobiliarianoguera.com/property/solar-situado-cercano-al-centro-de-ecija-sevilla/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('nave-en-venta-en-canada-rosal', 'nave-en-venta-en-canada-rosal', 'Nave en venta', '', '✴EXCLUSIVIDAD✴ 💵PRECIO: 124.000€💵 🔑 NAVE EN VENTA🔑 ➡FINANCIAMOS HASTA EL 100%➡ ✅Inmobiliaria Finance Noguera vende nave con oficina y apartamento. ✅Se presenta esta nave industrial en venta , con una superficie total y útil de 230 m². El inmueble se encuentra en buen estado de conservación, ofreciendo un espacio funcional para diversas actividades industriales o comerciales. ✅La nave cuenta con una oficina integrada, un altillo de 70 m² que amplía la capacidad funcional y un aseo, garantizando comodidad y operatividad. ✅Dentro de las instalaciones, se incluye un apartamento, que tiene una superficie de 55 m² con cocina comedor ideal para el descanso durante la jornada laboral. El patio con piscina proporciona un área exterior que puede ser utilizada como esparcimiento o para otras actividades. ✅El recinto está totalmente vallado, lo que asegura privacidad y seguridad. Esta propiedad es una oportunidad adecuada para quienes buscan un espacio industrial con comodidades adicionales en un entorno preparado para diversas actividades productivas. ➡ALTILLO DE 70M2 ➡OFICINA ➡APARTAMENTO DE 55M2 ➡PISCINA ➡REF. 8694 💵PRECIO: 124.000€💵 Para más información no dude en contactar con nosotros: www.inmobiliarianoguera.com info@inmobiliarianoguera.com 95 590 07 48/653 855 641/657 657 82 91 35 *******En cumplimiento del Decreto de la Junta de Andalucía 218/2005 del 11 de Octubre, el Impuesto de Transmisiones Patrimoniales ó IVA, los gastos de Notaría y Registro regulados por arancel no están incluidos en el precio. Los honorarios profesionales de la Agencia no están incluidos. Validez de precios 7 días, sujeto a disponibilidades y confirmación por propietarios. Se considera que la descripción y los precios indicados para las propiedades a la venta en este sitio web son correctos. No obstante, la información que contiene esta página puede ser sujeta a errores u omisiones. Las propiedades pueden ser sujetas a cambio de precio, venta o retirada del mercado #inmobiliarianoguera #pisosenecija #casasconpatio #casasbonitas #ecija #idealista #fotocasa #inmobiliaria #pisosconterraza #inversion #OportunidadesInmobiliarias',
  'venta', 'nave', 124000, 'Écija', 'Sevilla', 'VENTA', 'Écija',
  null, 1, 230, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/2-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/3-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/4-2.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1-2.jpg', 'https://inmobiliarianoguera.com/property/%f0%9f%94%91-nave-en-venta-en-canada-rosal%f0%9f%94%91/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('piso-zona-el-valle', 'piso-zona-el-valle', 'Piso zona El Valle', '', 'Ref 7867. Piso en la zona del Valle, con 90m2 y distribuido en: hall de entrada, tres habitaciones, dos de ellas dobles, amplio salón comedor con salida a gran balcón exterior, cocina equipada y cuarto de baño completo. Incluido en el precio: garaje privado. Piso totalmente reformado, listo para entrar a vivir, Renta Libre.',
  'venta', 'piso', 60000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  3, 1, 90, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2022/07/1-10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/07/2-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/07/0-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/07/3-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/07/4-9.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2022/07/1-10.jpeg', 'https://inmobiliarianoguera.com/property/piso-zona-el-valle/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('duplex-en-el-valle', 'duplex-en-el-valle', 'Duplex en el Valle', '', 'Ref 7876. Duplex en la zona del Valle, con una superficie total de 100m2 aproximadamente, dividido en dos plantas. En la planta baja , por donde se accede encontramos, dos habitaciones, salon comedor, cuarto de baño, cocina con zona de lavadero y subida a la primera planta, donde hay un gran salon con balcon exterior, dos habitaciones, cuarto de baño completo y zona de lavadero, Ideal para una gran familia por su amplitud, cercano a comercios, colegio e instituto. Renta Libre.',
  'venta', 'piso', 72000, 'Écija', 'Sevilla', 'El Valle', 'Écija',
  4, 2, 100, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2022/07/0-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/07/1-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/07/2-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/07/4-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/07/6-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/07/7-7.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2022/07/0-11.jpeg', 'https://inmobiliarianoguera.com/property/duplex-en-el-valle/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('solar-urbano-en-canada-rosal-con-luz-y-agua', 'solar-urbano-en-canada-rosal-con-luz-y-agua', 'Solar urbano en cañada rosal', '', '???? EXCLUSIVIDAD ???? ???? SOLAR URBANO EN CAÑADA DEL ROSAL,CON POSIBLIDAD DE LUZ+AGUA ???? ???? PRECIO: 26.700€ ???? ✅ Inmobiliaria Noguera vende solar en Cañada Rosal y cuenta con una superficie total de 150 m². Es un terreno edificable, y se encuentra en una zona urbanizada. ✅ No dudes en aprovechar esta increíble oportunidad para construir la propiedad de tus sueños en un entorno privilegiado. ❌ CON POSIBLIDAD DE LUZ+AGUA ❌ ✅ El solar cuenta con 150m2 de extensión solar. ✅ Excelente ubicación ✅ A 5 minutos de Écija ✅ Ideal para construir la vivienda que estabas esperando ➡ Ref.:8341 ???? PRECIO: 26.700€ ???? Para más información no dude en contactar con nosotros: www.inmobiliarianoguera.com info@inmobiliarianoguera.com 95 590 07 48 / 653 855 641 #inmobiliarianoguera #casasconpiscina #Luisiana #ecija #idealista #fotocasa #inmobiliaria #inversion # #OPORTUNIDAD @seguidores',
  'venta', 'solar', 26700, 'Écija', 'Sevilla', 'CAÑADA ROSAL', 'Écija',
  null, null, null, 150,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/07/0-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/07/1-7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/07/2.png','https://inmobiliarianoguera.com/wp-content/uploads/2024/07/3-5.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/07/0-4.jpg', 'https://inmobiliarianoguera.com/property/solar-urbano-en-canada-rosal-con-luz-y-agua/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('piso-de-dos-dormitorios-en-el-centro-de-ecijasevilla', 'piso-de-dos-dormitorios-en-el-centro-de-ecijasevilla', 'Piso de dos dormitorios en el centro de Écija(Sevilla)', '', 'ATENCION INVERSORES, VIVIENDA CON INQULINO',
  'venta', 'piso', 140000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  2, 1, 70, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/03/Imagen-de-WhatsApp-2024-09-25-a-las-16.55.23_39716734.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/IMG-20240926-WA0005.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/IMG-20240926-WA0006.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/IMG-20240926-WA0007.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/IMG-20240926-WA0008.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/IMG-20240926-WA0010.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/IMG-20240926-WA0011.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/IMG-20240926-WA0012.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/IMG-20240926-WA0013.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/IMG-20240926-WA0014.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/IMG-20240926-WA0015.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/IMG-20240926-WA0016.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/IMG-20240926-WA0017.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/IMG-20240926-WA0018.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/IMG-20240926-WA0019.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/03/Imagen-de-WhatsApp-2024-09-25-a-las-16.55.23_39716734.jpg', 'https://inmobiliarianoguera.com/property/piso-de-dos-dormitorios-en-el-centro-de-ecijasevilla/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('piso-totalmente-reformado-en-ecija', 'piso-totalmente-reformado-en-ecija', 'Piso totalmente reformado en Écija', '', 'EXCLUSIVIDAD',
  'venta', 'piso', 88000, 'Écija', 'Sevilla', 'ECIJA', 'Écija',
  3, 1, 75, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/07/1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/13.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/14.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/15.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/16.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/17.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/18.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/19.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/20.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/21.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/22.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/23.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/24.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/25.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/26.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/27.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/28.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/29.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/30.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/07/1.jpeg', 'https://inmobiliarianoguera.com/property/piso-totalmente-reformado-en-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-a-diez-minutos-de-ecija-sevilla', 'casa-a-diez-minutos-de-ecija-sevilla', 'Casa + local a diez minutos de Écija, Sevilla', '', 'EXCLUSIVIDAD Precio: 129.500€',
  'venta', 'casa', 129500, 'Écija', 'Sevilla', 'Écija', 'Écija',
  4, 1, 180, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/07/1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/12.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/13.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/14.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/07/1.jpg', 'https://inmobiliarianoguera.com/property/casa-a-diez-minutos-de-ecija-sevilla/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('local-comercial-en-ecija', 'local-comercial-en-ecija', 'Local comercial en Écija', '', 'EXCLUSIVIDAD BAJADA DE PRECIO PRECIO: 44.000€',
  'venta', 'local', 44000, 'Écija', 'Sevilla', 'ECIJA', 'Écija',
  null, 1, 36, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/07/1-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/2-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/3-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/4-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/5-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/6-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/7-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/8-1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/07/1-1.jpg', 'https://inmobiliarianoguera.com/property/local-comercial-en-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('local-en-zona-la-algodonera-ecija-sevilla', 'local-en-zona-la-algodonera-ecija-sevilla', 'Local en zona la algodonera Écija (Sevilla)', '', 'EXCLUSIVIDAD PRECIO: 149.250€',
  'venta', 'local', 129250, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, 2, 142, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/07/WhatsApp-Image-2026-07-07-at-21.38.22.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/WhatsApp-Image-2026-07-07-at-21.38.23-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/WhatsApp-Image-2026-07-07-at-21.38.23-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/WhatsApp-Image-2026-07-07-at-21.38.23-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/WhatsApp-Image-2026-07-07-at-21.38.23-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/WhatsApp-Image-2026-07-07-at-21.38.23.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/WhatsApp-Image-2026-07-07-at-21.38.24-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/WhatsApp-Image-2026-07-07-at-21.38.24-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/WhatsApp-Image-2026-07-07-at-21.38.24.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/07/WhatsApp-Image-2026-07-07-at-21.38.22.jpeg', 'https://inmobiliarianoguera.com/property/local-en-zona-la-algodonera-ecija-sevilla/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('plaza-de-garaje-cerrada-en-zona-puerta-palma-sevilla', 'plaza-de-garaje-cerrada-en-zona-puerta-palma-sevilla', 'Plaza de garaje cerrada en zona puerta palma (Sevilla)', '', 'EXCLUSIVIDAD Precio: 15.000€',
  'venta', 'garaje', 15000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, 22, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/07/738523450_1331806639089055_7144547876840697521_n.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/ChatGPT-Image-10-jul-2026-11_18_55.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/07/738523450_1331806639089055_7144547876840697521_n.jpg', 'https://inmobiliarianoguera.com/property/%f0%9f%93%8d-plaza-de-garaje-cerrada-en-zona-puerta-palma-sevilla-%f0%9f%93%8d/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('venta-de-solar-en-zona-centro-ecija-sevilla', 'venta-de-solar-en-zona-centro-ecija-sevilla', 'Venta de solar en zona centro, Écija (Sevilla)', '', '💥 EXCLUSIVIDAD 💥💷 Precio: 83.000 € 💷 📍 VENTA DE SOLAR EN ZONA CENTRO, ÉCIJA (SEVILLA) 📍 ✅ Inmobiliaria Noguera vende solar situado en la zona centro de Écija, en una ubicación céntrica y con todos los servicios cercanos. ✅ Ideal para construir la vivienda que siempre has imaginado o como oportunidad de inversión, sujeto a la normativa urbanística correspondiente. ✅ Este solar cuenta con una superficie de 210 m² aproximadamente. ✅ Por privacidad, la calle exacta no se publica. Para más información sobre la ubicación, las condiciones urbanísticas o para agendar una visita, ¡contáctanos! ▶️ Ref.: 8208 💷 Precio: 83.000 € 💷 Para más información no dude en contactar con nosotros: 95 590 07 48/ 653 855 641 www.inmobiliarianoguera.com info@inmobiliarianoguera.com *******En cumplimiento del Decreto de la Junta de Andalucía 218/2005 del 11 de Octubre, el Impuesto de Transmisiones Patrimoniales ó IVA, los gastos de Notaría y Registro regulados por arancel no están incluidos en el precio. Los honorarios profesionales de la Agencia no están incluidos. Validez de precios 7 días, sujeto a disponibilidades y confirmación por propietarios. Se considera que la descripción y los precios indicados para las propiedades a la venta en este sitio web son correctos. No obstante, la información que contiene esta página puede ser sujeta a errores u omisiones. Las propiedades pueden ser sujetas a cambio de precio, venta o retirada del mercado #inmobiliarianoguera #pisosenecija #casasconpatio #casasbonitas #ecija #idealista #fotocasa #inmobiliaria #pisosconterraza #inversion #OportunidadesInmobiliarias',
  'venta', 'solar', 83000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, null, 210,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/07/0-6a50c89dbdf82.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/1-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/2-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/3-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/4-1.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/07/0-6a50c89dbdf82.jpg', 'https://inmobiliarianoguera.com/property/%f0%9f%93%8d-venta-de-solar-en-zona-centro-ecija-sevilla-%f0%9f%93%8d/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('piso-en-venta-en-zona-los-miradores-ecija-sevilla', 'piso-en-venta-en-zona-los-miradores-ecija-sevilla', 'Piso en venta en zona los miradores, Écija (Sevilla)', '', 'EXCLUSIVIDAD Precio: 130.000€',
  'venta', 'piso', 130000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  3, 2, 92, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/07/1-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/2.1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/2-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/3-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/4-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/5-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/6-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/7-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/8-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/9-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/10-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/11-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/12-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/13-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/14-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/15-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/16-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/17-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/18.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/19.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/20.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/21-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/22-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/23-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/24-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/25-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/26-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/27-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/28-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/29-1.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/07/1-2.jpeg', 'https://inmobiliarianoguera.com/property/%f0%9f%93%8d-piso-en-venta-en-zona-los-miradores-ecija-sevilla-%f0%9f%93%8d/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('local-en-venta-en-zona-las-huertas-ecija', 'local-en-venta-en-zona-las-huertas-ecija', 'Local en venta en zona las huertas, Écija', '', '✴️EXCLUSIVIDAD✴️ ✅Local en venta en zona las huertas, Écija (Sevilla)✅ 💷Precio de venta: 68.000€💷 ▶️Se vende local comercial en Écija, situado en zona muy demandada. Cuenta con una superficie de 74m2 y se encuentra en buen estado. Ubicado en una zona comercial y transitable de Écija, este local ofrece una excelente oportunidad para establecer tu negocio. ¡No pierdas la oportunidad de adquirir este espacio y dar vida a tus proyectos comerciales! ✅OBSERVACIONES: Local dividido en dos, con amplio escaparate y dos puertas. Mejor visitar. ➡Ref.: 8489 💷Precio de venta: 68.000€💷 Para más información no dude en contactar con nosotros: www.inmobiliarianoguera.com info@inmobiliarianoguera.com *******En cumplimiento del Decreto de la Junta de Andalucía 218/2005 del 11 de Octubre, el Impuesto de Transmisiones Patrimoniales ó IVA, los gastos de Notaría y Registro regulados por arancel no están incluidos en el precio. Los honorarios profesionales de la Agencia no están incluidos. Validez de precios 7 días, sujeto a disponibilidades y confirmación por propietarios. Se considera que la descripción y los precios indicados para las propiedades a la venta en este sitio web son correctos. No obstante, la información que contiene esta página puede ser sujeta a errores u omisiones. Las propiedades pueden ser sujetas a cambio de precio, venta o retirada del mercado #inmobiliarianoguera #pisosenecija #casasconpatio #casasbonitas #ecija #idealista #fotocasa #inmobiliaria #pisosconterraza #inversion #oportunidadobservaciones',
  'venta', 'local', 68000, 'Écija', 'Sevilla', 'venta en zona las huertas, Écija', 'Écija',
  null, 1, 74, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/04/1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/4.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/04/1.jpeg', 'https://inmobiliarianoguera.com/property/local-en-venta-en-zona-las-huertas-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('piso-en-planta-baja-en-zona-centro-ecija-sevilla', 'piso-en-planta-baja-en-zona-centro-ecija-sevilla', 'Piso en planta baja en zona centro (Écija, Sevilla)', '', 'EXCLUSIVIDAD',
  'venta', 'piso', 157000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  3, 2, 130, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/07/2-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/3-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/4-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/5-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/6-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/7-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/8-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/9-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/10-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/11-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/12-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/13-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/14-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/15-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/16-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/17-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/18-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/19-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/1-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/20-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/21-2.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/07/2-3.jpeg', 'https://inmobiliarianoguera.com/property/piso-en-planta-baja-en-zona-centro-ecija-sevilla/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('nave-cocheron-con-gran-patio-en-ecija-sevilla', 'nave-cocheron-con-gran-patio-en-ecija-sevilla', 'Nave/cocherón con gran patio en (Écija, Sevilla)', '', 'EXCLUSIVIDAD',
  'venta', 'nave', 160000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, 550, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/07/1-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/2-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/3-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/4-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/5-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/6-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/7-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/8-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/9-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/10-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/11-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/12-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/13-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/14-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/15-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/16-3.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/07/1-4.jpeg', 'https://inmobiliarianoguera.com/property/nave-cocheron-con-gran-patio-en-ecija-sevilla/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('piso-totalmente-reformado-en-zona-cercana-al-puente-ecija-sevilla', 'piso-totalmente-reformado-en-zona-cercana-al-puente-ecija-sevilla', 'Piso totalmente reformado en zona cercana al puente. Écija (Sevilla)', '', 'EXCLUSIVIDAD 162.000€',
  'venta', 'piso', 162000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  3, 1, 90, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/2-10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/3-10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/4-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/5-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/6-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/7-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/8-10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/9-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/10-10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/11-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/12-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/13-10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/14-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/15-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/16-1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1-11.jpeg', 'https://inmobiliarianoguera.com/property/piso-totalmente-reformado-en-zona-cercana-al-puente-ecija-sevilla/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-totalmente-reformada-en-la-luisiana', 'casa-totalmente-reformada-en-la-luisiana', 'Casa totalmente reformada en la luisiana', '', 'EXCLUSIVIDAD',
  'venta', 'casa', 180000, 'Écija', 'Sevilla', 'LA LUISIANA', 'Écija',
  4, 4, 213, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/12/5-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/6-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/8-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/13.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/14.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/15.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/16.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/17.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/18.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/19.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/20.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/21.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/22.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/23.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/24.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/25.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/26.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/27.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/28.1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/28.2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/28.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/12/5-1.jpeg', 'https://inmobiliarianoguera.com/property/%f0%9f%93%8d-casa-totalmente-reformada-en-la-luisiana-%f0%9f%93%8d/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('venta-de-garaje-en-zona-centro-ecija-sevilla', 'venta-de-garaje-en-zona-centro-ecija-sevilla', 'Venta de garaje en zona centro, Écija (Sevilla)', '', 'Precio: 37.000€',
  'venta', 'garaje', 37000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, 28, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/07/0-6a6ce1c655f8a.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/ChatGPT-Image-24-jul-2026-17_55_47.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/ChatGPT-Image-24-jul-2026-17_58_27.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/07/0-6a6ce1c655f8a.jpg', 'https://inmobiliarianoguera.com/property/venta-de-garaje-en-zona-centro-ecija-sevilla/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-para-reformar-en-pleno-centro-de-ecija-sevilla', 'casa-para-reformar-en-pleno-centro-de-ecija-sevilla', 'Casa para reformar en pleno centro de Écija, Sevilla)', '', 'BAJADA DE PRECIO',
  'venta', 'casa_reformar', 110000, 'Écija', 'Sevilla', 'PLENO CENTRO DE ECIJA, SEVILLA)', 'Écija',
  null, null, 330, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/12/1913b0dc-2893-4d57-8d10-731e12b3697f.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/84f76989-0f94-4403-9240-8ed25b9733be.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/126f9800-bdb9-4bdc-bf3b-b2bbc2a85928.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/52fed61c-380f-4c63-ab44-cb10c5552a81.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/1a77f070-9e04-4563-8bad-b5d6af4e6bc0.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/1c70bf34-fbd9-4d91-b268-3ce1669b5d4d.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/9e16e352-a4eb-49e6-a317-6472108dc168.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/01071867-adc3-47ea-9511-3c2aab036f3e.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/12/1913b0dc-2893-4d57-8d10-731e12b3697f.jpg', 'https://inmobiliarianoguera.com/property/casa-para-reformar-en-pleno-centro-de-ecija-sevilla/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('chalet-con-terreno-de-olivar-en-los-algarbes', 'chalet-con-terreno-de-olivar-en-los-algarbes', 'Chalet con terreno de olivar en Los Algarbes', '', 'CHALET EN LOS ALGARBES, CON TERRENO DE OLIVAR',
  'venta', 'chalet', 350000, 'Écija', 'Sevilla', 'Los Algarbes', 'Écija',
  4, 2, 9100, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2022/06/000.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/06/00-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/06/2-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/06/7-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/06/10-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/06/15.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/06/19.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2022/06/000.jpeg', 'https://inmobiliarianoguera.com/property/chalet-con-terreno-de-olivar-en-los-algarbes/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-en-calle-cipres-proximo-a-calle-cordoba-ecija-sevilla', 'casa-en-calle-cipres-proximo-a-calle-cordoba-ecija-sevilla', 'Casa en calle ciprés - próximo a calle córdoba, Écija (Sevilla)', '', 'EXCLUSIVIDAD',
  'venta', 'casa', 125000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  3, 2, 120, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/08/1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/2.1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/13.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/16.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/17.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/20.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/21.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/23.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/24.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/25.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/26.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/27.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/28.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/29.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/30.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/31.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/32.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/33.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/34.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/35.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/08/36.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/08/1.jpeg', 'https://inmobiliarianoguera.com/property/casa-en-calle-cipres-proximo-a-calle-cordoba-ecija-sevilla/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, short_description = excluded.short_description,
  description = excluded.description, price = excluded.price,
  operation = excluded.operation, property_type = excluded.property_type,
  zone = excluded.zone, bedrooms = excluded.bedrooms, bathrooms = excluded.bathrooms,
  area = excluded.area, plot_area = excluded.plot_area,
  features = excluded.features, images = excluded.images,
  image_fallback = excluded.image_fallback, availability = excluded.availability,
  updated_at = now();
commit;
