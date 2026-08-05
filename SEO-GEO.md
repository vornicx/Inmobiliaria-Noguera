# SEO y GEO — Inmobiliaria Noguera

Esta versión aplica SEO técnico, SEO local y preparación para buscadores con respuestas generativas. No incluye SEM ni píxeles publicitarios.

## Qué está implementado

### Renderizado e indexación

- Renderizado HTML en servidor mediante Vercel Functions para cada ruta pública.
- `title`, descripción, canonical, robots, Open Graph y Twitter Card específicos por página.
- HTTP 404 real para rutas inexistentes.
- `noindex` en panel privado, favoritos, comparador, búsquedas guardadas, páginas legales y combinaciones de filtros.
- Sitemap XML dinámico con páginas, fichas publicadas, fechas de actualización e imágenes.
- Propiedades vendidas o alquiladas quedan fuera del sitemap y reciben `noindex` si siguen publicadas como referencia.
- Fichas de producción leídas desde Supabase durante el renderizado; si Supabase está configurado y falla, el servidor no sustituye la cartera por inmuebles demo.

### Arquitectura local

Páginas comerciales:

- `/inmobiliaria-ecija`
- `/pisos-venta-ecija`
- `/casas-venta-ecija`
- `/alquiler-ecija`
- `/vender-vivienda-ecija`
- `/valoracion-vivienda-ecija`
- `/alquiler-opcion-compra-ecija`
- `/obra-nueva-ecija`
- `/zonas/centro-ecija`
- `/zonas/alcarrachela`

Guías:

- `/guias`
- `/guias/vender-casa-ecija`
- `/guias/documentos-vender-vivienda`
- `/guias/gastos-comprar-vivienda-andalucia`
- `/guias/alquiler-opcion-compra`
- `/guias/como-valorar-vivienda-ecija`

Las páginas tienen respuestas directas, contenido visible, preguntas frecuentes, enlaces internos y llamadas comerciales. No son páginas automáticas creadas cambiando únicamente el nombre de la zona.

### Datos estructurados

El JSON-LD puede incluir, según la ruta:

- `RealEstateAgent` y `LocalBusiness`.
- `WebSite` y `WebPage`.
- `BreadcrumbList`.
- `RealEstateListing`, `Offer` y el tipo de inmueble.
- `CollectionPage` e `ItemList`.
- `Service`.
- `Article`.
- `FAQPage` cuando las preguntas y respuestas están visibles.

### Migración desde la web anterior

El renderizador aplica redirecciones permanentes desde:

- `/vender/` a `/vender-vivienda-ecija`.
- `/quienes-somos/` a `/nosotros`.
- `/agents/` a `/agentes`.
- `/contactar/` a `/contacto`.
- `/todos/`, paginaciones y antiguos formatos de listado a `/inmuebles`.
- filtros antiguos de piso, casa, venta y alquiler a las nuevas páginas pertinentes.
- cada URL antigua `/property/...` a la ficha nueva cuando el inmueble conserva `source_url` en Supabase.

No se debe borrar `source_url` durante la migración del catálogo.

### GEO y buscadores con IA

- `OAI-SearchBot` puede rastrear las páginas públicas para que ChatGPT Search pueda descubrirlas y citarlas.
- `GPTBot` está bloqueado de forma separada.
- Bingbot y Googlebot pueden rastrear el contenido público.
- El contenido principal se entrega como texto HTML desde la primera respuesta.
- Las guías incluyen autor, fecha de revisión, respuestas directas y fuentes oficiales.
- La entidad Noguera mantiene nombre, dirección, teléfono, equipo, redes y área de servicio de forma consistente.
- No se usa `llms.txt` porque no existe un requisito general de Google ni garantiza visibilidad en asistentes.

### Actualización de buscadores

- Al publicar, editar, retirar o cambiar la disponibilidad de un inmueble, el panel llama a `/api/indexnow`.
- IndexNow recibe la ficha, el catálogo y el sitemap afectados.
- El sitemap se genera desde los datos actuales de Supabase.

### Analítica respetuosa con el consentimiento

- GA4 permanece completamente descargado mientras no se acepte la categoría analítica.
- Se configura con `GA_MEASUREMENT_ID`.
- Mide páginas vistas en navegación SPA, formularios enviados, llamadas y clics a WhatsApp.
- No se incluye Meta Pixel ni seguimiento publicitario.

## Variables de Vercel

```text
SITE_URL=https://inmobiliarianoguera.com
SUPABASE_URL=https://TU-PROYECTO.supabase.co
SUPABASE_ANON_KEY=TU_ANON_KEY
GOOGLE_SITE_VERIFICATION=
BING_SITE_VERIFICATION=
GA_MEASUREMENT_ID=
INDEXNOW_KEY=8f5247e3ddad4ee4a985f6b8af52bb13
```

`SITE_URL` debe ser el dominio definitivo antes de solicitar indexación.

## Acciones externas después del despliegue

1. Verificar el dominio en Google Search Console.
2. Enviar `https://inmobiliarianoguera.com/sitemap.xml`.
3. Verificar el sitio en Bing Webmaster Tools y enviar el mismo sitemap.
4. Revisar el Perfil de Empresa de Google: nombre real, categoría, dirección, horario, teléfonos, servicios, URL y fotografías.
5. Mantener exactamente el mismo NAP —nombre, dirección y teléfono— en web, Google, redes y portales.
6. Migrar cada ficha conservando su `source_url` antigua.
7. Solicitar indexación solo de páginas terminadas y con información confirmada.
8. Revisar semanalmente errores de cobertura, Core Web Vitals, consultas y páginas de entrada.
9. Solicitar reseñas reales después de operaciones y responderlas; nunca publicar testimonios inventados.
10. Actualizar guías cuando cambien impuestos, normativa o procedimientos.

## Límites honestos

El código permite rastrear, entender y citar mejor la web, pero ningún proveedor puede garantizar una posición concreta en Google o una mención determinada en ChatGPT. El resultado dependerá también de la cartera real, calidad de las fotografías, reputación local, reseñas, enlaces, competencia y mantenimiento editorial.
