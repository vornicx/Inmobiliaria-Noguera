-- Parte 2 de 4 · 50 inmuebles
-- Pega y ejecuta en Supabase > SQL Editor. Reejecutable sin duplicar.
begin;
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('5258', 'casa-en-la-luisiana-ref-5258', 'Casa en la Luisiana', '', 'Casa en la Luisiana, con una Superficie de 235 m², 4 habitaciones (1 doble, 3 individuales), 2 baños, cocina amueblada, terraza de 72m2 y dos patios&#8230;',
  'venta', 'casa', 124000, 'Écija', 'Sevilla', 'la Luisiana', 'Écija',
  4, 2, 235, null,
  ARRAY['Terraza','Cocina amueblada','Renta Libre']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5258_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5258_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5258_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5258_4.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5258_1.jpg', 'https://inmobiliarianoguera.com/property/casa-en-la-luisiana-ref-5258/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('6449', 'solar-en-la-alcarrachela-ref6449', 'Solar en la Alcarrachela', '', 'Estupendo solar en la Alcarrachela. Posibilidad de construir la casa de tus sueños en uno de los barrios mas cotizados de Ecija.. Cuenta con 119m2. Cercano a colegios, supermercados, centros de salud y de ocio&#8230; GRAN OPORTUNIDAD!!!',
  'venta', 'solar', 91000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, null, 119,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2019/08/IMG-20181112-WA0048.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2019/08/IMG-20181112-WA0048.jpg', 'https://inmobiliarianoguera.com/property/solar-en-la-alcarrachela-ref6449/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('1326', 'plaza-de-garaje-en-plaza-de-toros-ref-1326', 'Plaza de garaje en Plaza de Toros', '', 'Plaza de garaje en zona Plaza de Toros. Tiene unos 17m2 aproximadamente, con capacidad para un vehiculo grande. Precio: 18.500€',
  'venta', 'garaje', 18500, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, 172, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2020/05/1326_0.png']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2020/05/1326_0.png', 'https://inmobiliarianoguera.com/property/plaza-de-garaje-en-plaza-de-toros-ref-1326/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('5597', 'casa-para-derribar-en-zona-cercana-al-centro-de-ecija-ref-5597', 'Casa para derribar en Zona cercana al centro de Écija', '', 'GRAN OPORTUNIDAD: 150.000€',
  'venta', 'casa', 150000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, 8152, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2020/08/catastro-calle-mayor-.png']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2020/08/catastro-calle-mayor-.png', 'https://inmobiliarianoguera.com/property/casa-para-derribar-en-zona-cercana-al-centro-de-ecija-ref-5597/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('3562', 'solar-en-zona-el-valle-ref-3562', 'Solar en zona el Valle', '', 'Solar en el Valle de 3000 m² de solar. Dispone de pozo y luz. El Solar está cercado Cercano al pueblo. Ref,3562 INMOBILIARIA NOGUERA.',
  'venta', 'solar', 140000, 'Écija', 'Sevilla', 'El Valle', 'Écija',
  null, null, null, 30002,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2018/05/3562_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2018/05/3562_2.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2018/05/3562_1.jpg', 'https://inmobiliarianoguera.com/property/solar-en-zona-el-valle-ref-3562/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('7460', 'parcela-rustica-a-2-minutos-de-ecija-ref-7460', 'Parcela rustica a 2 minutos de Écija', '', 'Parcela a 2 minutos de Ecija, Tiene 6000m2 aproximadamente. con dos casas y tres naves. También cuenta con piscina y varias naves. Terreno cultivable.',
  'venta', 'parcela_rustica', 250000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  3, 2, null, 64202,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2021/03/0-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/1-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/2-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/3-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/4-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/5.5.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/5-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/6-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/7-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/8-2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/9-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/10-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/11-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/12-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/13.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/14.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/15.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/03/16.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2021/03/0-2.jpeg', 'https://inmobiliarianoguera.com/property/parcela-rustica-a-2-minutos-de-ecija-ref-7460/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('6147', 'casa-en-zona-c-mayor-ref-6147', 'Casa en zona C/Mayor', '', 'Amplia casa en zona Calle Mayor. Está distribuida en planta baja con local y cochera, en primera planta con vivienda y tercera planta de azotea. Posibilidad de otra vivienda en la tercera planta. Consta de 6 habitaciones, 3 baños, cocina y salón. Renta libre Poca reforma, capacidad de varias viviendas. Precio: 240.000€',
  'venta', 'casa', 240000, 'Écija', 'Sevilla', 'C/Mayor', 'Écija',
  6, 3, 4002, null,
  ARRAY['Aire acondicionado','Terraza','Cocina amueblada','Renta Libre']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2020/01/0.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/12.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/13.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/14.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/15.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/16.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2020/01/0.jpg', 'https://inmobiliarianoguera.com/property/casa-en-zona-c-mayor-ref-6147/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('7379', 'plaza-de-garaje-trastero-en-plaza-de-europa-ref-7379', 'Plaza de garaje + trastero en Plaza de Europa', '', 'Plaza de garaje mas trastero privado en la Plaza de Europa. Subterráneo, con puerta automática. Solo 15. 000€. RENTA LIBRE.',
  'venta', 'garaje', 15000, 'Écija', 'Sevilla', 'Plaza de Europa.', 'Écija',
  null, null, 252, null,
  ARRAY['Renta Libre']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2020/10/plaza-europa.png']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2020/10/plaza-europa.png', 'https://inmobiliarianoguera.com/property/plaza-de-garaje-trastero-en-plaza-de-europa-ref-7379/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('1154', 'casa-en-zona-centro-ref-1154', 'Casa en zona Centro', '', 'Casa en zona centro, con una Superficie de 250 m², 4 habitaciones (2 dobles, 2 individuales), 2 baños, ocina, comedor, patio y azotea,, aire acondicionado&#8230; Posibilidad de hacer garaje',
  'venta', 'casa', 220000, 'Écija', 'Sevilla', 'Centro', 'Écija',
  4, 2, 250, null,
  ARRAY['Aire acondicionado','Cocina amueblada','Renta Libre']::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2018/05/1154_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2018/05/1154_5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2018/05/1154_6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2018/05/1154_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2018/05/1154_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2018/05/1154_3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2018/05/1154_4.jpg', 'https://inmobiliarianoguera.com/property/casa-en-zona-centro-ref-1154/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('solar-en-canada-rosal', 'solar-en-canada-rosal', 'Solar en Cañada Rosal', '', 'Solar en Cañada Rosal, con 200m2, ideal para construir tu casa soñada o tu zona de ocio,',
  'venta', 'solar', 38000, 'Écija', 'Sevilla', 'Cañada Rosal', 'Écija',
  null, null, null, 2002,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2022/03/5c016359aed4d.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2022/03/5c016359aed4d.jpg', 'https://inmobiliarianoguera.com/property/solar-en-canada-rosal/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('7138', 'casa-con-terreno-en-cerro-perea-ref-7138', 'Casa con terreno en Cerro Perea. BAJADA DE PRECIO!', '', 'Casa en Cerro Perea, de unos 80m2 aproximadamente, con 4 habitaciones, salón, cocina y baño completo.Zona exterior con 300m2 aproximadamente, rodeada de arboles frutales. OBSERVACIONES: Casa para reformar o rehabilitar en Cerro Perea, muy cercano a Ecija. PRECIO: 65.000€. REF: 7138',
  'venta', 'casa', 65000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  4, 1, 3002, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2020/01/7138_0.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/7138_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2020/01/7138_2.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2020/01/7138_0.jpg', 'https://inmobiliarianoguera.com/property/casa-con-terreno-en-cerro-perea-ref-7138/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-en-el-casco-historico-de-ecija-2', 'casa-en-el-casco-historico-de-ecija-2', 'Casa en el casco historico de Écija', '', 'Casa en pleno centro de Écija',
  'venta', 'casa', 275000, 'Écija', 'Sevilla', 'El casco historico de Ecija', 'Écija',
  2, 3, 1652, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2022/12/1-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2022/12/2-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2022/12/4-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2022/12/8-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2022/12/11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2022/12/13-2.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2022/12/1-1.jpg', 'https://inmobiliarianoguera.com/property/casa-en-el-casco-historico-de-ecija-2/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('5259', 'parcela-en-ctra-marchena-ref-5259', 'Parcela en Ctra. Marchena', '', 'Parcela con 35000 m2, asfaltado, cultivable, arbolado, rejas, urbanizado, alumbrado&#8230; Dispone de pozo, electricidad, alcantarillado&#8230;. Dispone de una vivienda con 250 m2, 7 dormitorios, 3 baños, cocina, piscina….',
  'venta', 'parcela_urbana', 185000, 'Écija', 'Sevilla', 'Ctra. Marchena', 'Écija',
  7, 3, null, 35000,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5259_8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5259_1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5259_2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5259_3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5259_4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5259_5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5259_6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5259_7.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/11/5259_8.jpg', 'https://inmobiliarianoguera.com/property/parcela-en-ctra-marchena-ref-5259/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('2539', 'casa-en-el-centro-de-ecija-ref-2539', 'Casa en el centro de Écija', '', 'Ref 2539. Casa en el centro de écija, con una superficie de 200m2 construidos aproximadamente, dividida en dos plantas y compuesta por: hall de entrada, 6 habitaciones, amplio salón, cocina equipada, patio/corral, trasteros , dos baños completos y azotea. Casa para reformar, a dos minutos de la Plaza De España. Precio 110. 000€',
  'venta', 'casa', 110000, 'Écija', 'Sevilla', 'El centro de Ecija', 'Écija',
  6, 2, 2002, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2021/07/0-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/07/1-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/07/2-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/07/3-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/07/4-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/07/5-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/07/6-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/07/7-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/07/8-1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/07/9.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/07/10.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2021/07/11.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2021/07/0-1.jpeg', 'https://inmobiliarianoguera.com/property/casa-en-el-centro-de-ecija-ref-2539/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('local-comercial-zona-san-benito', 'local-comercial-zona-san-benito', 'Local comercial zona san benito', '', 'LOCAL COMERCIAL EN ZONA SAN BENITO (ECIJA)',
  'venta', 'local', 58000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, 1, 372, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2023/10/0-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2023/10/1-14.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2023/10/2-10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2023/10/3-11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2023/10/4-9.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2023/10/0-6.jpg', 'https://inmobiliarianoguera.com/property/local-comercial-zona-san-benito/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('plaza-de-garaje', 'plaza-de-garaje', 'Plaza de garaje', '', 'OPORTUNIDAD',
  'venta', 'garaje', 11500, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, 152, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2023/10/Sin-titulo.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2023/10/Sin-titulo.jpg', 'https://inmobiliarianoguera.com/property/plaza-de-garaje/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('local-en-el-centro-de-ecija', 'local-en-el-centro-de-ecija', 'Local en el centro de Écija', '', 'LOCAL EN VENTA EN ZONA CENTRO DE ÉCIJA (SEVILLA)',
  'venta', 'local', 63000, 'Écija', 'Sevilla', 'El centro de Ecija', 'Écija',
  null, 1, 402, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2023/11/IMG-20231024-WA0028.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2023/11/IMG-20231024-WA0031.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2023/11/IMG-20231024-WA0033.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2023/11/IMG-20231024-WA0035.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2023/11/IMG-20231024-WA0028.jpg', 'https://inmobiliarianoguera.com/property/local-en-el-centro-de-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('solar-cercano-al-centro-de-ecija', 'solar-cercano-al-centro-de-ecija', 'Solar cercano al centro de Écija', '', 'SOLAR SITUADO CERCANO AL CENTRO DE ECIJA (SEVILLA)',
  'venta', 'solar', 103700, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, null, 2502,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2023/11/LOGO.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2023/11/LOGO.jpg', 'https://inmobiliarianoguera.com/property/solar-cercano-al-centro-de-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-en-venta-2', 'casa-en-venta-2', 'Casa en venta', '', '????EXCLUSIVIDAD???? ✅ CASA EN ÉCIJA (SEVILLA) ????PRECIO: 260.000€ ???? ➡FINANCIAMOS HASTA EL 100%➡ ✅Inmobiliaria Noguera tiene casa con amplio patio. La vivienda cuenta con una superficie de aproximadamente 214 m2. Está distribuida en 5 dormitorios, cocina , salón y baño. Además cuenta con amplio patio. ✅Renta libre ➡Ref.: 8283 ➡Precio: 260.000€???? Para más información no dude en contactar con nosotros: ????www.inmobiliarianoguera.com info@inmobiliarianoguera.com ☎️95 590 07 48 / 653 855 641 #oportunidad #ecija #centrodeEcijal #inmobiliarianoguera #pisos #inmobiliaria #piso',
  'venta', 'casa', 260000, 'Écija', 'Sevilla', 'VENTA', 'Écija',
  5, 1, 2142, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/05/1-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/2-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/3-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/4-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/5-3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/6-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/7-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/8-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/9-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/10-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/11-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/12.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/13.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/14.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/15.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/16.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/JULIAN.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/05/1-3.jpg', 'https://inmobiliarianoguera.com/property/casa-en-venta-2/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('edificio-cercano-al-centro-de-ecija', 'edificio-cercano-al-centro-de-ecija', 'Edificio cercano al centro de Écija', '', 'EXCLUSIVIDAD',
  'venta', 'casa', 255000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  7, 2, 3002, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/05/0-5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/1-10.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/3-7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/4-9.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/5-11.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/7-6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/8-7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/10-7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/11-7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/12-5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/14-4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/05/16-2.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/05/0-5.jpg', 'https://inmobiliarianoguera.com/property/edificio-cercano-al-centro-de-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('solar-en-venta-en-ecija', 'solar-en-venta-en-ecija', 'Solar en venta zona calle mayor', '', '✴️EXCLUSIVIDAD✴️ ????SOLAR URBANO EN ZONA CALLE MAYOR, ECIJA ???? ????PRECIO: 80.000€ ???????? ➡FINANCIAMOS HASTA EL 100%➡ Inmobiliaria Noguera vende solar en pleno centro de Écija a pocos minutos del centro de Écija (Sevilla) El solar tiene una dimensión de aproximadamente 160 m2. Ideal para construir tu vivienda ideal. Consulte sin compromiso ➡️ URBANIZABLE ➡Ref.:7664 ➡Precio: 80.000€???? Para más información no dude en contactar con nosotros: ????www.inmobiliarianoguera.com info@inmobiliarianoguera.com ☎️95 590 07 48 / 653 855 641 #oportunidad #ecija #inmobiliarianoguera #viviendas #inmobiliarianoguera #idealista #fotocasa',
  'venta', 'solar', 80000, 'Écija', 'Sevilla', 'VENTA ZONA CALLE MAYOR', 'Écija',
  null, null, null, 1602,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/06/imagen_2024-06-21_132415503.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2026/06/1000_F_80608289_EYweHmlIKRlr5DCedYTEhXanOIqtZ3Ke.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/06/imagen_2024-06-21_132415503.jpg', 'https://inmobiliarianoguera.com/property/solar-en-venta-en-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('local-en-el-centro-de-ecija-2', 'local-en-el-centro-de-ecija-2', 'Local en el centro de Écija', '', 'OPORTUNIDAD BAJADA DE PRECIO',
  'venta', 'local', 120000, 'Écija', 'Sevilla', 'El CENTRO DE ECIJA', 'Écija',
  null, 1, 952, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/09/IMG-20240725-WA0013.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/09/IMG-20240725-WA0018.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/09/IMG-20240725-WA0020.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/09/IMG-20240725-WA0025.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/09/IMG-20240725-WA0026.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/09/IMG-20240725-WA0013.jpg', 'https://inmobiliarianoguera.com/property/local-en-el-centro-de-ecija-2/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('local-en-venta-en-ecija', 'local-en-venta-en-ecija', 'Local en venta en Écija', '', 'EXCLUSIVIDAD',
  'venta', 'local', 33000, 'Écija', 'Sevilla', 'VENTA EN ECIJA', 'Écija',
  null, 1, 202, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/09/0.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2024/09/1.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2024/09/2.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2024/09/3.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/09/0.jpeg', 'https://inmobiliarianoguera.com/property/local-en-venta-en-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('4748', 'parcela-rustica-zona-el-barrero-ref-4748', 'Parcela Rústica zona el Barrero', '', 'Parcela rústica de tierra de secano con proyecto industrial de una superficie de 3.364m2 asi como explotacion rustica con una superficie de 51.660m2.',
  'venta', 'parcela_rustica', 150000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, null, 516602,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2016/03/4748_1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2016/03/4748_1.jpg', 'https://inmobiliarianoguera.com/property/parcela-rustica-zona-el-barrero-ref-4748/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('plaza-de-garaje-en-las-huertas', 'plaza-de-garaje-en-las-huertas', 'Plaza de garaje en las huertas', '', 'EXCLUSIVIDAD',
  'venta', 'garaje', 11710, 'Écija', 'Sevilla', 'LAS HUERTAS', 'Écija',
  null, null, 182, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/10/image-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/10/image.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/10/image-1.jpg', 'https://inmobiliarianoguera.com/property/plaza-de-garaje-en-las-huertas/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
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
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('plaza-de-garaje-en-las-huertas-2', 'plaza-de-garaje-en-las-huertas-2', 'Plaza de garaje en las huertas', '', 'EXCLUSIVIDAD',
  'venta', 'garaje', 7000, 'Écija', 'Sevilla', 'LAS HUERTAS', 'Écija',
  null, null, 122, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/11/1-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/11/2-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/11/3-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/11/4.0.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/11/4-2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/11/5-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/11/6.0.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/11/6.1-1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/11/6-1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/11/1-2.jpg', 'https://inmobiliarianoguera.com/property/plaza-de-garaje-en-las-huertas-2/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-en-venta-a-10-minutos-de-ecija', 'casa-en-venta-a-10-minutos-de-ecija', 'Casa en venta a 10 minutos de Écija', '', 'EXCLUSIVIDAD',
  'venta', 'casa', 160000, 'Écija', 'Sevilla', 'VENTA A 10 MINUTOS DE ECIJA', 'Écija',
  4, 2, 1172, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0009.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0010.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0013.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0016.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0017.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0024.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0032.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0034.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0036.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0037.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0038.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0041.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0045.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0046.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0048.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0053.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0055.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0058.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0059.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0060.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0062.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0065.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0067.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0069.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0072.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0075.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0077.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0079.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0084.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0085.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/02/IMG-20250207-WA0009.jpg', 'https://inmobiliarianoguera.com/property/casa-en-venta-a-10-minutos-de-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('solar-urbano-a-10-min-de-ecija', 'solar-urbano-a-10-min-de-ecija', 'Solar urbano a 10 min de Écija', '', 'EXCLUSIVIDAD',
  'venta', 'solar', 37000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  null, null, null, 1802,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/02/1-3.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/02/1-3.jpg', 'https://inmobiliarianoguera.com/property/solar-urbano-a-10-min-de-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-en-puerta-osuna', 'casa-en-puerta-osuna', 'Casa en Puerta Osuna', '', 'BAJADA DE PRECIO EXCLUSIVIDAD',
  'venta', 'casa', 110000, 'Écija', 'Sevilla', 'Puerta Osuna', 'Écija',
  5, 1, 1902, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2022/07/0-13.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/07/1-14.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/07/4-12.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/07/7-8.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/07/8-3.jpeg','https://inmobiliarianoguera.com/wp-content/uploads/2022/07/9-2.jpeg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2022/07/0-13.jpeg', 'https://inmobiliarianoguera.com/property/casa-en-puerta-osuna/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('ultima-parcela-en-villanueva-del-rey', 'ultima-parcela-en-villanueva-del-rey', 'Ultima parcela en villanueva del rey', '', 'ÚLTIMA PARCELA URBANA EN VILLANUEVA DEL REY, URBANIZACION CARLOS III',
  'venta', 'parcela_urbana', 91000, 'Écija', 'Sevilla', 'VILLANUEVA DEL REY', 'Écija',
  null, null, null, 5632,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/03/1.png','https://inmobiliarianoguera.com/wp-content/uploads/2024/03/2-9.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/03/1.png', 'https://inmobiliarianoguera.com/property/ultima-parcela-en-villanueva-del-rey/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-de-renta-libre-cercana-al-centro', 'casa-de-renta-libre-cercana-al-centro', 'Casa de renta libre cercana al centro', '', 'EXCLUSIVIDAD',
  'venta', 'casa', 86000, 'Écija', 'Sevilla', 'Écija', 'Écija',
  7, 2, 2302, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2024/12/0.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/12/1.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/12/2.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/12/3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/12/4.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/12/5.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/12/6.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/12/7.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/12/8.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2024/12/9.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2024/12/0.jpg', 'https://inmobiliarianoguera.com/property/casa-de-renta-libre-cercana-al-centro/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('casa-para-derribar-en-ecija', 'casa-para-derribar-en-ecija', 'Casa para derribar en Écija', '', 'Esta espaciosa casa en venta se encuentra en Écija, con una superficie total de 360 m² y un terreno de 255 m². Con un total de 999 habitaciones individuales, 999 habitaciones dobles y 999 baños, ofrece un sinfín de posibilidades. Cuenta con cocina, comedor y se encuentra en estado de conservación a reformar. Ideal para aquellos que buscan espacio y potencial para reformar a su gusto.',
  'venta', 'casa', 75000, 'Écija', 'Sevilla', 'ECIJA', 'Écija',
  null, null, 3602, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2026/07/1.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2026/07/1.jpg', 'https://inmobiliarianoguera.com/property/casa-para-derribar-en-ecija/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
insert into public.properties
 (reference, slug, title, short_description, description, operation, property_type, price,
  location, province, zone, address, bedrooms, bathrooms, area, plot_area,
  features, images, image_fallback, source_url, featured, status, availability, agent_name, agent_phone, published_at)
 values ('local-en-venta-zona-calle-cordoba', 'local-en-venta-zona-calle-cordoba', 'Local en venta zona calle cordoba', '', 'Superficie total 100 m², local superficie solar 100 m², superficie útil 100 m², 1 aseo, escaparate, planta baja, exterior.',
  'venta', 'local', 88000, 'Écija', 'Sevilla', 'VENTA ZONA CALLE CORDOBA', 'Écija',
  null, 1, 1002, null,
  '{}'::text[], ARRAY['https://inmobiliarianoguera.com/wp-content/uploads/2025/03/Imagen-de-WhatsApp-2025-03-31-a-las-12.32.03_2be104dd.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/Imagen-de-WhatsApp-2025-03-31-a-las-12.32.07_5323e7c3.jpg','https://inmobiliarianoguera.com/wp-content/uploads/2025/03/Imagen-de-WhatsApp-2025-03-31-a-las-12.32.07_db76bc22.jpg']::text[], 'https://inmobiliarianoguera.com/wp-content/uploads/2025/03/Imagen-de-WhatsApp-2025-03-31-a-las-12.32.03_2be104dd.jpg', 'https://inmobiliarianoguera.com/property/local-en-venta-zona-calle-cordoba/',
  false, 'published', 'available', 'Equipo Noguera', '955 90 07 48', now())
 on conflict (reference) do update set
  title = excluded.title, price = excluded.price, description = excluded.description,
  images = excluded.images, availability = excluded.availability, updated_at = now();
commit;
