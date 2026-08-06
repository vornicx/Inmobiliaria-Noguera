-- Parte 1 de 4 · 50 inmuebles
-- Pega y ejecuta en Supabase > SQL Editor. Reejecutable sin duplicar.
begin;
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('4205', 'piso-en-zona-centro-ref-4205', 'Piso en zona centro', '', 'Amplio piso en zona centro con calidades de lujo. Tiene una Superficie construida de 270 m², 4 habitaciones (1 doble, 3 individuales), 4 baños, cocina amueblada con electrodomésticos, lavadero, comedor, Patio interior, trastero, suelos de parket, garaje, ascensor, calefacción, agua, luz, aire acondicionado, todo exterior, balcón, Reformado en 2012; Persianas automáticas; Placas solares; Vestidor en 2 dormitorios&#8230;.',
  'venta', 'piso', 590000, 'Écija', 'Sevilla', 'centro', 'Écija',
  4, 4, 270, null,
  ARRAY['Aire acondicionado','Terraza','Cocina-comedor','Armarios empotrados','Ascensor','Renta Libre','Electrodomésticos']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/07/11.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/07/11.jpeg', 'https://inmobiliarianoguera.com/property/piso-en-zona-centro-ref-4205/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('2414', 'nave-en-sedesa-ref-2414', 'Nave en Sedesa', '', 'Superficie de 429 m² y 1 aseo,',
  'venta', 'nave', 124500, 'Écija', 'Sevilla', 'Sedesa', 'Écija',
  null, 1, 3932, null,
  ARRAY['Terraza']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2015/01/2414_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/01/2414_2.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2015/01/2414_1.jpg', 'https://inmobiliarianoguera.com/property/nave-en-sedesa-ref-2414/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('4132', 'piso-en-zona-centro-ref-4132', 'Piso en zona Centro', '', 'Piso en zona centro, con una Superficie de 183 m² construidos, 4 habitaciones (1 doble, 3 individuales), 2 baños, 2 balcones, garaje, ascensor&#8230;',
  'venta', 'piso', 281190, 'Écija', 'Sevilla', 'Centro', 'Écija',
  3, 2, 183, null,
  ARRAY['Balcón','Ascensor','Renta Libre']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/07/11.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/07/11.jpeg', 'https://inmobiliarianoguera.com/property/piso-en-zona-centro-ref-4132/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('4152', 'nave-en-lora-del-rio-ref-4152', 'Nave en Lora del Rio', '', 'Nave en Lora del Rio, con una Superficie de 2150 m², divisible, oficina, puente grua de 5 toneladas&#8230; Posibilidad de venta en 1.100m2 o 950m2',
  'venta', 'nave', 160000, 'Écija', 'Sevilla', 'Lora del Rio', 'Écija',
  null, 1, 2150, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/07/1-4.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/07/1-4.jpeg', 'https://inmobiliarianoguera.com/property/nave-en-lora-del-rio-ref-4152/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('5152', 'piso-en-zona-centro-ref-5152', 'Piso en zona centro', '', 'Piso en primera planta en zona centro. Tiene una Superficie de 90 m², 3 habitaciones (1 doble, 2 individuales), 1 baño, 1 aseo, cocina, balcón&#8230;',
  'venta', 'piso', 94000, 'Écija', 'Sevilla', 'centro', 'Écija',
  3, 2, 90, null,
  ARRAY['Balcón','Renta Libre']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5152_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5152_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5152_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5152_3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5152_4.jpg', 'https://inmobiliarianoguera.com/property/piso-en-zona-centro-ref-5152/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('5157', 'local-en-canada-del-rosal-ref-5157', 'Local en cañada del Rosal', '', 'Local en cañada del Rosal con una Superficie de 35 m², 1 aseo, 2 escaparates, aire acondicionado&#8230;',
  'alquiler', 'local', 250, 'Écija', 'Sevilla', 'cañada del Rosal', 'Écija',
  null, 1, 35, null,
  ARRAY['Aire acondicionado']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5157_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5157_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5157_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5157_3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5157_4.jpg', 'https://inmobiliarianoguera.com/property/local-en-canada-del-rosal-ref-5157/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('4403', 'casa-en-la-montiela-ref-4403', 'Casa en la Montiela', '', 'Casa en la Montiela, con una Superficie de 150 m², 5 habitaciones (1 doble, 4 individuales), 2 baños, cocina amueblada, lavadero, Patio, garaje para dos coches, aire acondicionado&#8230;',
  'venta', 'casa', 120000, 'Écija', 'Sevilla', 'la Montiela', 'Écija',
  5, 2, 150, null,
  ARRAY['Aire acondicionado','Terraza','Renta Libre']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4403_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4403_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4403_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4403_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4403_5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4403_6.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2015/11/4403_1.jpg', 'https://inmobiliarianoguera.com/property/casa-en-la-montiela-ref-4403/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('4504', 'local-comercial-en-ronda-san-agustin-ref4504', 'Local Comercial en Ronda San Agustin', '', 'Local comercial en bruto de una superficie de 94m2,',
  'alquiler', 'local', 300, 'Écija', 'Sevilla', 'Ronda San Agustin', 'Écija',
  null, null, 942, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/03/4504_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/03/4504_2.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/03/4504_1.jpg', 'https://inmobiliarianoguera.com/property/local-comercial-en-ronda-san-agustin-ref4504/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('2383', 'nave-en-la-campina-ref-2383', 'Nave en la campiña', '', 'Nave en Polígono Industrial La Campiña Superficie útil de 1.150m2, 3 muelles de carga, oficina, aseo, porche&#8230;',
  'venta', 'nave', 232000, 'Écija', 'Sevilla', 'la campiña', 'Écija',
  1, 1, 1150, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/07/2383_5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/07/2383_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/07/2383_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/07/2383_4.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/07/2383_5.jpg', 'https://inmobiliarianoguera.com/property/nave-en-la-campina-ref-2383/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('5229', 'local-en-ccarmen-ref-5229', 'Local en C/Carmen', '', 'Local con una Superficie de 22 m², 1 aseo, escaparate, agua (Incluida), aire acondicionado&#8230;',
  'alquiler', 'local', 300, 'Écija', 'Sevilla', 'C/Carmen', 'Écija',
  null, 1, 22, null,
  ARRAY['Aire acondicionado']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5229_5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5229_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5229_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5229_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5229_4.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/10/5229_5.jpg', 'https://inmobiliarianoguera.com/property/local-en-ccarmen-ref-5229/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('5253', 'local-en-zona-la-doma-ref-5253', 'Local en zona La Doma', '', 'Local en zona La Doma con una Superficie de 60 m² , 1 aseo, agua, aire acondicionado&#8230;',
  'alquiler', 'local', 300, 'Écija', 'Sevilla', 'La Doma', 'Écija',
  null, 1, 60, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5253_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5253_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5253_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5253_3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5253_4.jpg', 'https://inmobiliarianoguera.com/property/local-en-zona-la-doma-ref-5253/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('4944', 'casa-en-la-lantejuela-ref-4944', 'Casa en la Lantejuela', '', 'Casa con una Superficie de 230 m², 4 habitaciones (2 dobles, 2 individuales), 1 baño, 1 aseo, cocina amueblada, lavadero, comedor, azotea de 80m2, aire acondicionado&#8230;',
  'venta', 'casa', 65000, 'Écija', 'Sevilla', 'la Lantejuela', 'Écija',
  4, 2, 230, null,
  ARRAY['Aire acondicionado','Terraza','Cocina amueblada','Lavadero']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/08/4944_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/08/4944_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/08/4944_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/08/4944_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/08/4944_5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/08/4944_6.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/08/4944_1.jpg', 'https://inmobiliarianoguera.com/property/casa-en-la-lantejuela-ref-4944/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('5397', 'local-en-maria-auxiliadora-ref-5397', 'Local en Maria Auxiliadora', '', 'Local en Avenida Maria Auxiliadora, con una Superficie de 250 m². Dispone de agua y luz&#8230;',
  'alquiler', 'local', 1000, 'Écija', 'Sevilla', 'Maria Auxiliadora', 'Écija',
  null, 1, 250, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2017/02/5397_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/02/5397_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/02/5397_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2017/02/5397_3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2017/02/5397_4.jpg', 'https://inmobiliarianoguera.com/property/local-en-maria-auxiliadora-ref-5397/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('6130', 'piso-con-local-en-la-luisiana-ref-6130', 'Piso con local en la Luisiana', '', 'Vivienda con local en planta baja en la Luisiana. Tiene una Superficie total de 213 m². La vivienda está compuesta por 4 habitaciones (1 doble, 3 individuales), 2 baños, garaje&#8230; Dispone de 3 plantas. Tiene placas solares.. El local mide 99m2 y dispone de aseos, está completamente adaptado a negocio.',
  'venta', 'piso', 200000, 'Écija', 'Sevilla', 'la Luisiana', 'Écija',
  4, 2, 114, null,
  ARRAY['Aire acondicionado','Terraza','Cocina amueblada','Renta Libre']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2018/03/6130_6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2018/03/6130_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2018/03/6130_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2018/03/6130_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2018/03/6130_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2018/03/6130_5.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2018/03/6130_6.jpg', 'https://inmobiliarianoguera.com/property/piso-con-local-en-la-luisiana-ref-6130/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('170', 'piso-en-zona-centro-ref-170', 'Piso en zona Centro', '', 'Superficie de 78 m², 3 habitaciones (1 doble, 2 individuales), 2 baños, cocina y comedor.',
  'venta', 'piso', 103025, 'Écija', 'Sevilla', 'Centro', 'Écija',
  3, 2, 7830, null,
  ARRAY['Comedor','VPO']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2014/12/170_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2014/12/170_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2014/12/170_4.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2014/12/170_2.jpg', 'https://inmobiliarianoguera.com/property/piso-en-zona-centro-ref-170/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('5256', 'local-en-zona-el-valle-ref-5256', 'Local en zona el Valle', '', 'Local en zona El valle, cercano a nuevos residenciales. Tiene una Superficie de 133 m², 3 aseos, escaparate, agua, luz, aire acondicionado&#8230; Posibilidad de venta de mobiliario y maquinas',
  'venta', 'local', 104000, 'Écija', 'Sevilla', 'El Valle', 'Écija',
  1, 2, 133, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5256.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5256_1-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5256_2-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5256_3-1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5256.jpg', 'https://inmobiliarianoguera.com/property/local-en-zona-el-valle-ref-5256/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('3943', 'local-en-ccordoba-ref-3943', 'Local en C/Cordoba', '', 'Local acondicionado para una carnicería, con una Superficie de 60 m², 1 aseo, escaparate, agua, luz, aire acondicionado&#8230;',
  'venta', 'local', 93000, 'Écija', 'Sevilla', 'C/Cordoba', 'Écija',
  null, 1, 60, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2015/01/Calle-Cordoba.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2015/01/Calle-Cordoba.jpg', 'https://inmobiliarianoguera.com/property/local-en-ccordoba-ref-3943/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('3197', 'nave-en-la-campina-ref-3197', 'Nave en La Campiña', '', 'Superfice de 270 m², salida de humos, oficina, altillo de 145m2, agua, luz, aire acondicionado, 5O m2 de porche, 145 m2 de soberao, innifuga, video-alarma, techo aislante y depósito de gasoil&#8230;',
  'venta', 'nave', 114500, 'Écija', 'Sevilla', 'La Campiña', 'Écija',
  null, 1, 270, null,
  ARRAY['Aire acondicionado','Terraza']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2014/12/3197_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2014/12/3197_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2014/12/3197_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2014/12/3197_4.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2014/12/3197_1.jpg', 'https://inmobiliarianoguera.com/property/nave-en-la-campina-ref-3197/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
commit;
