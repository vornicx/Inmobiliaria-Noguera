# Inmobiliaria Noguera — portal, panel comercial y SEO/GEO

Proyecto creado desde cero para Inmobiliaria Noguera. Incluye web pública, catálogo, fichas, captación de propietarios, zona privada de gestión, renderizado SEO en servidor y arquitectura local para Écija.

**SEM no forma parte del proyecto.** No se incluyen campañas, píxeles publicitarios ni herramientas de remarketing.

## Desplegar en Vercel

1. Sube este proyecto a GitHub e impórtalo en Vercel.
2. Selecciona **Other** como framework.
3. No configures comando de build ni directorio de salida.
4. Añade inicialmente:

```text
SITE_URL=https://TU-PROYECTO.vercel.app
```

5. Despliega.

Sin Supabase, la web funciona en modo demostración. El servidor genera HTML específico para cada ruta mediante `api/render.js`; no añadas un `index.html` en la raíz porque impediría que la portada pase por el renderizado SEO.

## Conectar Supabase

1. Crea un proyecto en Supabase.
2. Ejecuta `supabase/schema.sql`.
3. Ejecuta `supabase/seed.sql` solo si quieres cargar la cartera de prueba.
4. Crea al comercial en **Authentication → Users**.
5. Añade su UUID como perfil autorizado:

```sql
insert into public.profiles (id, full_name, role)
values ('UUID-DEL-USUARIO', 'Administrador Noguera', 'admin')
on conflict (id) do update
set full_name = excluded.full_name, role = excluded.role;
```

6. Configura en Vercel:

```text
SUPABASE_URL=https://TU-PROYECTO.supabase.co
SUPABASE_ANON_KEY=TU_CLAVE_ANON_PUBLICA
SITE_URL=https://inmobiliarianoguera.com
```

7. Vuelve a desplegar.

Nunca expongas `service_role`. La clave `anon` está protegida por las políticas RLS incluidas.

## Zona privada

Ruta: `/admin`

Modo demo:

```text
Correo: admin@noguera.demo
Contraseña: demo1234
```

Permite crear, editar, publicar, archivar y eliminar inmuebles; cambiar disponibilidad; subir fotografías; gestionar leads; conservar la URL anterior para redirecciones; y personalizar el título y la descripción SEO de una ficha cuando sea necesario.

## SEO y GEO

La implementación completa está documentada en [`SEO-GEO.md`](SEO-GEO.md). Incluye:

- renderizado HTML en servidor;
- títulos, descripciones, canonical y robots por ruta;
- sitemap dinámico con imágenes;
- schema de negocio, páginas, servicios, artículos y propiedades;
- páginas locales y guías útiles;
- redirecciones desde la web anterior;
- OAI-SearchBot, Bingbot y Googlebot;
- IndexNow al modificar inmuebles;
- Search Console, Bing y GA4 preparados mediante variables;
- analítica bloqueada hasta recibir consentimiento.

## Probar en local

Requiere Node 20 o superior:

```bash
npm run dev
```

Abre `http://localhost:4173`.

## Validación

```bash
npm run check
```

Comprueba sintaxis, imágenes, slugs, contenido mínimo, configuración de Vercel, metadatos únicos, canonical, robots, 404, JSON-LD, sitemap, páginas editoriales y renderizado inicial.

## Estructura principal

```text
api/render.js                 Renderizado SEO/GEO por ruta
api/_seo.js                   Resolución de metadatos, schema y contenido inicial
api/sitemap.js                Sitemap dinámico
api/indexnow.js               Aviso de cambios a buscadores compatibles
api/config.js                 Configuración pública segura
assets/app.js                 Interfaz pública y panel
assets/seo-data.js            Landings locales y guías
assets/seo.css                Diseño de páginas SEO/GEO
assets/service.js             Supabase y modo demo
supabase/schema.sql           Tablas, RLS, Auth y Storage
supabase/seed.sql             Datos iniciales de prueba
scripts/validate-seo.mjs      Auditoría automatizada SEO/GEO
vercel.json                   Rewrites, caché y cabeceras
robots.txt                    Directivas de rastreo
```

## Antes de publicar el dominio definitivo

Noguera debe confirmar catálogo, precios, disponibilidad, textos, coordenadas publicables y derechos sobre las imágenes. Las fotografías de demostración deben sustituirse por originales autorizados. También debe revisarse la información legal con su asesoría.
