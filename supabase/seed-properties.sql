-- Carga de la cartera de Inmobiliaria Noguera
-- Generado desde inmobiliarianoguera.com (su propio sitio; robots.txt lo permite).
-- Ejecutar en Supabase > SQL Editor DESPUÉS de schema.sql
begin;
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('4205', 'piso-en-zona-centro-ref-4205', 'Piso en zona centro', '', 'Amplio piso en zona centro con calidades de lujo. Tiene una Superficie construida de 270 m², 4 habitaciones (1 doble, 3 individuales), 4 baños, cocina amueblada con electrodomésticos, lavadero, comedor, Patio interior, trastero, suelos de parket, garaje, ascensor, calefacción, agua, luz, aire acondicionado, todo exterior, balcón, Reformado en 2012; Persianas automáticas; Placas solares; Vestidor en 2 dormitorios....',
  'venta', 'piso', 590000, 'Écija', 'Sevilla', 'centro', 'Écija',
  4, 4, 270, null,
  ARRAY['Aire acondicionado','Terraza','Cocina-comedor','Armarios empotrados','Ascensor','Renta Libre','Electrodomésticos']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/07/11.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/07/11.jpeg', 'https://inmobiliarianoguera.com/property/piso-en-zona-centro-ref-4205/',
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
 values ('208', 'local-en-el-balcon-de-ecija-ref-208', 'Local en el Balcon de Écija', '', 'LOCAL NUEVO ARREGLADO CON FACHADA DE 15 M2, ORIENTADO A 2 CALLES. TAMBIEN EN VENTA.',
  'venta', 'local', 153000, 'Écija', 'Sevilla', 'El Balcon de Écija', 'Écija',
  null, 1, 142, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2014/12/208_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2014/12/208_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2014/12/208_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2014/12/208_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2014/12/208_5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2014/12/208_6.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2014/12/208_1.jpg', 'https://inmobiliarianoguera.com/property/local-en-el-balcon-de-ecija-ref-208/',
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
 values ('5027', 'solar-en-zona-carroyo-ref-5027', 'Solar en zona C/Arroyo', '', 'Solar en zona Calle Arroyo con 153 m² de solar.',
  'venta', 'solar', 94000, 'Écija', 'Sevilla', 'C/Arroyo', 'Écija',
  null, null, null, 153,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/08/5027_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/08/5027_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/08/5027_2.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/08/5027_3.jpg', 'https://inmobiliarianoguera.com/property/solar-en-zona-carroyo-ref-5027/',
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
 values ('4913', 'local-en-sor-angela-ref-4913', 'Local en Sor Ángela', '', 'Local en zona Sor Ángela de la Cruz con una Superficie de 118 m²',
  'alquiler', 'local', 500, 'Écija', 'Sevilla', 'Sor Ángela', 'Écija',
  null, null, 118, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/08/4913_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/08/4913_1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/08/4913_2.jpg', 'https://inmobiliarianoguera.com/property/local-en-sor-angela-ref-4913/',
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
 values ('392', 'nave-en-pol-el-limero-ref-392', 'Nave en Pol. El Limero', '', 'Superf. 440 m², aire acondicionado, NAVE CON 200 M2 DE PATIO, ACONDICIONADA PARA SALON DE BODA..',
  'venta', 'nave', 371000, 'Écija', 'Sevilla', 'Pol. El Limero', 'Écija',
  null, 1, 440, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2014/12/El-Limero.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2014/12/El-Limero.jpg', 'https://inmobiliarianoguera.com/property/nave-en-pol-el-limero-ref-392/',
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
 values ('1543', 'nave-en-sedesa-ref-1543', 'Nave en Sedesa', '', 'Nave con 270m2 en Sedesa',
  'venta', 'nave', 104000, 'Écija', 'Sevilla', 'Sedesa', 'Écija',
  null, null, 270, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2015/01/1543_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/01/1543_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/01/1543_3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2015/01/1543_1.jpg', 'https://inmobiliarianoguera.com/property/nave-en-sedesa-ref-1543/',
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
 values ('2414', 'nave-en-sedesa-ref-2414', 'Nave en Sedesa', '', 'Superficie de 429 m² y 1 aseo,',
  'venta', 'nave', 124500, 'Écija', 'Sevilla', 'Sedesa', 'Écija',
  null, 1, 393, null,
  ARRAY['Terraza']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2015/01/2414_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/01/2414_2.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2015/01/2414_1.jpg', 'https://inmobiliarianoguera.com/property/nave-en-sedesa-ref-2414/',
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
 values ('3974', 'nave-en-ctra-la-rambla-ref-3974', 'Nave en Ctra. La Rambla', '', 'Nave en Carretera de la Rambla-Montalban con una Superficie de 2800 m², dos baños, amplio escaparate, zona de aparcamiento privado',
  'alquiler', 'nave', 2500, 'Écija', 'Sevilla', 'Ctra. La Rambla', 'Écija',
  null, 2, 2800, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2015/01/3974_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/01/3974_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/01/3974_3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2015/01/3974_1.jpg', 'https://inmobiliarianoguera.com/property/nave-en-ctra-la-rambla-ref-3974/',
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
 values ('3989', 'nave-en-zona-avda-emigrantes-ref-3989', 'Nave en zona Avda. Emigrantes', '', 'Nave en zona Avenida de los Emigrantes, con 250m2 y un aseo.',
  'venta', 'nave', 155250, 'Écija', 'Sevilla', 'Avda. Emigrantes', 'Écija',
  null, 1, 250, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2015/01/3989_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/01/3989_1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2015/01/3989_2.jpg', 'https://inmobiliarianoguera.com/property/nave-en-zona-avda-emigrantes-ref-3989/',
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
 values ('2764', 'local-en-crta-canada-ref-2764', 'Local en Crta. Cañada', '', 'Local en carretera de Cañada del Rosal, con una superficie de 100m2, con aseo, luz y agua, acondicionado para bar.',
  'alquiler', 'local', 580, 'Écija', 'Sevilla', 'Crta. Cañada', 'Écija',
  null, 1, 100, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2015/03/2764_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/03/2764_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/03/2764_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/03/2764_3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2015/03/2764_4.jpg', 'https://inmobiliarianoguera.com/property/local-en-crta-canada-ref-2764/',
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
 values ('4132', 'piso-en-zona-centro-ref-4132', 'Piso en zona Centro', '', 'Piso en zona centro, con una Superficie de 183 m² construidos, 4 habitaciones (1 doble, 3 individuales), 2 baños, 2 balcones, garaje, ascensor...',
  'venta', 'piso', 281190, 'Écija', 'Sevilla', 'Centro', 'Écija',
  3, 2, 183, null,
  ARRAY['Balcón','Ascensor','Renta Libre']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/07/11.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/07/11.jpeg', 'https://inmobiliarianoguera.com/property/piso-en-zona-centro-ref-4132/',
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
 values ('4152', 'nave-en-lora-del-rio-ref-4152', 'Nave en Lora del Rio', '', 'Nave en Lora del Rio, con una Superficie de 2150 m², divisible, oficina, puente grua de 5 toneladas... Posibilidad de venta en 1.100m2 o 950m2',
  'venta', 'nave', 160000, 'Écija', 'Sevilla', 'Lora del Rio', 'Écija',
  null, 1, 2150, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/07/1-4.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/07/1-4.jpeg', 'https://inmobiliarianoguera.com/property/nave-en-lora-del-rio-ref-4152/',
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
 values ('5152', 'piso-en-zona-centro-ref-5152', 'Piso en zona centro', '', 'Piso en primera planta en zona centro. Tiene una Superficie de 90 m², 3 habitaciones (1 doble, 2 individuales), 1 baño, 1 aseo, cocina, balcón...',
  'venta', 'piso', 94000, 'Écija', 'Sevilla', 'centro', 'Écija',
  3, 2, 90, null,
  ARRAY['Balcón','Renta Libre']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5152_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5152_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5152_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5152_3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5152_4.jpg', 'https://inmobiliarianoguera.com/property/piso-en-zona-centro-ref-5152/',
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
 values ('5157', 'local-en-canada-del-rosal-ref-5157', 'Local en cañada del Rosal', '', 'Local en cañada del Rosal con una Superficie de 35 m², 1 aseo, 2 escaparates, aire acondicionado...',
  'alquiler', 'local', 250, 'Écija', 'Sevilla', 'cañada del Rosal', 'Écija',
  null, 1, 35, null,
  ARRAY['Aire acondicionado']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5157_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5157_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5157_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5157_3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5157_4.jpg', 'https://inmobiliarianoguera.com/property/local-en-canada-del-rosal-ref-5157/',
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
 values ('4298', 'nave-en-la-luisiana-ref-4298', 'Nave en La Luisiana', '', 'Dos naves unidas, cada una con una Superficie de 265 m² en la Luisiana',
  'venta', 'nave', 89000, 'Écija', 'Sevilla', 'La Luisiana', 'Écija',
  null, null, 265, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/07/1-4.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/07/1-4.jpeg', 'https://inmobiliarianoguera.com/property/nave-en-la-luisiana-ref-4298/',
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
 values ('4366', 'local-en-zona-puerta-cerrada-ref-4366', 'Local en zona Puerta Cerrada', '', 'Local cerca de Puerta Cerrada, con una Superficie de 180 m², dividido en varias salas. Dispone de aire acondicionado y amplio escaparate.',
  'alquiler', 'local', 650, 'Écija', 'Sevilla', 'Puerta Cerrada', 'Écija',
  5, 1, 180, null,
  ARRAY['Aire acondicionado','Terraza']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2015/10/4366_5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/10/4366_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/10/4366_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/10/4366_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/10/4366_4.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2015/10/4366_5.jpg', 'https://inmobiliarianoguera.com/property/local-en-zona-puerta-cerrada-ref-4366/',
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
 values ('4383', 'casa-en-fuente-palmera-ref-4383', 'Casa en Fuente Palmera', '', 'Casa de una planta en fuente palmera, con una Superficie de119 m², 4 habitaciones (1 doble, 3 individuales), 1 baño, 1 aseo, cocina, lavadero, comedor, terraza (Patio), calefacción, año construcción 2005, chimenea, aire acondicionado. En la planta de arriba azotea, habitación y aseo.',
  'venta', 'casa', 88000, 'Écija', 'Sevilla', 'Fuente Palmera', 'Écija',
  4, 2, 119, null,
  ARRAY['Aire acondicionado','Terraza','Cocina amueblada','Renta Libre','Chimenea']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4383_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4383_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4383_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4383_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4383_5.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4383_1.jpg', 'https://inmobiliarianoguera.com/property/casa-en-fuente-palmera-ref-4383/',
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
 values ('4437', 'local-en-la-campina-ref-4437', 'Local en la Campiña', '', 'Amplio local en la Campiña, con visibilidad desde autovía. Tiene una Superficie de 125 m², 4 salas, escaparate, dos baños (uno de ellos adaptado a minusválidos), amplio escaparate y zona de aparcamiento privado.',
  'alquiler', 'local', 900, 'Écija', 'Sevilla', 'la Campiña', 'Écija',
  4, 2, 125, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4437_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4437_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4437_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4437_3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4437_4.jpg', 'https://inmobiliarianoguera.com/property/local-en-la-campina-ref-4437/',
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
 values ('4403', 'casa-en-la-montiela-ref-4403', 'Casa en la Montiela', '', 'Casa en la Montiela, con una Superficie de 150 m², 5 habitaciones (1 doble, 4 individuales), 2 baños, cocina amueblada, lavadero, Patio, garaje para dos coches, aire acondicionado...',
  'venta', 'casa', 120000, 'Écija', 'Sevilla', 'la Montiela', 'Écija',
  5, 2, 150, null,
  ARRAY['Aire acondicionado','Terraza','Renta Libre']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4403_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4403_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4403_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4403_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4403_5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4403_6.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4403_1.jpg', 'https://inmobiliarianoguera.com/property/casa-en-la-montiela-ref-4403/',
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
 values ('4577', 'local-en-avda-del-genil-ref-4577', 'Local en Avda. del Genil', '', 'Local con 60m2 en avenida del genil, con parte de oficina y de trastero',
  'alquiler', 'local', 550, 'Écija', 'Sevilla', 'Avda. del Genil', 'Écija',
  null, null, 60, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4577_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4577_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4577_1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4577_2.jpg', 'https://inmobiliarianoguera.com/property/local-en-avda-del-genil-ref-4577/',
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
 values ('4405', 'nave-en-poligono-el-barrero-ref-4405', 'Nave en Polígono el Barrero', '', 'Nave en Poligono el Barrero, con una Superficie de 300 m². Nave ideal para exposición, distribuida en dos plantas.',
  'alquiler', 'nave', 450, 'Écija', 'Sevilla', 'Polígono el Barrero', 'Écija',
  null, 1, 300, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2015/12/4405_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/12/4405_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/12/4405_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/12/4405_4.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2015/12/4405_1.jpg', 'https://inmobiliarianoguera.com/property/nave-en-poligono-el-barrero-ref-4405/',
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
 values ('4435', 'local-en-zona-centro-ref-4435', 'Local en zona centro', '', 'Local en bruto en pleno centro de écija. Tiene una Superficie total de 260 m². Posibilidad de venta (consultar precio)',
  'alquiler', 'local', 2500, 'Écija', 'Sevilla', 'centro', 'Écija',
  null, null, 260, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2015/12/4435_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/12/4435_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/12/4435_2.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2015/12/4435_1.jpg', 'https://inmobiliarianoguera.com/property/local-en-zona-centro-ref-4435/',
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
 values ('4504', 'local-comercial-en-ronda-san-agustin-ref4504', 'Local Comercial en Ronda San Agustin', '', 'Local comercial en bruto de una superficie de 94m2,',
  'alquiler', 'local', 300, 'Écija', 'Sevilla', 'Ronda San Agustin', 'Écija',
  null, null, 94, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/03/4504_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/03/4504_2.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/03/4504_1.jpg', 'https://inmobiliarianoguera.com/property/local-comercial-en-ronda-san-agustin-ref4504/',
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
 values ('4564', 'casa-en-zona-merinos-ref-4564', 'Casa en zona Merinos', '', 'Casa en venta en zona Merinos con una superficie de 90m2, 3 habitaciones, 1 baño, cocina amueblada, 2 patios, uno de 15m2 y una azotea de 70m2, aire acondicionado, garaje de 25m2, vivienda de Renta Libre.',
  'venta', 'casa', 166000, 'Écija', 'Sevilla', 'Merinos', 'Écija',
  3, 1, 90, null,
  ARRAY['Aire acondicionado','Cocina amueblada','Patio cerrado','Renta Libre']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/03/4564_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/03/4564_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/03/4564_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/03/4564_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/03/4564_5.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/03/4564_1.jpg', 'https://inmobiliarianoguera.com/property/casa-en-zona-merinos-ref-4564/',
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
 values ('2383', 'nave-en-la-campina-ref-2383', 'Nave en la campiña', '', 'Nave en Polígono Industrial La Campiña Superficie útil de 1.150m2, 3 muelles de carga, oficina, aseo, porche...',
  'venta', 'nave', 232000, 'Écija', 'Sevilla', 'la campiña', 'Écija',
  1, 1, 1150, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/07/2383_5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/07/2383_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/07/2383_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/07/2383_4.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/07/2383_5.jpg', 'https://inmobiliarianoguera.com/property/nave-en-la-campina-ref-2383/',
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
 values ('5229', 'local-en-ccarmen-ref-5229', 'Local en C/Carmen', '', 'Local con una Superficie de 22 m², 1 aseo, escaparate, agua (Incluida), aire acondicionado...',
  'alquiler', 'local', 300, 'Écija', 'Sevilla', 'C/Carmen', 'Écija',
  null, 1, 22, null,
  ARRAY['Aire acondicionado']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5229_5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5229_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5229_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5229_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5229_4.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5229_5.jpg', 'https://inmobiliarianoguera.com/property/local-en-ccarmen-ref-5229/',
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
 values ('5253', 'local-en-zona-la-doma-ref-5253', 'Local en zona La Doma', '', 'Local en zona La Doma con una Superficie de 60 m² , 1 aseo, agua, aire acondicionado...',
  'alquiler', 'local', 300, 'Écija', 'Sevilla', 'La Doma', 'Écija',
  null, 1, 60, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5253_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5253_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5253_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5253_3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5253_4.jpg', 'https://inmobiliarianoguera.com/property/local-en-zona-la-doma-ref-5253/',
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
 values ('4944', 'casa-en-la-lantejuela-ref-4944', 'Casa en la Lantejuela', '', 'Casa con una Superficie de 230 m², 4 habitaciones (2 dobles, 2 individuales), 1 baño, 1 aseo, cocina amueblada, lavadero, comedor, azotea de 80m2, aire acondicionado...',
  'venta', 'casa', 65000, 'Écija', 'Sevilla', 'la Lantejuela', 'Écija',
  4, 2, 230, null,
  ARRAY['Aire acondicionado','Terraza','Cocina amueblada','Lavadero']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/08/4944_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/08/4944_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/08/4944_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/08/4944_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/08/4944_5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/08/4944_6.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/08/4944_1.jpg', 'https://inmobiliarianoguera.com/property/casa-en-la-lantejuela-ref-4944/',
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
 values ('391', 'nave-en-pol-sedesa-ref-391', 'Nave en Pol. Sedesa', '', 'Superf. 943 m², NAVE CON 278 M2 DE PATIO.',
  'venta', 'nave', 562000, 'Écija', 'Sevilla', 'Pol. Sedesa', 'Écija',
  null, 1, 943, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2014/12/Poligono-Sedesa.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2014/12/391_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2014/12/391_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2014/12/392_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2014/12/392_4.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2014/12/Poligono-Sedesa.jpg', 'https://inmobiliarianoguera.com/property/nave-en-pol-sedesa-ref-391/',
  true, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
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
 values ('5397', 'local-en-maria-auxiliadora-ref-5397', 'Local en Maria Auxiliadora', '', 'Local en Avenida Maria Auxiliadora, con una Superficie de 250 m². Dispone de agua y luz...',
  'alquiler', 'local', 1000, 'Écija', 'Sevilla', 'Maria Auxiliadora', 'Écija',
  null, 1, 250, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2017/02/5397_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/02/5397_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/02/5397_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/02/5397_3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2017/02/5397_4.jpg', 'https://inmobiliarianoguera.com/property/local-en-maria-auxiliadora-ref-5397/',
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
 values ('5352', 'parcela-urbana-en-zona-del-matadero', 'Parcela urbana en zona del Matadero', '', 'Parcela urbana situada en la zona del Matadero con 1000 m² solar. Tiene casa con cocina-comedor, chimenea y un baño.',
  'venta', 'parcela_urbana', 124500, 'Écija', 'Sevilla', 'del Matadero', 'Écija',
  null, 1, null, 1000,
  ARRAY['Cocina-comedor','Chimenea']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5352_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5352_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5352_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5352_5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5352_6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5352_1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5352_2.jpg', 'https://inmobiliarianoguera.com/property/parcela-urbana-en-zona-del-matadero/',
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
 values ('5493', 'casa-en-la-zona-centro-ref-5493', 'Casa en la zona centro', '', 'Casa en la zona centro, planta baja y con una superficie de 210 m², 4 habitaciones (1 doble, 3 individuales), 3 baños, cocina, aire acondicionado. (Año de construcción en 1820)',
  'venta', 'casa', 257500, 'Écija', 'Sevilla', 'la zona centro', 'Écija',
  4, 3, 210, null,
  ARRAY['Aire acondicionado','Cocina']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5493_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5493_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5493_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5493_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5493_5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5493_6.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5493_1.jpg', 'https://inmobiliarianoguera.com/property/casa-en-la-zona-centro-ref-5493/',
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
 values ('5539', 'casa-en-zona-ronda-san-agustin-ref-5539', 'Casa en zona Ronda San Agustín', '', 'Casa con dos plantas y con una superficie de 406 m². Cuenta con 8 habitaciones (2 dobles, 6 individuales), 2 baños, cocina, terraza ( Patio de 100m2) y trastero. Cuenta con una nave al lado de la vivienda.',
  'venta', 'casa', 408570, 'Écija', 'Sevilla', 'Ronda San Agustín', 'Écija',
  8, 2, 406, null,
  ARRAY['Patio cerrado','Trastero']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5539_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5539_5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5539_6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5539_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5539_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5539_3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5539_4.jpg', 'https://inmobiliarianoguera.com/property/casa-en-zona-ronda-san-agustin-ref-5539/',
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
 values ('5549', 'parcela-rustica-en-zona-de-los-algarbes-ref-5549', 'Parcela rústica en zona de Los Algarbes', '', 'Parcela rústica con una superficie solar de 141460 m².',
  'venta', 'parcela_rustica', 508000, 'Écija', 'Sevilla', 'de Los Algarbes', 'Écija',
  null, null, null, 141460,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5549_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5549_2-2.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5549_1.jpg', 'https://inmobiliarianoguera.com/property/parcela-rustica-en-zona-de-los-algarbes-ref-5549/',
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
 values ('5514', 'local-comercial-en-avda-doctor-fleming-ref-5514', 'local comercial en Avda. Doctor Fleming', '', 'Local comercial con una superficie de 90 m², 90 m² solar. Local en bruto con Patio de 15m2..',
  'venta', 'local', 160000, 'Écija', 'Sevilla', 'Avda. Doctor Fleming', 'Écija',
  null, null, 90, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/07/WhatsApp-Image-2026-07-07-at-21.38.24.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/07/WhatsApp-Image-2026-07-07-at-21.38.24.jpeg', 'https://inmobiliarianoguera.com/property/local-comercial-en-avda-doctor-fleming-ref-5514/',
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
 values ('5633', 'solar-en-el-rubio-ref-5633', 'Solar en El Rubio', '', 'Solar con una superficie de 126 m² solar. Cuenta 7 metros de fachada y 18 metros de profundidad.',
  'venta', 'solar', 34000, 'Écija', 'Sevilla', 'El Rubio', 'Écija',
  null, null, null, 126,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2017/07/000_0006.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2017/07/000_0006.jpg', 'https://inmobiliarianoguera.com/property/solar-en-el-rubio-ref-5633/',
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
 values ('846', 'casa-en-canato-ref-846', 'Casa en Cañato', '', 'Superficie solar de223 m² para derribar',
  'venta', 'casa', 114500, 'Écija', 'Sevilla', 'Cañato', 'Écija',
  null, null, 284, null,
  ARRAY['Renta Libre']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/01/NO-FOTO.gif','https://inmobiliarianoguera.com/wp-content/uploads/2026/05/360_Snapshot-1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/01/NO-FOTO.gif', 'https://inmobiliarianoguera.com/property/casa-en-canato-ref-846/',
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
 values ('5686', 'casa-en-la-luisiana-ref-5686', 'Casa en la Luisiana', '', 'Casa en venta en la Luisiana de una planta de 120 m2, tiene 3 habitaciones, 1 baño, cocina, terraza y una azotea. RENTA LIBRE.',
  'venta', 'casa', 104000, 'Écija', 'Sevilla', 'la Luisiana', 'Écija',
  3, 1, 120, null,
  ARRAY['Comedor','Cocina','Renta Libre']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2017/09/5686.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/09/5686_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/09/5686_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/09/5686_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/09/5686_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/09/5686_5.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2017/09/5686.jpg', 'https://inmobiliarianoguera.com/property/casa-en-la-luisiana-ref-5686/',
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
 values ('6130', 'piso-con-local-en-la-luisiana-ref-6130', 'Piso con local en la Luisiana', '', 'Vivienda con local en planta baja en la Luisiana. Tiene una Superficie total de 213 m². La vivienda está compuesta por 4 habitaciones (1 doble, 3 individuales), 2 baños, garaje... Dispone de 3 plantas. Tiene placas solares.. El local mide 99m2 y dispone de aseos, está completamente adaptado a negocio.',
  'venta', 'piso', 200000, 'Écija', 'Sevilla', 'la Luisiana', 'Écija',
  4, 2, 114, null,
  ARRAY['Aire acondicionado','Terraza','Cocina amueblada','Renta Libre']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2018/03/6130_6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2018/03/6130_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2018/03/6130_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2018/03/6130_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2018/03/6130_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2018/03/6130_5.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2018/03/6130_6.jpg', 'https://inmobiliarianoguera.com/property/piso-con-local-en-la-luisiana-ref-6130/',
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
 values ('5462', 'casa-en-zona-carroyo-ref-5462', 'Casa en zona C/Arroyo', '', 'Casa en zona calle Arroyo, para hundir o rehabilitar, tiene una Superficie construida de 150 m² y 88 m² de solar.',
  'venta', 'casa', 58025, 'Écija', 'Sevilla', 'C/Arroyo', 'Écija',
  3, 2, 150, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2017/02/5462_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/02/5462_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/02/5462_3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2017/02/5462_1.jpg', 'https://inmobiliarianoguera.com/property/casa-en-zona-carroyo-ref-5462/',
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
 values ('522', 'parcela-rustica-ref-522', 'Parcela rústica', '', 'Parcela Rústica en Cañada del Rabadán con 8.000m2',
  'venta', 'parcela_rustica', 53025, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, null, 8000,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/08/522_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/08/522_1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/08/522_2.jpg', 'https://inmobiliarianoguera.com/property/parcela-rustica-ref-522/',
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
 values ('170', 'piso-en-zona-centro-ref-170', 'Piso en zona Centro', '', 'Superficie de 78 m², 3 habitaciones (1 doble, 2 individuales), 2 baños, cocina y comedor.',
  'venta', 'piso', 103025, 'Écija', 'Sevilla', 'Centro', 'Écija',
  3, 2, 78.3, null,
  ARRAY['Comedor','VPO']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2014/12/170_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2014/12/170_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2014/12/170_4.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2014/12/170_2.jpg', 'https://inmobiliarianoguera.com/property/piso-en-zona-centro-ref-170/',
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
 values ('3548', 'local-en-el-balcon-de-ecija-ref-3548', 'Local en el Balcon de Écija', '', 'Superficie de 52 m², con 2 escaparates haciendo esquina totalmente arreglado haciendo esquina.',
  'alquiler', 'local', 300, 'Écija', 'Sevilla', 'El Balcon de Écija', 'Écija',
  null, 1, 52, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2015/01/3548_1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2015/01/3548_1.jpg', 'https://inmobiliarianoguera.com/property/local-en-el-balcon-de-ecija-ref-3548/',
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
 values ('4176', 'casa-en-zona-el-matadero-ref-4176', 'Casa en zona el Matadero', '', 'Casa en zona El matadero, con dos plantas y azotea. Casa con tres plantas de 113m2 cada una, la planta baja es un local con baño, la segunda es vivienda y la tercera azotea. Tiene 3 dormitorios, 2 baños, cocina amueblada y salón. Renta libre. Dispone de placas solares',
  'venta', 'casa', 186000, 'Écija', 'Sevilla', 'El Matadero', 'Écija',
  3, 2, 240, null,
  ARRAY['Aire acondicionado','Terraza','Renta Libre','Chimenea']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/07/1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/07/1.jpg', 'https://inmobiliarianoguera.com/property/casa-en-zona-el-matadero-ref-4176/',
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
 values ('5256', 'local-en-zona-el-valle-ref-5256', 'Local en zona el Valle', '', 'Local en zona El valle, cercano a nuevos residenciales. Tiene una Superficie de 133 m², 3 aseos, escaparate, agua, luz, aire acondicionado... Posibilidad de venta de mobiliario y maquinas',
  'venta', 'local', 104000, 'Écija', 'Sevilla', 'El Valle', 'Écija',
  1, 2, 133, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5256.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5256_1-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5256_2-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5256_3-1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5256.jpg', 'https://inmobiliarianoguera.com/property/local-en-zona-el-valle-ref-5256/',
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
 values ('6926', 'piso-en-zona-el-valle-ref-6926', 'Piso en zona el Valle', '', 'Piso en zona El Valle. El piso está compuesto por amplio recibidor, cocina amueblada y dotada de electrodomésticos, precioso salón , tres dormitorios, un cuarto de baño completo y un aseo. También dispone de plaza de garaje y trastero. OBSERVACIONES: Vivienda de Protección Oficial. El piso se ha reformado con las mas altas calidades en materiales de construcción. Muy luminoso y tranquilo. Edificio con ascensor.',
  'venta', 'piso', 75000, 'Écija', 'Sevilla', 'El Valle', 'Écija',
  3, 2, 75, null,
  ARRAY['Aire acondicionado','Cocina amueblada','Ascensor','VPO']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2019/03/6926_4-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2019/03/6926_5-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2019/03/6926_6-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2019/03/6926_7-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2019/03/6926_8-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2019/03/6926_9-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2019/03/6926_10-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2019/03/6926_1-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2019/03/6926_2-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2019/03/6926_3-1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2019/03/6926_4-1.jpg', 'https://inmobiliarianoguera.com/property/piso-en-zona-el-valle-ref-6926/',
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
 values ('3943', 'local-en-ccordoba-ref-3943', 'Local en C/Cordoba', '', 'Local acondicionado para una carnicería, con una Superficie de 60 m², 1 aseo, escaparate, agua, luz, aire acondicionado...',
  'venta', 'local', 93000, 'Écija', 'Sevilla', 'C/Cordoba', 'Écija',
  null, 1, 60, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2015/01/Calle-Cordoba.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2015/01/Calle-Cordoba.jpg', 'https://inmobiliarianoguera.com/property/local-en-ccordoba-ref-3943/',
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
 values ('3197', 'nave-en-la-campina-ref-3197', 'Nave en La Campiña', '', 'Superfice de 270 m², salida de humos, oficina, altillo de 145m2, agua, luz, aire acondicionado, 5O m2 de porche, 145 m2 de soberao, innifuga, video-alarma, techo aislante y depósito de gasoil...',
  'venta', 'nave', 114500, 'Écija', 'Sevilla', 'La Campiña', 'Écija',
  null, 1, 270, null,
  ARRAY['Aire acondicionado','Terraza']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2014/12/3197_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2014/12/3197_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2014/12/3197_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2014/12/3197_4.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2014/12/3197_1.jpg', 'https://inmobiliarianoguera.com/property/nave-en-la-campina-ref-3197/',
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
 values ('1916', 'piso-en-zona-el-puente-ref-1916', 'Piso en zona El Puente', '', 'Superficie de 100 m², 4 habitaciones (2 dobles, 2 individuales), 2 baños, cocina, trastero, armarios empotrados',
  'venta', 'piso', 137500, 'Écija', 'Sevilla', 'El Puente', 'Écija',
  4, 2, 90, null,
  ARRAY['Aire acondicionado','Cocina amueblada','Comedor','Armarios empotrados','VPO']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2015/01/1916_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/07/11.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2015/01/1916_1.jpg', 'https://inmobiliarianoguera.com/property/piso-en-zona-el-puente-ref-1916/',
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
 values ('3823', 'casa-en-avda-ferrocarril-ref-3823', 'Casa en Avda. Ferrocarril', '', 'Superficie total de 420 m², 220 m² solar, 5 habitaciones (1 doble, 4 individuales), 2 baños, 2 cocinas, 2 comedores, Azotea, aire acondicionad,. Casa con dos viviendas, una en planta baja, otra en planta alta y azotea..',
  'venta', 'casa', 184235, 'Écija', 'Sevilla', 'Avda. Ferrocarril', 'Écija',
  5, 2, 420, null,
  ARRAY['Aire acondicionado','Terraza','Comedor','Renta Libre']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2015/01/3823_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/01/3823_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/01/3823_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/01/3823_4.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2015/01/3823_1.jpg', 'https://inmobiliarianoguera.com/property/casa-en-avda-ferrocarril-ref-3823/',
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
 values ('7022', 'plaza-de-garaje-zona-la-ceramica-ref-7022', 'Plaza de garaje zona La Cerámica', '', 'Plaza de garaje en zona La Cerámica. Plaza muy amplia, con puerta automática. OBSERVACIONES: Plaza muy grande, con capacidad para coche y zona de trastero. Puerta automática privada. Entrada y salida de vehículos super-comoda. PRECIO: 12.000€ REF: 7022',
  'venta', 'garaje', 12000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, 20, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2019/07/7022_0.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2019/07/7022_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2019/07/7022_2.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2019/07/7022_0.jpg', 'https://inmobiliarianoguera.com/property/plaza-de-garaje-zona-la-ceramica-ref-7022/',
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
 values ('5258', 'casa-en-la-luisiana-ref-5258', 'Casa en la Luisiana', '', 'Casa en la Luisiana, con una Superficie de 235 m², 4 habitaciones (1 doble, 3 individuales), 2 baños, cocina amueblada, terraza de 72m2 y dos patios...',
  'venta', 'casa', 124000, 'Écija', 'Sevilla', 'la Luisiana', 'Écija',
  4, 2, 235, null,
  ARRAY['Terraza','Cocina amueblada','Renta Libre']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5258_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5258_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5258_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5258_4.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5258_1.jpg', 'https://inmobiliarianoguera.com/property/casa-en-la-luisiana-ref-5258/',
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
 values ('6449', 'solar-en-la-alcarrachela-ref6449', 'Solar en la Alcarrachela', '', 'Estupendo solar en la Alcarrachela. Posibilidad de construir la casa de tus sueños en uno de los barrios mas cotizados de Ecija.. Cuenta con 119m2. Cercano a colegios, supermercados, centros de salud y de ocio... GRAN OPORTUNIDAD!!!',
  'venta', 'solar', 91000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, null, 119,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2019/08/IMG-20181112-WA0048.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2019/08/IMG-20181112-WA0048.jpg', 'https://inmobiliarianoguera.com/property/solar-en-la-alcarrachela-ref6449/',
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
 values ('plazas-de-garaje-en-zona-campo-de-futbol', 'plazas-de-garaje-en-zona-campo-de-futbol', 'Plazas de garaje en Zona Campo de futbol', '', 'Oportunidad,7 plazas de garaje. Zona campo de futbol / colegio Miguel de Cervantes. Amplias plazas de garaje en una zona inmejorable del pueblo. Muy economicas. Oportunidad!! 9.000€/plaza',
  'venta', 'garaje', 9000, 'Écija', 'Sevilla', 'Campo de futbol.', 'Écija',
  null, null, null, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/07/738523450_1331806639089055_7144547876840697521_n.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/07/738523450_1331806639089055_7144547876840697521_n.jpg', 'https://inmobiliarianoguera.com/property/plazas-de-garaje-en-zona-campo-de-futbol/',
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
 values ('7072', 'plazas-de-garaje-en-zona-campo-de-futbol-ref7072', 'Plazas de garaje en zona campo de futbol', '', 'Excelentes plazas de garaje en zona campo de fubol/colegio miguel de cervantes. 7 plazas de garaje. Precio: 9.000€/plaza. Todas las plazas por 35.000€',
  'venta', 'garaje', 35000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, 20, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2019/09/IMG-20190908-WA0000.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2019/09/IMG-20190908-WA0007.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2019/09/IMG-20190908-WA0000.jpg', 'https://inmobiliarianoguera.com/property/plazas-de-garaje-en-zona-campo-de-futbol-ref7072/',
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
 values ('3919', 'piso-en-ccarmen-ref-3919', 'Piso en C/Carmen', '', 'Superficie de 86m, 2 habitaciones (1 doble, 1 individual), 1 baño, cocina, comedor, , opcióna garaje, ascensor, aire acondicionado',
  'venta', 'piso', 155000, 'Écija', 'Sevilla', 'C/Carmen', 'Écija',
  2, 1, 86, null,
  ARRAY['Aire acondicionado','Armarios empotrados','Cocina','Renta Libre']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/07/11.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/07/11.jpeg', 'https://inmobiliarianoguera.com/property/piso-en-ccarmen-ref-3919/',
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
 values ('6482', 'parking-zona-calle-cordoba-ref-6482', 'Parking zona Calle cordoba', '', 'Plazas de garaje cerradas en zona C/Córdoba. Tiene una superficie de 112m2, con puerta privada, y capacidad para varios vehículos.',
  'venta', 'garaje', 53000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, 112, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2019/11/6482_2.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2019/11/6482_2.jpg', 'https://inmobiliarianoguera.com/property/parking-zona-calle-cordoba-ref-6482/',
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
 values ('7010', 'apartamento-en-zona-centro-ref-7010', 'Apartamento en zona Centro', '', 'Apartamento en zona centro, ideal para inversores. Tiene una superficie de 45 m2, cocina-comedor, baño y dormitorio',
  'venta', 'apartamento', 75000, 'Écija', 'Sevilla', 'Centro', 'Écija',
  1, 1, 45, null,
  ARRAY['Renta Libre']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2019/12/IMG_2194.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2019/12/IMG_2197.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2019/12/IMG_2193.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2019/12/IMG_2194.jpg', 'https://inmobiliarianoguera.com/property/apartamento-en-zona-centro-ref-7010/',
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
 values ('7092', 'piso-zona-centro-ref-7092', 'Piso zona centro', '', 'Amplio piso en zona centro, inmejorable situación. Dispone de una superficie de 230m2, distribuidos en 3 dormitorios, 4 baños, cocina amueblada y salón. En el precio va incluida plaza de garaje y trastero.',
  'venta', 'piso', 425000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  3, 4, 230, null,
  ARRAY['Aire acondicionado','Ascensor','Renta Libre']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2020/01/5229d86f-5c7d-4791-92d0-07d0d884168f.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/e77bb810-4f80-4141-9ac5-75db8a378532.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/e694262e-217e-4b65-9f04-10e2e3bd16db.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/654822ae-a283-431c-956f-d3c7775080dd.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/52419085-4de3-42cf-96a9-8fc57e38ab7b-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/b010bd68-906c-446a-aae1-1b3bb66990cd.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/d20262c3-8751-4d08-a978-a183f617bdb9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/7c715a0a-326c-4f2d-ac0d-65dbb82ab381.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/7cd00017-184c-40e9-9f2e-1b8b5575aecb.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/9df6b743-cc3c-4c33-aa26-94ea44c8d9da.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/0021a566-1fc4-4624-8f7b-5308ffdd46ca.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/58a82983-e93e-4296-b14d-9862a80e9c58.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/93a34ad4-4db6-42d8-8049-73399391f7b1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2020/01/5229d86f-5c7d-4791-92d0-07d0d884168f.jpg', 'https://inmobiliarianoguera.com/property/piso-zona-centro-ref-7092/',
  true, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
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
 values ('6184', 'solar-en-canada-rosal-ref-6184', 'Solar en Cañada Rosal', '', 'Solar en venta de 155m2 en Urbanización Huerta Lagama.',
  'venta', 'solar', 28025, 'Écija', 'Sevilla', 'Cañada Rosal', 'Écija',
  null, null, null, 155,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2018/03/NO-FOTO.gif','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1000_F_80608289_EYweHmlIKRlr5DCedYTEhXanOIqtZ3Ke.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2018/03/NO-FOTO.gif', 'https://inmobiliarianoguera.com/property/solar-en-canada-rosal-ref-6184/',
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
 values ('7152', 'casa-de-pueblo-en-zona-arroyo-ref-7152', 'Casa de pueblo en zona Arroyo', '', 'Casa en zona Arroyo. Totalmente independiente. Tiene unos 300m2 de superficie aproximadamente. Dividida en dos plantas y azotea/terraza. Con 7 amplios dormitorios y 4 baños. Gran salon. Precio: 240.000€',
  'venta', 'casa', 240000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  7, 4, 300, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2020/03/7152_0-rotated-e1583581605306.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/03/7152_1-rotated-e1583581621862.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/03/7152_3-rotated-e1583581633727.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/03/7152_4-rotated-e1583581643685.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2020/03/7152_0-rotated-e1583581605306.jpg', 'https://inmobiliarianoguera.com/property/casa-de-pueblo-en-zona-arroyo-ref-7152/',
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
 values ('6424', 'cochera-cerrada-en-mo-auxiliadora-ref-6424', 'Cochera cerrada en Mº Auxiliadora', '', 'Cochera cerrada en Mº Auxiliadora. Capacidad para un coche y varias motos, tiene unos 60m2 aproximadamente, con trastero dentro de la misma plaza. Totalmente independiente. Buen estado. 4 puertas abatibles . GRAN OPORTUNIDAD!!! PRECIO: 35. 000€',
  'venta', 'garaje', 35000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, 60, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2020/03/6424_0.png','https://inmobiliarianoguera.com/wp-content/uploads/2020/03/6424_1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2020/03/6424_0.png', 'https://inmobiliarianoguera.com/property/cochera-cerrada-en-mo-auxiliadora-ref-6424/',
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
 values ('1326', 'plaza-de-garaje-en-plaza-de-toros-ref-1326', 'Plaza de garaje en Plaza de Toros', '', 'Plaza de garaje en zona Plaza de Toros. Tiene unos 17m2 aproximadamente, con capacidad para un vehiculo grande. Precio: 18.500€',
  'venta', 'garaje', 18500, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, 17, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2020/05/1326_0.png']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2020/05/1326_0.png', 'https://inmobiliarianoguera.com/property/plaza-de-garaje-en-plaza-de-toros-ref-1326/',
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
 values ('5597', 'casa-para-derribar-en-zona-cercana-al-centro-de-ecija-ref-5597', 'Casa para derribar en Zona cercana al centro de Écija', '', 'GRAN OPORTUNIDAD: 150.000€',
  'venta', 'casa', 150000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, 815, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2020/08/catastro-calle-mayor-.png']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2020/08/catastro-calle-mayor-.png', 'https://inmobiliarianoguera.com/property/casa-para-derribar-en-zona-cercana-al-centro-de-ecija-ref-5597/',
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
 values ('3562', 'solar-en-zona-el-valle-ref-3562', 'Solar en zona el Valle', '', 'Solar en el Valle de 3000 m² de solar. Dispone de pozo y luz. El Solar está cercado Cercano al pueblo. Ref,3562 INMOBILIARIA NOGUERA.',
  'venta', 'solar', 140000, 'Écija', 'Sevilla', 'El Valle', 'Écija',
  null, null, null, 3000,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2018/05/3562_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2018/05/3562_2.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2018/05/3562_1.jpg', 'https://inmobiliarianoguera.com/property/solar-en-zona-el-valle-ref-3562/',
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
 values ('7460', 'parcela-rustica-a-2-minutos-de-ecija-ref-7460', 'Parcela rustica a 2 minutos de Écija', '', 'Parcela a 2 minutos de Ecija, Tiene 6000m2 aproximadamente. con dos casas y tres naves. También cuenta con piscina y varias naves. Terreno cultivable.',
  'venta', 'parcela_rustica', 250000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  3, 2, null, 6420,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2021/03/0-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/1-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/2-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/3-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/4-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/5.5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/5-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/6-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/7-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/8-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/9-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/10-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/11-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/12-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/13.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/14.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/15.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/16.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2021/03/0-2.jpeg', 'https://inmobiliarianoguera.com/property/parcela-rustica-a-2-minutos-de-ecija-ref-7460/',
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
 values ('6147', 'casa-en-zona-c-mayor-ref-6147', 'Casa en zona C/Mayor', '', 'Amplia casa en zona Calle Mayor. Está distribuida en planta baja con local y cochera, en primera planta con vivienda y tercera planta de azotea. Posibilidad de otra vivienda en la tercera planta. Consta de 6 habitaciones, 3 baños, cocina y salón. Renta libre Poca reforma, capacidad de varias viviendas. Precio: 240.000€',
  'venta', 'casa', 240000, 'Écija', 'Sevilla', 'C/Mayor', 'Écija',
  6, 3, 400, null,
  ARRAY['Aire acondicionado','Terraza','Cocina amueblada','Renta Libre']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2020/01/0.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/12.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/13.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/14.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/15.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/16.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2020/01/0.jpg', 'https://inmobiliarianoguera.com/property/casa-en-zona-c-mayor-ref-6147/',
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
 values ('7379', 'plaza-de-garaje-trastero-en-plaza-de-europa-ref-7379', 'Plaza de garaje + trastero en Plaza de Europa', '', 'Plaza de garaje mas trastero privado en la Plaza de Europa. Subterráneo, con puerta automática. Solo 15. 000€. RENTA LIBRE.',
  'venta', 'garaje', 15000, 'Écija', 'Sevilla', 'Plaza de Europa.', 'Écija',
  null, null, 25, null,
  ARRAY['Renta Libre']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2020/10/plaza-europa.png']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2020/10/plaza-europa.png', 'https://inmobiliarianoguera.com/property/plaza-de-garaje-trastero-en-plaza-de-europa-ref-7379/',
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
 values ('1154', 'casa-en-zona-centro-ref-1154', 'Casa en zona Centro', '', 'Casa en zona centro, con una Superficie de 250 m², 4 habitaciones (2 dobles, 2 individuales), 2 baños, ocina, comedor, patio y azotea,, aire acondicionado... Posibilidad de hacer garaje',
  'venta', 'casa', 220000, 'Écija', 'Sevilla', 'Centro', 'Écija',
  4, 2, 250, null,
  ARRAY['Aire acondicionado','Cocina amueblada','Renta Libre']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2018/05/1154_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2018/05/1154_5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2018/05/1154_6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2018/05/1154_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2018/05/1154_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2018/05/1154_3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2018/05/1154_4.jpg', 'https://inmobiliarianoguera.com/property/casa-en-zona-centro-ref-1154/',
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
 values ('solar-en-canada-rosal', 'solar-en-canada-rosal', 'Solar en Cañada Rosal', '', 'Solar en Cañada Rosal, con 200m2, ideal para construir tu casa soñada o tu zona de ocio,',
  'venta', 'solar', 38000, 'Écija', 'Sevilla', 'Cañada Rosal', 'Écija',
  null, null, null, 200,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2022/03/5c016359aed4d.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2022/03/5c016359aed4d.jpg', 'https://inmobiliarianoguera.com/property/solar-en-canada-rosal/',
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
 values ('5201', 'local-en-la-zarzuela-ref-5201', 'Local en la Zarzuela', '', 'Dos Locales en la zarzuela con una Superficie de 91.75 m². Dispone de 1 aseo y licencia de apertura.',
  'venta', 'local', 55000, 'Écija', 'Sevilla', 'la Zarzuela', 'Écija',
  null, 1, 91.75, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5201_2-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5201_3-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5201_4-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5201_5-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5201_1-1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5201_2-1.jpg', 'https://inmobiliarianoguera.com/property/local-en-la-zarzuela-ref-5201/',
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
 values ('7138', 'casa-con-terreno-en-cerro-perea-ref-7138', 'Casa con terreno en Cerro Perea. BAJADA DE PRECIO!', '', 'Casa en Cerro Perea, de unos 80m2 aproximadamente, con 4 habitaciones, salón, cocina y baño completo.Zona exterior con 300m2 aproximadamente, rodeada de arboles frutales. OBSERVACIONES: Casa para reformar o rehabilitar en Cerro Perea, muy cercano a Ecija. PRECIO: 65.000€. REF: 7138',
  'venta', 'casa', 65000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  4, 1, 300, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2020/01/7138_0.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/7138_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/7138_2.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2020/01/7138_0.jpg', 'https://inmobiliarianoguera.com/property/casa-con-terreno-en-cerro-perea-ref-7138/',
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
 values ('casa-en-el-casco-historico-de-ecija-2', 'casa-en-el-casco-historico-de-ecija-2', 'Casa en el casco historico de Écija', '', 'Casa en pleno centro de Écija',
  'venta', 'casa', 275000, 'Écija', 'Sevilla', 'El casco historico de Ecija', 'Écija',
  2, 3, 165, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2022/12/1-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2022/12/2-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2022/12/4-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2022/12/8-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2022/12/11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2022/12/13-2.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2022/12/1-1.jpg', 'https://inmobiliarianoguera.com/property/casa-en-el-casco-historico-de-ecija-2/',
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
 values ('5259', 'parcela-en-ctra-marchena-ref-5259', 'Parcela en Ctra. Marchena', '', 'Parcela con 35000 m2, asfaltado, cultivable, arbolado, rejas, urbanizado, alumbrado... Dispone de pozo, electricidad, alcantarillado.... Dispone de una vivienda con 250 m2, 7 dormitorios, 3 baños, cocina, piscina….',
  'venta', 'parcela_urbana', 185000, 'Écija', 'Sevilla', 'Ctra. Marchena', 'Écija',
  7, 3, null, 35000,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5259_8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5259_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5259_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5259_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5259_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5259_5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5259_6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5259_7.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5259_8.jpg', 'https://inmobiliarianoguera.com/property/parcela-en-ctra-marchena-ref-5259/',
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
 values ('2539', 'casa-en-el-centro-de-ecija-ref-2539', 'Casa en el centro de Écija', '', 'Ref 2539. Casa en el centro de écija, con una superficie de 200m2 construidos aproximadamente, dividida en dos plantas y compuesta por: hall de entrada, 6 habitaciones, amplio salón, cocina equipada, patio/corral, trasteros , dos baños completos y azotea. Casa para reformar, a dos minutos de la Plaza De España. Precio 110. 000€',
  'venta', 'casa', 110000, 'Écija', 'Sevilla', 'El centro de Ecija', 'Écija',
  6, 2, 200, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2021/07/0-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/07/1-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/07/2-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/07/3-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/07/4-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/07/5-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/07/6-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/07/7-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/07/8-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/07/9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/07/10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/07/11.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2021/07/0-1.jpeg', 'https://inmobiliarianoguera.com/property/casa-en-el-centro-de-ecija-ref-2539/',
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
 values ('8119', 'parcela-urbana-en-la-carlota-ref-8119', 'Parcela urbana en la Carlota', '', 'Ref.8119 Se venden dos parcelas urbanas con posibilidad de construir. Una parcela de 1.500 m2, su precio 64.000€. Parcela de 3.000 m2, su precio 104.000€. Dispone de alcantarillado y acometida de luz y agua',
  'venta', 'parcela_urbana', 64000, 'Écija', 'Sevilla', 'la Carlota', 'Écija',
  null, null, null, 1500,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2023/07/IMG-20230721-WA0049.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2023/07/IMG-20230721-WA0050.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2023/07/IMG-20230721-WA0047.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2023/07/IMG-20230721-WA0049.jpg', 'https://inmobiliarianoguera.com/property/parcela-urbana-en-la-carlota-ref-8119/',
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
 values ('4384', 'local-zona-carroyo-ref-4384', 'Local zona C/Arroyo', '', 'Local en zona calle arroyo, con una Superficie de 73 m². Dispone de agua, luz y aseo.',
  'alquiler', 'local', 36000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, 1, 73, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4384_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4384_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4384_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4384_3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4384_4.jpg', 'https://inmobiliarianoguera.com/property/local-zona-carroyo-ref-4384/',
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
 values ('local-comercial-zona-san-benito', 'local-comercial-zona-san-benito', 'Local comercial zona san benito', '', 'LOCAL COMERCIAL EN ZONA SAN BENITO (ECIJA)',
  'venta', 'local', 58000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, 1, 37, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2023/10/0-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2023/10/1-14.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2023/10/2-10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2023/10/3-11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2023/10/4-9.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2023/10/0-6.jpg', 'https://inmobiliarianoguera.com/property/local-comercial-zona-san-benito/',
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
 values ('plaza-de-garaje', 'plaza-de-garaje', 'Plaza de garaje', '', 'OPORTUNIDAD',
  'venta', 'garaje', 11500, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, 15, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2023/10/Sin-titulo.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2023/10/Sin-titulo.jpg', 'https://inmobiliarianoguera.com/property/plaza-de-garaje/',
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
 values ('local-en-el-centro-de-ecija', 'local-en-el-centro-de-ecija', 'Local en el centro de Écija', '', 'LOCAL EN VENTA EN ZONA CENTRO DE ÉCIJA (SEVILLA)',
  'venta', 'local', 63000, 'Écija', 'Sevilla', 'El centro de Ecija', 'Écija',
  null, 1, 40, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2023/11/IMG-20231024-WA0028.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2023/11/IMG-20231024-WA0031.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2023/11/IMG-20231024-WA0033.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2023/11/IMG-20231024-WA0035.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2023/11/IMG-20231024-WA0028.jpg', 'https://inmobiliarianoguera.com/property/local-en-el-centro-de-ecija/',
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
 values ('4211', 'casa-en-ecija-ref-4211', 'Casa en Écija', '', 'Casa de pueblo en zona Calle El Carmen, con una Superficie útil de 184 m², 3 habitaciones (1 doble, 2 individuales), 1 baño, cocina, garaje, con patio y azotea. Tiene una superficie de suelo de 109m2',
  'venta', 'casa', 186000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  3, 1, 184, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2015/06/4211_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/06/4211_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/06/4211_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/06/4211_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/06/4211_5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/06/4211_6.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2015/06/4211_1.jpg', 'https://inmobiliarianoguera.com/property/casa-en-ecija-ref-4211/',
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
 values ('solar-cercano-al-centro-de-ecija', 'solar-cercano-al-centro-de-ecija', 'Solar cercano al centro de Écija', '', 'SOLAR SITUADO CERCANO AL CENTRO DE ECIJA (SEVILLA)',
  'venta', 'solar', 103700, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, null, 250,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2023/11/LOGO.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2023/11/LOGO.jpg', 'https://inmobiliarianoguera.com/property/solar-cercano-al-centro-de-ecija/',
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
 values ('6965', 'casa-en-zona-c-carmen-ref-6965', 'Casa en zona C/Carmen', '', 'Amplia casa para reformar o derribar en Calle El carmen. Dispone de una superficie de 300m2 (mejor ver)',
  'venta', 'casa', 125000, 'Écija', 'Sevilla', 'C/Carmen', 'Écija',
  6, 3, 300, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2019/12/IMG_1609.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2019/12/IMG_1580.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2019/12/IMG_1583.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2019/12/IMG_1590.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2019/12/IMG_1604.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2019/12/IMG_1611.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2019/12/IMG_1570.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2019/12/IMG_1571.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2019/12/IMG_1576.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2019/12/IMG_1609.jpg', 'https://inmobiliarianoguera.com/property/casa-en-zona-c-carmen-ref-6965/',
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
 values ('casa-en-venta-2', 'casa-en-venta-2', 'Casa en venta', '', '????EXCLUSIVIDAD???? ✅ CASA EN ÉCIJA (SEVILLA) ????PRECIO: 260.000€ ???? ➡FINANCIAMOS HASTA EL 100%➡ ✅Inmobiliaria Noguera tiene casa con amplio patio. La vivienda cuenta con una superficie de aproximadamente 214 m2. Está distribuida en 5 dormitorios, cocina , salón y baño. Además cuenta con amplio patio. ✅Renta libre ➡Ref.: 8283 ➡Precio: 260.000€???? Para más información no dude en contactar con nosotros: ????www.inmobiliarianoguera.com info@inmobiliarianoguera.com ☎️95 590 07 48 / 653 855 641 #oportunidad #ecija #centrodeEcijal #inmobiliarianoguera #pisos #inmobiliaria #piso',
  'venta', 'casa', 260000, 'Écija', 'Sevilla', 'VENTA', 'Écija',
  5, 1, 214, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/05/1-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/2-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/3-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/4-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/5-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/6-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/7-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/8-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/9-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/10-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/11-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/12.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/13.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/14.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/15.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/16.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/JULIAN.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/05/1-3.jpg', 'https://inmobiliarianoguera.com/property/casa-en-venta-2/',
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
 values ('edificio-cercano-al-centro-de-ecija', 'edificio-cercano-al-centro-de-ecija', 'Edificio cercano al centro de Écija', '', 'EXCLUSIVIDAD',
  'venta', 'casa', 255000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  7, 2, 300, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/05/0-5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/1-10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/3-7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/4-9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/5-11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/7-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/8-7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/10-7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/11-7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/12-5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/14-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/16-2.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/05/0-5.jpg', 'https://inmobiliarianoguera.com/property/edificio-cercano-al-centro-de-ecija/',
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
 values ('solar-en-venta-en-ecija', 'solar-en-venta-en-ecija', 'Solar en venta zona calle mayor', '', '✴️EXCLUSIVIDAD✴️ ????SOLAR URBANO EN ZONA CALLE MAYOR, ECIJA ???? ????PRECIO: 80.000€ ???????? ➡FINANCIAMOS HASTA EL 100%➡ Inmobiliaria Noguera vende solar en pleno centro de Écija a pocos minutos del centro de Écija (Sevilla) El solar tiene una dimensión de aproximadamente 160 m2. Ideal para construir tu vivienda ideal. Consulte sin compromiso ➡️ URBANIZABLE ➡Ref.:7664 ➡Precio: 80.000€???? Para más información no dude en contactar con nosotros: ????www.inmobiliarianoguera.com info@inmobiliarianoguera.com ☎️95 590 07 48 / 653 855 641 #oportunidad #ecija #inmobiliarianoguera #viviendas #inmobiliarianoguera #idealista #fotocasa',
  'venta', 'solar', 80000, 'Écija', 'Sevilla', 'VENTA ZONA CALLE MAYOR', 'Écija',
  null, null, null, 160,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/06/imagen_2024-06-21_132415503.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1000_F_80608289_EYweHmlIKRlr5DCedYTEhXanOIqtZ3Ke.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/06/imagen_2024-06-21_132415503.jpg', 'https://inmobiliarianoguera.com/property/solar-en-venta-en-ecija/',
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
 values ('casa-en-zona-centro', 'casa-en-zona-centro', 'Casa para reformar o derribar', '', 'Estupenda casa para reformar en zona Arroyo una de las mejores y mas privilegiadas zonas del pueblo, por su cercanía al casco histórico. Cuenta con una superficie una superficie solar de 239m2, y de 283m2 construidos. Oportunidad única de construir tu hogar en un lugar privilegiado.',
  'venta', 'casa_reformar', 53000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, 239, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2019/08/navajas-damian.png']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2019/08/navajas-damian.png', 'https://inmobiliarianoguera.com/property/casa-en-zona-centro/',
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
 values ('local-en-el-centro-de-ecija-2', 'local-en-el-centro-de-ecija-2', 'Local en el centro de Écija', '', 'OPORTUNIDAD BAJADA DE PRECIO',
  'venta', 'local', 120000, 'Écija', 'Sevilla', 'El CENTRO DE ECIJA', 'Écija',
  null, 1, 95, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/09/IMG-20240725-WA0013.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/09/IMG-20240725-WA0018.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/09/IMG-20240725-WA0020.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/09/IMG-20240725-WA0025.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/09/IMG-20240725-WA0026.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/09/IMG-20240725-WA0013.jpg', 'https://inmobiliarianoguera.com/property/local-en-el-centro-de-ecija-2/',
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
 values ('local-en-venta-en-ecija', 'local-en-venta-en-ecija', 'Local en venta en Écija', '', 'EXCLUSIVIDAD',
  'venta', 'local', 33000, 'Écija', 'Sevilla', 'VENTA EN ECIJA', 'Écija',
  null, 1, 20, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/09/0.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2024/09/1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2024/09/2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2024/09/3.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/09/0.jpeg', 'https://inmobiliarianoguera.com/property/local-en-venta-en-ecija/',
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
 values ('4748', 'parcela-rustica-zona-el-barrero-ref-4748', 'Parcela Rústica zona el Barrero', '', 'Parcela rústica de tierra de secano con proyecto industrial de una superficie de 3.364m2 asi como explotacion rustica con una superficie de 51.660m2.',
  'venta', 'parcela_rustica', 150000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, null, 51660,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/03/4748_1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/03/4748_1.jpg', 'https://inmobiliarianoguera.com/property/parcela-rustica-zona-el-barrero-ref-4748/',
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
 values ('plaza-de-garaje-en-las-huertas', 'plaza-de-garaje-en-las-huertas', 'Plaza de garaje en las huertas', '', 'EXCLUSIVIDAD',
  'venta', 'garaje', 11710, 'Écija', 'Sevilla', 'LAS HUERTAS', 'Écija',
  null, null, 18, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/10/image-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/image.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/10/image-1.jpg', 'https://inmobiliarianoguera.com/property/plaza-de-garaje-en-las-huertas/',
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
 values ('5643', 'parcela-urbana-en-canada-rosal-ref-5643', 'Parcela urbana en Cañada Rosal', '', 'Parcela urbana con una superficie de 3750 m² solar. Cuenta con pozo.',
  'venta', 'parcela_urbana', 190000, 'Écija', 'Sevilla', 'Cañada Rosal', 'Écija',
  null, null, null, 3750,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5643_1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5643_1.jpg', 'https://inmobiliarianoguera.com/property/parcela-urbana-en-canada-rosal-ref-5643/',
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
 values ('plaza-de-garaje-en-las-huertas-2', 'plaza-de-garaje-en-las-huertas-2', 'Plaza de garaje en las huertas', '', 'EXCLUSIVIDAD',
  'venta', 'garaje', 7000, 'Écija', 'Sevilla', 'LAS HUERTAS', 'Écija',
  null, null, 12, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/11/1-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/11/2-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/11/3-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/11/4.0.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/11/4-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/11/5-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/11/6.0.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/11/6.1-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/11/6-1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/11/1-2.jpg', 'https://inmobiliarianoguera.com/property/plaza-de-garaje-en-las-huertas-2/',
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
 values ('casa-en-venta-a-10-minutos-de-ecija', 'casa-en-venta-a-10-minutos-de-ecija', 'Casa en venta a 10 minutos de Écija', '', 'EXCLUSIVIDAD',
  'venta', 'casa', 160000, 'Écija', 'Sevilla', 'VENTA A 10 MINUTOS DE ECIJA', 'Écija',
  4, 2, 117, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0009.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0010.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0013.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0016.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0017.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0024.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0032.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0034.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0036.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0037.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0038.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0041.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0045.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0046.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0048.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0053.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0055.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0058.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0059.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0060.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0062.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0065.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0067.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0069.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0072.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0075.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0077.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0079.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0084.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0085.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0009.jpg', 'https://inmobiliarianoguera.com/property/casa-en-venta-a-10-minutos-de-ecija/',
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
 values ('solar-urbano-a-10-min-de-ecija', 'solar-urbano-a-10-min-de-ecija', 'Solar urbano a 10 min de Écija', '', 'EXCLUSIVIDAD',
  'venta', 'solar', 37000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, null, 180,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/02/1-3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/02/1-3.jpg', 'https://inmobiliarianoguera.com/property/solar-urbano-a-10-min-de-ecija/',
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
 values ('casa-en-puerta-osuna', 'casa-en-puerta-osuna', 'Casa en Puerta Osuna', '', 'BAJADA DE PRECIO EXCLUSIVIDAD',
  'venta', 'casa', 110000, 'Écija', 'Sevilla', 'Puerta Osuna', 'Écija',
  5, 1, 190, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2022/07/0-13.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/07/1-14.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/07/4-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/07/7-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/07/8-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/07/9-2.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2022/07/0-13.jpeg', 'https://inmobiliarianoguera.com/property/casa-en-puerta-osuna/',
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
 values ('ultima-parcela-en-villanueva-del-rey', 'ultima-parcela-en-villanueva-del-rey', 'Ultima parcela en villanueva del rey', '', 'ÚLTIMA PARCELA URBANA EN VILLANUEVA DEL REY, URBANIZACION CARLOS III',
  'venta', 'parcela_urbana', 91000, 'Écija', 'Sevilla', 'VILLANUEVA DEL REY', 'Écija',
  null, null, null, 563,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/03/1.png','https://inmobiliarianoguera.com/wp-content/uploads/2024/03/2-9.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/03/1.png', 'https://inmobiliarianoguera.com/property/ultima-parcela-en-villanueva-del-rey/',
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
 values ('casa-de-renta-libre-cercana-al-centro', 'casa-de-renta-libre-cercana-al-centro', 'Casa de renta libre cercana al centro', '', 'EXCLUSIVIDAD',
  'venta', 'casa', 86000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  7, 2, 230, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/12/0.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/12/1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/12/2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/12/3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/12/4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/12/5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/12/6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/12/7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/12/8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/12/9.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/12/0.jpg', 'https://inmobiliarianoguera.com/property/casa-de-renta-libre-cercana-al-centro/',
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
 values ('casa-para-derribar-en-ecija', 'casa-para-derribar-en-ecija', 'Casa para derribar en Écija', '', 'Esta espaciosa casa en venta se encuentra en Écija, con una superficie total de 360 m² y un terreno de 255 m². Con un total de 999 habitaciones individuales, 999 habitaciones dobles y 999 baños, ofrece un sinfín de posibilidades. Cuenta con cocina, comedor y se encuentra en estado de conservación a reformar. Ideal para aquellos que buscan espacio y potencial para reformar a su gusto.',
  'venta', 'casa', 75000, 'Écija', 'Sevilla', 'ECIJA', 'Écija',
  null, null, 360, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/07/1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/07/1.jpg', 'https://inmobiliarianoguera.com/property/casa-para-derribar-en-ecija/',
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
 values ('local-en-venta-zona-calle-cordoba', 'local-en-venta-zona-calle-cordoba', 'Local en venta zona calle cordoba', '', 'Superficie total 100 m², local superficie solar 100 m², superficie útil 100 m², 1 aseo, escaparate, planta baja, exterior.',
  'venta', 'local', 88000, 'Écija', 'Sevilla', 'VENTA ZONA CALLE CORDOBA', 'Écija',
  null, 1, 100, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/03/Imagen-de-WhatsApp-2025-03-31-a-las-12.32.03_2be104dd.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/Imagen-de-WhatsApp-2025-03-31-a-las-12.32.07_5323e7c3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/Imagen-de-WhatsApp-2025-03-31-a-las-12.32.07_db76bc22.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/03/Imagen-de-WhatsApp-2025-03-31-a-las-12.32.03_2be104dd.jpg', 'https://inmobiliarianoguera.com/property/local-en-venta-zona-calle-cordoba/',
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
 values ('se-vende-fabuloso-local', 'se-vende-fabuloso-local', 'Se vende fabuloso local', '', 'Superficie total 100 m², local superficie solar 100 m², superficie útil 100 m², 1 aseo, escaparate, planta baja, exterior.',
  'venta', 'local', 88000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, 1, 100, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/04/Imagen-de-WhatsApp-2025-03-31-a-las-12.32.03_2be104dd.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/Imagen-de-WhatsApp-2025-03-31-a-las-12.32.07_5323e7c3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/Imagen-de-WhatsApp-2025-03-31-a-las-12.32.07_db76bc22.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/04/Imagen-de-WhatsApp-2025-03-31-a-las-12.32.03_2be104dd.jpg', 'https://inmobiliarianoguera.com/property/se-vende-fabuloso-local/',
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
 values ('casa-en-calle-la-victoria', 'casa-en-calle-la-victoria', 'Casa en calle La Victoria', '', 'CASA EN CALLE LA VICTORIA',
  'venta', 'casa', 200000, 'Écija', 'Sevilla', 'calle La Victoria', 'Écija',
  null, null, 582, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2022/03/0.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/03/1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/03/2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/03/3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/03/4.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2022/03/0.jpeg', 'https://inmobiliarianoguera.com/property/casa-en-calle-la-victoria/',
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
 values ('se-vende-amplio-local-en-ecija', 'se-vende-amplio-local-en-ecija', 'Se vende amplio local en Écija', '', 'Superficie total 100 m², local superficie útil 100 m², escaparate (2), estado conservación: buen estado, exterior.',
  'venta', 'local', 78000, 'Écija', 'Sevilla', 'ÉCIJA', 'Écija',
  null, 1, 100, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/04/IMG-20250422-WA0006.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/IMG-20250422-WA0007.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/IMG-20250422-WA0008.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/IMG-20250422-WA0009.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/IMG-20250422-WA0010.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/IMG-20250422-WA0011.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/IMG-20250422-WA0012.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/IMG-20250422-WA0015.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/04/IMG-20250422-WA0006.jpg', 'https://inmobiliarianoguera.com/property/se-vende-amplio-local-en-ecija/',
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
 values ('se-vende-chalet-unifamiliar-en-canada-rosal', 'se-vende-chalet-unifamiliar-en-canada-rosal', 'Se vende chalet unifamiliar en cañada rosal', '', 'Se vende amplio chalet unifamiliar en Cañada Rosal, con una superficie total de 530 m² y una superficie útil de 200 m². La vivienda cuenta con 3 habitaciones individuales, 3 habitaciones dobles, 2 baños, 1 aseo y está adaptada para personas con discapacidad. Entre sus características destacan el sistema de aire acondicionado con domótica, los armarios empotrados, la chimenea con instalación, la cocina, el comedor, el garaje para más de 2 vehículos, el jardín privado, la piscina propia, la terraza ,y el suelo de porcelánico. La propiedad se encuentra en buen estado de conservación, en una zona urbanizada y soleada, ideal para disfrutar en familia. ¡No pierdas la oportunidad de adquirir esta increíble propiedad en Cañada Rosal!',
  'venta', 'chalet', 300000, 'Écija', 'Sevilla', 'CAÑADA ROSAL', 'Écija',
  6, 3, 530, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/04/0.1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/0.2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/1-11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/2-11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/3-11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/4-10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/5-11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/6-10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/7-9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/8-10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/9-10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/10-9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/11-10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/12-11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/13-8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/14-8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/15-7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/16-7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/17-7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/18-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/19-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/20-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/21.0.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/21-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/22-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/23-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/24-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/25-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/26-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/04/27-3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/04/0.1.jpg', 'https://inmobiliarianoguera.com/property/se-vende-chalet-unifamiliar-en-canada-rosal/',
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
 values ('casa-en-venta-en-ecija-3', 'casa-en-venta-en-ecija-3', 'Casa en venta en Écija', '', 'Se vende amplio chalet unifamiliar en Cañada Rosal, con una superficie total de 530 m² y una superficie útil de 200 m². La vivienda cuenta con 3 habitaciones individuales, 3 habitaciones dobles, 2 baños, 1 aseo y está adaptada para personas con discapacidad. Entre sus características destacan el sistema de aire acondicionado con domótica, los armarios empotrados, la chimenea con instalación, la cocina, el comedor, el garaje para más de 2 vehículos, el jardín privado, la piscina propia, la terraza ,y el suelo de porcelánico. La propiedad se encuentra en buen estado de conservación, en una zona urbanizada y soleada, ideal para disfrutar en familia. ¡No pierdas la oportunidad de adquirir esta increíble propiedad en Cañada Rosal!',
  'venta', 'casa', 300000, 'Écija', 'Sevilla', 'VENTA EN ECIJA', 'Écija',
  6, 3, 530, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/05/0.1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/0.2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/12.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/13.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/14.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/15.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/16.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/17.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/18.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/19.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/20-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/21.0.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/21.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/22.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/23.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/24.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/25.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/26.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/05/27.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/05/0.1.jpg', 'https://inmobiliarianoguera.com/property/casa-en-venta-en-ecija-3/',
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
 values ('parcela-en-venta-en-canada-de-rabadan', 'parcela-en-venta-en-canada-de-rabadan', 'Parcela en venta en cañada de rabadan', '', 'Este terreno en venta se encuentra en el municipio de Fuente Palmera. Cuenta con una superficie total de 255 m² y una superficie solar de 255 m². Una excelente oportunidad para construir la casa de tus sueños en este amplio espacio. No pierdas la oportunidad de adquirir este terreno y comienza a planificar tu nuevo hogar. ¡Contáctanos para más información!',
  'venta', 'parcela_urbana', 38630, 'Écija', 'Sevilla', 'VENTA EN CAÑADA DE RABADAN', 'Écija',
  null, null, null, 255,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/09/IMG-20250910-WA0018.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/09/IMG-20250910-WA0018.jpg', 'https://inmobiliarianoguera.com/property/parcela-en-venta-en-canada-de-rabadan/',
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
 values ('se-vende-nave-industrial-en-ecija', 'se-vende-nave-industrial-en-ecija', 'se vende nave industrial en Écija', '', 'Superficie total 1500 m², nave comercial superficie solar 1500 m², superficie útil 1500 m², estado conservación: buen estado, nº de planta: 1, exterior, patio (700m2',
  'venta', 'nave', 480000, 'Écija', 'Sevilla', 'ecija', 'Écija',
  null, 1, null, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/06/1-9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/06/2-9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/06/3-9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/06/4-9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/06/5-9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/06/6-8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/06/7-8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/06/8-8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/06/9-7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/06/10-7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/06/11-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/06/12-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/06/13-6.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/06/1-9.jpg', 'https://inmobiliarianoguera.com/property/se-vende-nave-industrial-en-ecija/',
  true, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
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
 values ('casa-en-venta-en-ecija-4', 'casa-en-venta-en-ecija-4', 'Casa en venta en Écija', '', 'EXCLUSIVIDAD',
  'venta', 'casa', 114000, 'Écija', 'Sevilla', 'VENTA EN ECIJA', 'Écija',
  1, null, 300, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/10/1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/12.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/13.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/14.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/15.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/16.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/17.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/18.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/10/1.jpg', 'https://inmobiliarianoguera.com/property/casa-en-venta-en-ecija-4/',
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
 values ('se-vende-piso-en-zona-centro-de-ecija', 'se-vende-piso-en-zona-centro-de-ecija', 'Se vende piso en zona centro de Écija', '', 'EXCLUSIVIDAD',
  'venta', 'piso', 140000, 'Écija', 'Sevilla', 'CENTRO DE ECIJA', 'Écija',
  3, 2, 80, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/07/1-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/2-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/3-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/4-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/5-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/6-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/7-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/8-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/9-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/10-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/11-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/12-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/13-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/15-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/16-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/17.1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/07/17-3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/07/1-4.jpg', 'https://inmobiliarianoguera.com/property/se-vende-piso-en-zona-centro-de-ecija/',
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
 values ('parcela-rustica-en-los-algarbes', 'parcela-rustica-en-los-algarbes', 'Parcela rustica en Los Algarbes', '', 'Inmobiliaria Noguera vende Parcela rustica en Los Algarbes ( muy cercano al municipio de La Carlota y Ecija). Tiene una superficie de 5.000m2 de terreno, se encuentra actualmente sembrado de olivos. Parcela totalmente vallada y con puerta de entrada. Ideal para seguir con la plantacion o sembrar otro tipo de cultivo. Posibilidad de luz y agua. Ref.: 8057 PRECIO 62.000€ Para más información no dude en contactar con nosotros: www.inmobiliarianoguera.com info@inmobiliarianoguera.com 95 590 07 48 / 653 855 641 #oportunidad #ecija #centrodeEcija #inmobiliarianoguera #pisos #inmobiliaria #piso #casa #adosada #pisoconpatio #idealista #fotocasa #oportunidad #ecija #centrodeEcija #inmobiliarianoguera #pisos #inmobiliaria #piso #casa #adosada #pisoconpatio #idealista #fotocas',
  'venta', 'parcela_rustica', 62000, 'Écija', 'Sevilla', 'Los Algarbes', 'Écija',
  null, null, null, 5000,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2023/05/0-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2023/05/1-7.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2023/05/0-6.jpg', 'https://inmobiliarianoguera.com/property/parcela-rustica-en-los-algarbes/',
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
 values ('26467', '26467', 'Local en venta en Écija', '', '💥EXCLUSIVIDAD💥 💷24.000€💷 🔑LOCAL EN VENTA EN ÉCIJA 🔑 Inmobiliaria Finance Noguera vende estupendo local en Écija, ideal para inversión o montar tu negocio. ✅Este local comercial en venta cuenta con una superficie total de 18 m² distribuidos en una misma planta. Dispone de 1 aseo y se encuentra en buen estado de conservación. ✅Este local es ideal para emprender un nuevo negocio. No pierdas la oportunidad de adquirir este inmueble con grandes posibilidades en una ubicación estratégica. Información general: ➡Superficie útil: 18 m2 ➡Aseos: 1 ➡Conservación: buen estado ➡Ref.: 8539 ➡Precio: 24.000€ Para más información no dude en contactar con nosotros: www.inmobiliarianoguera.com info@inmobiliarianoguera.com #inmobiliarianoguera #pisosenecija #casasconpatio #casasbonitas #ecija #idealista #fotocasa #inmobiliaria #pisosconterraza #inversion #OPORTUNIDADPara más información no dude en contactar con nosotros: www.inmobiliarianoguera.com info@inmobiliarianoguera.com 955900748 / 653 855 641 ****** En cumplimiento del Decreto de la Junta de Andalucía 218/2005 del 11 de Octubre, el Impuesto de Transmisiones Patrimoniales ó IVA, los gastos de Notaría y Registro regulados por arancel no están incluidos en el precio. Los honorarios profesionales de la Agencia no están incluidos. Validez de precios 7 días, sujeto a disponibilidades y confirmación por propietarios. Se considera que la descripción y los precios indicados para las propiedades a la venta en este sitio web son correctos. No obstante, la información que contiene esta página puede ser sujeta a errores u omisiones. Las propiedades pueden ser sujetas a cambio de precio, venta o retirada del mercado #oportunidad #ecija #centrodeEcija #inmobiliarianoguera #pisos #inmobiliaria #piso #casa #adosada #pisoconpatio #idealista #fotocasa #oportunidad #ecija #centrodeEcija #inmobiliarianoguera #pisos #inmobiliaria #piso #casa #adosada #pisoconpatio #idealista #fotocas',
  'venta', 'local', 24000, 'Écija', 'Sevilla', 'VENTA EN ÉCIJA', 'Écija',
  null, 1, 18, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/09/IMG-20250617-WA0245.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/09/IMG-20250617-WA0246.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/09/Imagen-de-WhatsApp-2025-06-17-a-las-19.14.55_e995870a.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/09/IMG-20250617-WA0245.jpg', 'https://inmobiliarianoguera.com/property/26467/',
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
 values ('parcela-en-venta-en-villanueva-del-rey', 'parcela-en-venta-en-villanueva-del-rey', 'Parcela en venta en villanueva del rey', '', 'EXCLUSIVIDAD',
  'venta', 'parcela_urbana', 134000, 'Écija', 'Sevilla', 'VENTA EN VILLANUEVA DEL REY', 'Écija',
  null, null, null, 775,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/09/IMG-20250910-WA0018.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/09/IMG-20250910-WA0016.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/09/IMG-20250910-WA0017.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/09/IMG-20250910-WA0019.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/09/copiImagen-de-WhatsApp-2025-09-10-a-las-19.01.58_774185e8.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/09/IMG-20250910-WA0018.jpg', 'https://inmobiliarianoguera.com/property/parcela-en-venta-en-villanueva-del-rey/',
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
 values ('1459', 'casa-para-reformar-en-zona-el-puente-ref-1459', 'Casa para reformar en zona El Puente', '', 'Casa para derribar en venta en Écija concretamente situada en la zona del Puente con una superficie de solar de 264m2, y una superficie construida de 344m2. Situacion inmejorable, y con capacidad para una gran vivienda y zona de ocio. Precio: 120.000€.',
  'venta', 'casa_reformar', 120000, 'Écija', 'Sevilla', 'El Puente', 'Écija',
  null, null, 344, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2020/05/catastro.png']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2020/05/catastro.png', 'https://inmobiliarianoguera.com/property/casa-para-reformar-en-zona-el-puente-ref-1459/',
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
 values ('casa-mas-nave-en-venta-en-ecija-sevilla', 'casa-mas-nave-en-venta-en-ecija-sevilla', 'Casa más nave en venta en Écija (Sevilla)', '', 'CASA MÁS NAVE EN VENTA EN ÉCIJA (SEVILLA)',
  'venta', 'casa', 481000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  3, 2, 1031, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0082.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0083.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0084.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0086.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0087.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0088.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0089.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0090.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0091.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0092.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0093.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0094.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0095.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0096.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0097.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0098.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0099.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0100.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0101.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0102.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0103.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0104.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/10/IMG-20250924-WA0082.jpg', 'https://inmobiliarianoguera.com/property/casa-mas-nave-en-venta-en-ecija-sevilla/',
  true, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
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
 values ('solar-en-venta-cercano-al-centro-ecija', 'solar-en-venta-cercano-al-centro-ecija', 'Solar en venta cercano al centro, Écija', '', 'Este solar en venta en Écija cuenta con una superficie total de 162 m², ideal para construir la vivienda de tus sueños. Con una ubicación céntrica, ofrece la posibilidad de crear un proyecto a medida en una de las zonas más buscadas. No pierdas la oportunidad de invertir en este terreno y crear el hogar que siempre has deseado.',
  'venta', 'solar', 98000, 'Écija', 'Sevilla', 'VENTA CERCANO AL CENTRO, ECIJA', 'Écija',
  null, null, null, 162,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/10/FOTO-LOGO-OK.png','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1000_F_80608289_EYweHmlIKRlr5DCedYTEhXanOIqtZ3Ke.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/10/FOTO-LOGO-OK.png', 'https://inmobiliarianoguera.com/property/solar-en-venta-cercano-al-centro-ecija/',
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
 values ('duplex-en-el-centro-de-ecija-3', 'duplex-en-el-centro-de-ecija-3', 'Duplex en el centro de Écija', '', 'ATENCION INVERSORES',
  'venta', 'piso', 125000, 'Écija', 'Sevilla', 'El CENTRO DE ECIJA', 'Écija',
  1, 1, 38, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/03/IMG-20250308-WA0010.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/IMG-20250307-WA0013.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/IMG-20250307-WA0014.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/IMG-20250307-WA0017.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/IMG-20250307-WA0019.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/IMG-20250307-WA0021.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/IMG-20250307-WA0022.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/IMG-20250307-WA0023.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/IMG-20250307-WA0024.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/IMG-20250307-WA0027.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/IMG-20250308-WA0007.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/03/IMG-20250308-WA0010.jpg', 'https://inmobiliarianoguera.com/property/duplex-en-el-centro-de-ecija-3/',
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
 values ('2513', 'casa-en-zona-centro-ref-2513', 'Casa en zona centro', '', 'EXCLUSIVIDAD',
  'venta', 'casa', 264000, 'Écija', 'Sevilla', 'centro', 'Écija',
  5, 2, 331, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/10/0.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.04.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.07-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.09-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.09-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.09.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.14-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.14-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.14.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.15-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.15-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.15-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.15.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.16-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/WhatsApp-Image-2025-12-17-at-13.38.16.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/10/0.jpeg', 'https://inmobiliarianoguera.com/property/casa-en-zona-centro-ref-2513/',
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
 values ('novae-nueva-urbanizacion-en-ecija', 'novae-nueva-urbanizacion-en-ecija', 'Novaé -nueva urbanizacion en Écija', '', 'Inmobiliaria Noguera presenta en EXCLUSIVA una nueva PROMOCION DE VIVIENDAS DE OBRA NUEVA, diseñada para quienes buscan calidad, confort y un hogar pensado para durar: NOVAÉ!',
  'venta', 'piso', 125000, 'Écija', 'Sevilla', 'ÉCIJA', 'Écija',
  null, null, null, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/12/terraza-atardecer.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/12/terraza-atardecer.jpg', 'https://inmobiliarianoguera.com/property/novae-nueva-urbanizacion-en-ecija/',
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
 values ('fantastico-chalet-en-venta-con-todas-las-calidades-y-comodidades-en-ecija-sevill', 'fantastico-chalet-en-venta-con-todas-las-calidades-y-comodidades-en-ecija-sevill', 'Fántastico chalet en venta con todas las calidades y comodidades en Écija (Sevilla)', '', 'BAJADA DE PRECIO',
  'venta', 'chalet', 640000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  4, 7, 800, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/01/1-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/2-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/3-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/4-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/5-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/6-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/7-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/8-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/9-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/10-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/12.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/13.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/14.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/15.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/16.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/17.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/18.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/19.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/20.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/21-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/22.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/23.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/24.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/25.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/26.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/27.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/01/1-2.jpg', 'https://inmobiliarianoguera.com/property/%f0%9f%94%91fantastico-chalet-en-venta-con-todas-las-calidades-y-comodidades-en-ecija-sevilla-%f0%9f%94%91/',
  true, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
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
 values ('casa-para-reformar-en-ecija-2', 'casa-para-reformar-en-ecija-2', 'Casa para reformar en Écija', '', '180 m² solar, 7 habitaciones (7 dobles), 1 baño, TIENE POZO, PATIO DE LUZ.',
  'venta', 'casa_reformar', 117000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  7, 1, 180, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1890.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1891.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1892.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1893.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1894.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1895.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1896.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1897.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1898.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1899.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1900.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1901.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/01/DSCN1890.jpg', 'https://inmobiliarianoguera.com/property/casa-para-reformar-en-ecija-2/',
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
 values ('nave-en-venta-en-uno-de-los-mejores-poligonos-de-ecija', 'nave-en-venta-en-uno-de-los-mejores-poligonos-de-ecija', 'Nave en venta en uno de los mejores poligonos de Écija', '', 'EXCLUSIVIDAD',
  'venta', 'nave', 149000, 'Écija', 'Sevilla', 'VENTA EN UNO DE LOS MEJORES POLIGONOS DE ÉCIJA', 'Écija',
  null, 1, 129, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/10/0-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/1-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/2-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/3-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/4-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/5-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/6-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/7-5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/8-5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/9-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/10/10-4.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/10/0-2.jpg', 'https://inmobiliarianoguera.com/property/nave-en-venta-en-uno-de-los-mejores-poligonos-de-ecija/',
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
 values ('7659', 'casa-de-pueblo-en-el-centro-de-ecija-ref-7659', 'Casa de pueblo en el centro de Écija', '', 'CASA DE PUEBLO EN ZONA CÉNTRICA DE ÉCIJA (SEVILLA)',
  'venta', 'casa', 189000, 'Écija', 'Sevilla', 'El centro de Ecija', 'Écija',
  5, 1, 180, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2021/12/0-7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2021/12/1-7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2021/12/5-5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2021/12/6-9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2021/12/7-4.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2021/12/0-7.jpg', 'https://inmobiliarianoguera.com/property/casa-de-pueblo-en-el-centro-de-ecija-ref-7659/',
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
 values ('locales-en-bruto', 'locales-en-bruto', 'Locales en bruto', '', '�LOCALES EN BRUTO DE ÉCIJA (SEVILLA)� ➡FINANCIAMOS EL 100%➡ �Inmobiliaria Noguera vende locales, son 6, a lo que varían el precio individualmente depende los metros de cada uno de ellos, aparte se puede comprar en conjunto o independiente, los 6 juntos al precio en pack de 255.000€ - El local se compone de 6 locales escriturados independientes: 1º local de 92 m2 2º local de 102 m2 3º local de 92 m2 4º local de 92 m2 5º local de 104m2 6º local de 161 m2 VARIACIÓN PRECIO €/M2 -Operación por 1 local 440€/m2 -Operación por 2 local 430€/m2 -Operación por 3 local 420€/m2 -Operación por 4 local 410€/m2 -Operación por 5 local 400€/m2 ➡92 M2 ➡RENTA LIBRE ➡FINANCIAMOS EL 100% ( infórmese sin compromiso)',
  'venta', 'local', 38900, 'Écija', 'Sevilla', 'BRUTO', 'Écija',
  null, null, 92, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/04/5-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/04/6-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/04/7-1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/04/5-1.jpg', 'https://inmobiliarianoguera.com/property/locales-en-bruto/',
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
 values ('0683', 'casa-en-el-matadero-ref-0683', 'Casa en el Matadero', '', 'Casa en la zona del matadero con 460m2 de superficie, 8 habitaciones (4 dobles, 4 individuales), 2 baños, 2 cocinas, lavadero, 2 comedores, terraza y patio. Casa de estilo antiguo.',
  'venta', 'casa', 217000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  8, 4, 460, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2020/05/683_0.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/05/683_1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2020/05/683_0.jpg', 'https://inmobiliarianoguera.com/property/casa-en-el-matadero-ref-0683/',
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
 values ('parcela-rustica', 'parcela-rustica', 'Parcela rustica', '', 'EXCLUSIVIDAD',
  'venta', 'parcela_rustica', 175000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  5, 2, null, 10000,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/10/1-5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/2-5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/4-5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/5-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/6-5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/8-5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/10-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/15-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/18-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/20.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/22.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/24-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/26.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/28.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/31.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/33.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/39.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/40.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/10/1-5.jpg', 'https://inmobiliarianoguera.com/property/parcela-rustica/',
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
 values ('casa-en-venta-cerca-de-ecija', 'casa-en-venta-cerca-de-ecija', 'Casa en venta cerca de Écija', '', '�EXCLUSIVIDAD� CASA CERCA DE ÉCIJA (SEVILLA) �PRECIO: 154.300€€ � ➡FINANCIAMOS HASTA EL 100%➡ Inmobiliaria Noguera casa a 20 minutos de Écija, con amplio patio. La vivienda cuenta con una superficie de aproximadamente 208 m2. Está distribuida en 5 dormitorios, cocina amueblada, salón y 2 bañoS. . Renta libre ➡Ref. : 8284 ➡Precio: 154.300€€� NEGOCIABLES Para más información no dude en contactar con nosotros: ☎️ / oportunidad ecija centrodeEcijal inmobiliarianoguera pisos inmobiliaria piso.',
  'venta', 'casa', 154300, 'Écija', 'Sevilla', 'VENTA CERCA DE ECIJA', 'Écija',
  5, 2, 208, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/05/1-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/2-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/3-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/4-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/5-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/6-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/7-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/8-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/9-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/10-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/11-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/12-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/13-1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/05/1-4.jpg', 'https://inmobiliarianoguera.com/property/casa-en-venta-cerca-de-ecija/',
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
 values ('doble-cochera-cerrada', 'doble-cochera-cerrada', 'Doble cochera cerrada', '', '‼OPORTUNIDAD‼ COCHERA CERRADA PARA DOS VEHICULOS EN ZONA ALGODONERA �Precio: 28.900€� Inmobiliaria Noguera vende cochera cerrada con dos plazas de garaje de capacidad. Tiene una superficie de aproximadamente 33 m2. , con puerta privada Está perfectamente ubicada y muy fácil de maniobra para su acceso al interior. ▶Capacidad para dos vehículo, asi como posiblidad de usar como trastero. �Precio: 28.900� Ref: 338 Para más información no dude en contactar con nosotros: 955900748/ 653855641',
  'venta', 'piso', 28900, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, 33, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/04/3-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/04/4-1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/04/3-1.jpg', 'https://inmobiliarianoguera.com/property/doble-cochera-cerrada/',
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
 values ('5587', 'casa-en-zona-puerta-cerrada-ref-5587', 'Casa en zona Puerta Cerrada', '', 'Casa con tres plantas y una superficie de 330 m² distribuidos en 7 habitaciones (1 doble, 6 individuales), 3 baños, cocina, lavadero, 2 comedores, patio con montera, jardín, garaje, agua, aire acondicionado y piscina.',
  'venta', 'casa', 375000, 'Écija', 'Sevilla', 'Puerta Cerrada', 'Écija',
  7, 3, 330, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5587_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5587_5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5587_6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5587_7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5587_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5587_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5587_3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2017/07/5587_4.jpg', 'https://inmobiliarianoguera.com/property/casa-en-zona-puerta-cerrada-ref-5587/',
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
 values ('solar-en-venta-en-zona-ronda-del-ferrocarril-ecija', 'solar-en-venta-en-zona-ronda-del-ferrocarril-ecija', 'Solar cercano a zona del ferrocarril, Écija', '', 'EXCLUSIVIDAD',
  'venta', 'solar', 58000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, null, 93,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/11/1-1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/11/1-1.jpg', 'https://inmobiliarianoguera.com/property/solar-en-venta-en-zona-ronda-del-ferrocarril-ecija/',
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
 values ('local-en-alquiler-en-la-calle-miguel-de-cervantes', 'local-en-alquiler-en-la-calle-miguel-de-cervantes', 'Local en alquiler en la calle miguel de cervantes', '', 'SE ALQUILA local comercial en Écija , cuenta con una superficie total de 20 m². Dispone de una estancia , zona de almacenamiento y aseo. Se encuentra en buen estado de conservación. Se ubica en planta baja y es exterior, ofreciendo accesibilidad y adecuado para cualquier tipo de negocio. Si buscas un espacio para emprender o expandir tu negocio en Écija, este local es una excelente opción.',
  'alquiler', 'local', 500, 'Écija', 'Sevilla', 'ALQUILER EN LA CALLE MIGUEL DE CERVANTES', 'Écija',
  2, 1, 20, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/02/WhatsApp-Image-2026-02-19-at-14.51.49.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/WhatsApp-Image-2026-02-19-at-14.51.48-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/WhatsApp-Image-2026-02-19-at-14.51.48-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/WhatsApp-Image-2026-02-19-at-14.51.48-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/WhatsApp-Image-2026-02-19-at-14.51.49-6.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/02/WhatsApp-Image-2026-02-19-at-14.51.49.jpeg', 'https://inmobiliarianoguera.com/property/local-en-alquiler-en-la-calle-miguel-de-cervantes/',
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
 values ('parcela-urbana-en-canada-rosal', 'parcela-urbana-en-canada-rosal', 'Parcela urbana en Cañada Rosal', '', 'EXCLUSIVIDAD',
  'venta', 'parcela_urbana', 79000, 'Écija', 'Sevilla', 'Cañada Rosal', 'Écija',
  null, null, null, 551,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/02/4374_22513105437_1_20220311205804997.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/02/Sin-titulo.png']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/02/4374_22513105437_1_20220311205804997.jpg', 'https://inmobiliarianoguera.com/property/parcela-urbana-en-canada-rosal/',
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
 values ('273', 'casa-para-reformar-c-arroyo-ref-273', 'Casa para reformar C/Arroyo', '', 'Casa para reformar en Calle Arroyo. Tiene una superficie solar de 136m2, y existe una planta construida con patio trasero.',
  'venta', 'casa_reformar', 63000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  3, 1, 136, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2020/01/IMG_4454.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/IMG_4455.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/IMG_4467.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/IMG_4448-copia.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/IMG_4449-copia.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/IMG_4457.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2020/01/IMG_4454.jpg', 'https://inmobiliarianoguera.com/property/casa-para-reformar-c-arroyo-ref-273/',
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
 values ('local-en-venta-cercano-al-centro-de-ecija', 'local-en-venta-cercano-al-centro-de-ecija', 'Local en venta cercano al centro de Écija', '', 'EXCLUSIVIDAD 57 .000€',
  'venta', 'local', 57000, 'Écija', 'Sevilla', 'VENTA CERCANO AL CENTRO DE ECIJA', 'Écija',
  null, 1, 101, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/03/1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/10.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/03/1.jpg', 'https://inmobiliarianoguera.com/property/local-en-venta-cercano-al-centro-de-ecija/',
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
 values ('casa-para-derribar-en-zona-centro-ecija-sevilla', 'casa-para-derribar-en-zona-centro-ecija-sevilla', 'Casa para derribar en zona centro, Écija (Sevilla)', '', '✴EXCLUSIVIDAD✴ 🔑CASA PARA DERRIBAR EN ZONA CENTRO, ECIJA (SEVILLA) 🔑 💵Precio: 110.000€💵 ✅ Inmobiliaria Noguera vende casa para derribar en zona centro. ✅Esta espaciosa vivienda en Écija se encuentra en venta. Con una superficie total de 250 m². Se encuentra para derribar, lo que brinda la oportunidad de adaptarla completamente a tus gustos y necesidades. ✅Ubicada en el municipio de Écija, esta propiedad ofrece un gran potencial para convertirse en el hogar de tus sueños. ¡No dejes pasar esta oportunidad única! ➡ Casa en el Centro ➡ Vivienda de RENTA LIBRE ➡ Ref. : 8635 💵Precio: 110.000€💵 Para más información no dude en contactar con nosotros: ****** En cumplimiento del Decreto de la Junta de Andalucía 218/2005 del 11 de Octubre, el Impuesto de Transmisiones Patrimoniales ó IVA, los gastos de Notaría y Registro regulados por arancel no están incluidos en el precio. Los honorarios profesionales de la Agencia no están incluidos. Validez de precios 7 días, sujeto a disponibilidades y confirmación por propietarios. Se considera que la descripción y los precios indicados para las propiedades a la venta en este sitio web son correctos. No obstante, la información que contiene esta página puede ser sujeta a errores u omisiones. Las propiedades pueden ser sujetas a cambio de precio, venta o retirada del mercado #oportunidad #ecija #centrodeEcija #inmobiliarianoguera #pisos #inmobiliaria #piso #casa #adosada #pisoconpatio #idealista #fotocasa #oportunidad #ecija #centrodeEcija #inmobiliarianoguera #pisos #inmobiliaria #piso #casa #adosada #pisoconpatio #idealista #fotocasa',
  'venta', 'casa', 110000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, 250, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/03/1-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/2-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/3-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/4-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/5-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/6-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/7-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/8-1.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/03/1-1.jpeg', 'https://inmobiliarianoguera.com/property/%f0%9f%94%91casa-para-derribar-en-zona-centro-ecija-sevilla-%f0%9f%94%91/',
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
 values ('local-zona-puerta-osuna-en-alquiler', 'local-zona-puerta-osuna-en-alquiler', 'Local zona puerta osuna en alquiler', '', 'Este local en alquiler en Écija cuenta con una superficie total de 84 m², siendo la superficie útil de 83 m². Dispone de 1 habitación individual, 1 aseo y se encuentra en buen estado de conservación. Ideal para emprender un nuevo negocio en una de las zonas más activas de Écija. ¡No pierdas esta oportunidad y ven a visitarlo!',
  'alquiler', 'local', 520, 'Écija', 'Sevilla', 'ALQUILER', 'Écija',
  3, 1, 84, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/03/1-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/2-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/3-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/4-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/5-2.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/03/1-2.jpeg', 'https://inmobiliarianoguera.com/property/local-zona-puerta-osuna-en-alquiler/',
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
 values ('chalet-en-urbanizacion-privada-de-ecija-sevilla', 'chalet-en-urbanizacion-privada-de-ecija-sevilla', 'Chalet en urbanización privada de Écija (Sevilla)', '', 'EXCLUSIVIDAD Precio: 255.000€',
  'venta', 'chalet', 255000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  4, 2, 980, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/03/3-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/4-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/5-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/6-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/7-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/8-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/9-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/10-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/11-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/13-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/14-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/15-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/16.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/17.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/18.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/19.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/20.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/22.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/23.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/25.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/03/26.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/03/3-3.jpeg', 'https://inmobiliarianoguera.com/property/chalet-en-urbanizacion-privada-de-ecija-sevilla/',
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
 values ('solar-en-venta-en-zona-el-matadero-de-ecija', 'solar-en-venta-en-zona-el-matadero-de-ecija', 'Solar en venta en zona el matadero de Écija', '', 'EXCLUSIVIDAD',
  'venta', 'solar', 79000, 'Écija', 'Sevilla', 'VENTA EN ZONA EL MATADERO DE ECIJA', 'Écija',
  null, null, null, 117,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/03/643362192_1457345639735614_4030878075409422777_n.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/03/643362192_1457345639735614_4030878075409422777_n.jpg', 'https://inmobiliarianoguera.com/property/solar-en-venta-en-zona-el-matadero-de-ecija/',
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
 values ('nave-en-poligono-de-ecija-sevilla', 'nave-en-poligono-de-ecija-sevilla', 'Nave en poligono de Écija, Sevilla', '', 'EXCLUSIVIDAD Precio: 224.000€',
  'venta', 'nave', 224000, 'Écija', 'Sevilla', 'POLIGONO DE ECIJA, SEVILLA', 'Écija',
  null, 1, 400, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/1-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/2-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/3-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/4-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/5-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/6-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/7-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/8-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/9-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/10-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/11-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/12-2.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0.jpeg', 'https://inmobiliarianoguera.com/property/nave-en-poligono-de-ecija-sevilla/',
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
 values ('casa-en-calle-barba', 'casa-en-calle-barba', 'Casa en Calle Barba', '', 'BAJADA DE PRECIO',
  'venta', 'casa', 53000, 'Écija', 'Sevilla', 'Calle Barba', 'Écija',
  null, null, 356, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2023/03/0-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2023/03/1-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2023/03/2-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2023/03/3.png','https://inmobiliarianoguera.com/wp-content/uploads/2023/03/WhatsApp-Image-2026-04-15-at-14.21.27.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2023/03/WhatsApp-Image-2026-04-15-at-14.21.28.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2023/03/WhatsApp-Image-2026-04-15-at-14.21.29-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2023/03/WhatsApp-Image-2026-04-15-at-14.21.30-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2023/03/WhatsApp-Image-2026-04-15-at-14.21.30-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2023/03/WhatsApp-Image-2026-04-15-at-14.21.30-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2023/03/WhatsApp-Image-2026-04-15-at-14.21.30.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2023/03/WhatsApp-Image-2026-04-15-at-14.21.31-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2023/03/WhatsApp-Image-2026-04-15-at-14.21.31.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2023/03/0-1.jpeg', 'https://inmobiliarianoguera.com/property/casa-en-calle-barba/',
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
 values ('fantastico-chalet-con-piscina-en-ecija', 'fantastico-chalet-con-piscina-en-ecija', 'Fantastico chalet con piscina en Écija', '', '💥EXCLUSIVIDAD💥 💸PRECIO: 590.000 € 💵 🔑 FANTASTICO CHALET CON PISCINA EN ECIJA🔑 ✅Inmobiliaria Noguera vende precioso chalet con piscina en Écija. ✅Dispone de una superficie de 300 m2, divididos en 4 habitaciones (2 dobles y 2 individuales), 4 baños, cocina, salón con chimenea, ... ✅De sus zonas exteriores destacan su zona de barbacoa y su estupenda piscina donde disfrutar y relajarte. ✅ No pierdas la oportunidad de adquirir este fantástico chalet en Écija! ➡PISCINA ➡CHIMENEA ➡BARBACOA ➡AMPLIA ZONA EXTERIOR ➡Ref.: 5451 💸PRECIO: 590.000 € 💵 Para más información no dude en contactar con nosotros: 💻www.inmobiliarianoguera.com info@inmobiliarianoguera.com ☎️95 590 07 48 / 653 855 641 ***** En cumplimiento del Decreto de la Junta de Andalucía 218/2005 del 11 de Octubre, el Impuesto de Transmisiones Patrimoniales ó IVA, los gastos de Notaría y Registro regulados por arancel no están incluidos en el precio. Los honorarios profesionales de la Agencia no están incluidos. Validez de precios 7 días, sujeto a disponibilidades y confirmación por propietarios. Se considera que la descripción y los precios indicados para las propiedades a la venta en este sitio web son correctos. No obstante, la información que contiene esta página puede ser sujeta a errores u omisiones. Las propiedades pueden ser sujetas a cambio de precio, venta o retirada del mercado #oportunidad #ecija #centrodeEcijal #inmobiliarianoguera #pisos #inmobiliaria #PisoEnVenta',
  'venta', 'chalet', 590000, 'Écija', 'Sevilla', 'ECIJA', 'Écija',
  4, 4, 300, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-18.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-20.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-23.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-24.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-25.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-29.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-30.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-32.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-37.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-39.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-42.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-46.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-50.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-53.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-62.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-63.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-64.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-66.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-67.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-68.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-72.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-73.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-74.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-75.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-77.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-78.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-82.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/04/Fotos-3.jpg', 'https://inmobiliarianoguera.com/property/%f0%9f%94%91-fantastico-chalet-con-piscina-en-ecija%f0%9f%94%91/',
  true, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
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
 values ('casa-para-reformar-zona-centro-de-ecija-sevilla', 'casa-para-reformar-zona-centro-de-ecija-sevilla', 'Casa para reformar zona centro de Écija, Sevilla)', '', 'EXCLUSIVIDAD Precio: 120.000€',
  'venta', 'casa_reformar', 120000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, 375, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/04/1-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/2-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/3-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/4-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/5-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/6-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/7-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/8-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/9-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/10-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/11-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/12-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/13-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/14-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/15-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/16-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/17-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/18-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/19-5.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/04/1-5.jpeg', 'https://inmobiliarianoguera.com/property/casa-para-reformar-zona-centro-de-ecija-sevilla/',
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
 values ('local-en-alquiler-en-ecija', 'local-en-alquiler-en-ecija', 'Local en alquiler en Écija', '', 'Este local en alquiler en una de las mejores ubicaciones de Écija cuenta con una superficie total de 85 m² aproximadamente. Dispone de entrada, 3 salas independientes y 1 aseo. Ideal para emprender un nuevo negocio en una de las zonas más activas de Écija. ¡No pierdas esta oportunidad y ven a visitarlo!',
  'alquiler', 'local', 520, 'Écija', 'Sevilla', 'ALQUILER EN ECIJA', 'Écija',
  null, 1, 84, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/04/1-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/2-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/3-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/4-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/5-8.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/04/1-6.jpeg', 'https://inmobiliarianoguera.com/property/local-en-alquiler-en-ecija/',
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
 values ('local-en-venta-en-el-centro-de-ecija', 'local-en-venta-en-el-centro-de-ecija', 'Local en venta en el centro de Écija', '', 'EXCLUSIVIDAD 63.000€',
  'venta', 'local', 63000, 'Écija', 'Sevilla', 'VENTA EN EL CENTRO DE ÉCIJA', 'Écija',
  null, 1, 60, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/04/IMG-20231024-WA0028.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/IMG-20231024-WA0039.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/IMG-20231024-WA0046.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/IMG-20231024-WA0047.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/04/IMG-20231024-WA0028.jpg', 'https://inmobiliarianoguera.com/property/local-en-venta-en-el-centro-de-ecija/',
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
 values ('piso-zona-c-cordoba-ecija', 'piso-zona-c-cordoba-ecija', 'Piso zona c/cordoba (Écija)', '', 'EXCLUSIVIDAD',
  'venta', 'piso', 95000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  3, 1, 75, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/1-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/3-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/4-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/5-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/6-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/7-10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/9-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/10-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/11-10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/12-10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/13-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/14-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/15-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/16-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/17-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/18-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/19-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/20-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/21-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/22-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/23-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/24-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/25-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/26-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/27-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/28-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/29-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/30-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/31-4.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0-3.jpeg', 'https://inmobiliarianoguera.com/property/piso-zona-c-cordoba-ecija/',
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
 values ('local-en-pleno-centro-de-ecija-sevilla', 'local-en-pleno-centro-de-ecija-sevilla', 'Local en pleno centro de Écija (Sevilla)', '', '⬇️ BAJADA DE PRECIO ⬇️ ✴ EXCLUSIVIDAD ✴ 💵 Precio: 76.900€ 💵 📍 LOCAL EN PLENO CENTRO DE ECIJA (SEVILLA) 📍 🆕 Inmobiliaria Noguera vende local situado en calle comercial del centro de Écija (Sevilla). ✅ Se vende local comercial en Écija, con una superficie de 60 m² aproximadamente. Este local cuenta con 1 aseo y está adaptado para personas con discapacidad. Dispone de escaparate y se encuentra en buen estado de conservación, ubicado en calle comercial del centro de Écija. Si estás buscando un local comercial en Écija, esta puede ser una excelente oportunidad para ti. ✅ 60 m2 aprox. ➡ Dispone de escaparate ➡ Excelente situación ➡ 1 aseo. Ref. : 8411 💵 Precio: 76.900€ 💵 Para más información no dude en contactar con nosotros: www.inmobiliarianoguera.com info@inmobiliarianoguera.com 95 590 07 48 / 653 855 641 ***** En cumplimiento del Decreto de la Junta de Andalucía 218/2005 del 11 de Octubre, el Impuesto de Transmisiones Patrimoniales ó IVA, los gastos de Notaría y Registro regulados por arancel no están incluidos en el precio. Los honorarios profesionales de la Agencia no están incluidos. Validez de precios 7 días, sujeto a disponibilidades y confirmación por propietarios. Se considera que la descripción y los precios indicados para las propiedades a la venta en este sitio web son correctos. No obstante, la información que contiene esta página puede ser sujeta a errores u omisiones. Las propiedades pueden ser sujetas a cambio de precio, venta o retirada del mercado #inmobiliarianoguera #pisosenecija #ecija #idealista #fotocasa #inmobiliaria #pisosconterraza #inversion #oportunidadinmobiliaria',
  'venta', 'local', 76900, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, 1, 58, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/12/1-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/2-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/3-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/4-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2025/12/5-2.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/12/1-2.jpeg', 'https://inmobiliarianoguera.com/property/%f0%9f%93%8dlocal-en-pleno-centro-de-ecija-sevilla%f0%9f%93%8d/',
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
 values ('casa-senorial-en-el-centro-de-ecija-sevilla', 'casa-senorial-en-el-centro-de-ecija-sevilla', 'Casa señorial en el centro de Écija (Sevilla)', '', 'EXCLUSIVIDAD',
  'venta', 'casa', 240000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  5, 4, 470, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/04/1-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/2-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/3-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/4-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/5-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/6-10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/7-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/8-Puerta-del-patio.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/9-COCINA.JPG.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/10-DORMITORIO6.JPG.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/11-DORMITORIO7.JPG.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/12-DORMITORIO1.JPG.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/13-DORMITORIO2.JPG.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/14-DORMITORIO3.JPG.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/15-DORMITORIO4.JPG.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/15.1-DORMITORIO5.JPG.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/16-BAaeO2.JPG.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/BAaeO1.JPG.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/ESCALERAS.JPG.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/04/1-9.jpeg', 'https://inmobiliarianoguera.com/property/casa-senorial-en-el-centro-de-ecija-sevilla/',
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
 values ('casa-para-derribar-en-zona-el-calle-el-carmen-ecija-sevilla', 'casa-para-derribar-en-zona-el-calle-el-carmen-ecija-sevilla', 'Casa para derribar en zona el calle el carmen, Écija (Sevilla)', '', 'EXCLUSIVIDAD',
  'venta', 'casa', 55000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, 135, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/04/WhatsApp-Image-2026-04-28-at-11.44.27-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/WhatsApp-Image-2026-04-28-at-11.44.28-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/WhatsApp-Image-2026-04-28-at-11.44.29-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/WhatsApp-Image-2026-04-28-at-11.44.41.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/WhatsApp-Image-2026-04-28-at-11.44.42-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/WhatsApp-Image-2026-04-28-at-11.44.43.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/WhatsApp-Image-2026-04-28-at-11.44.44.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/WhatsApp-Image-2026-04-28-at-11.44.45-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/WhatsApp-Image-2026-04-28-at-11.44.45.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/WhatsApp-Image-2026-04-28-at-11.44.46.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/WhatsApp-Image-2026-04-28-at-11.44.48-3.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/04/WhatsApp-Image-2026-04-28-at-11.44.27-3.jpeg', 'https://inmobiliarianoguera.com/property/casa-para-derribar-en-zona-el-calle-el-carmen-ecija-sevilla/',
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
 values ('casa-en-venta-en-zona-centro-ecija-sevilla', 'casa-en-venta-en-zona-centro-ecija-sevilla', 'Casa en venta en zona centro, Écija ( Sevilla)', '', 'EXCLUSIVIDAD Precio: 198.000€',
  'venta', 'casa', 198000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  4, 2, 240, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0.0.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0.1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0.2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0.3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0.4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0.5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0.6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0.7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0.8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/2-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/3-13.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/4-13.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/5.1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/5-13.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/6-11.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/7-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/8-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/26-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/29-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/31-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/33-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/37-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/38-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/39-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/40-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/41-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/45.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/52.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/53.1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/53.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/04/0.0.jpeg', 'https://inmobiliarianoguera.com/property/casa-en-venta-en-zona-centro-ecija-sevilla/',
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
 values ('casa-en-calle-moreria-pleno-centro-de-ecija-sevilla', 'casa-en-calle-moreria-pleno-centro-de-ecija-sevilla', 'Casa en calle moreria, pleno centro de Écija (Sevilla)', '', 'EXCLUSIVIDAD',
  'venta', 'casa', 120000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  5, 1, 240, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/04/1-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/2-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/3.0.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/3-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/4-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/5-9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/6-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/7-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/8-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/9-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/10-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/11-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/12-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/13-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/14-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/15-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/16-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/17-7.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/18-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/19-6.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/20-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/21-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/22-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/23-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/24-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/25-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/26-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/27-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/28-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/04/29-3.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/04/1-7.jpeg', 'https://inmobiliarianoguera.com/property/casa-en-calle-moreria-pleno-centro-de-ecija-sevilla/',
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
 values ('alquiler-de-local-en-avd-miguel-de-cervantes', 'alquiler-de-local-en-avd-miguel-de-cervantes', 'Alquiler de Local en Avda. Miguel de Cervantes', '', 'SE ALQUILA EDIFICIO COMPLETO EN EN AVD. MIGUEL DE CERVANTES (ANTIGUA SUCURSAL DE UNICAJA (ECIJA,SEVILLA)',
  'alquiler', 'local', 1900, 'Écija', 'Sevilla', 'Avd. Miguel de Cervantes', 'Écija',
  6, 2, 350, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/02/1-2-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/1-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/2-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/3-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/4-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/5-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/6-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/7-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/8-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/9-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/10-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/11-5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/12-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/13-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/14-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/15-4.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/16-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/17.1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/17-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/18-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/19-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/20.1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/20-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/21-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/21-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/22-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/23-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/24-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/25-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2026/02/26-1.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/02/1-2-1.jpeg', 'https://inmobiliarianoguera.com/property/alquiler-de-local-en-avd-miguel-de-cervantes/',
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
