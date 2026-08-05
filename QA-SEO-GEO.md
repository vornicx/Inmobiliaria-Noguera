# QA SEO/GEO — 5 de agosto de 2026

## Comprobaciones automáticas

Ejecutadas mediante `npm run check`:

- Sintaxis de todos los módulos de interfaz y funciones de Vercel.
- Integridad de ocho inmuebles demo y de sus imágenes locales.
- 16 páginas editoriales con titles y descriptions únicos.
- 31 URLs iniciales en el sitemap dinámico.
- Canonical, robots, H1 y JSON-LD en el HTML inicial.
- `noindex` en filtros, herramientas privadas y panel.
- 404 HTTP real para rutas inexistentes.
- `RealEstateAgent` en todas las páginas públicas.
- `RealEstateListing` en fichas de inmueble.
- Sitemap sin rutas privadas y con imágenes.
- Redirecciones 308 desde rutas antiguas principales.

## Comprobaciones visuales

Pantallas revisadas:

- `/pisos-venta-ecija` a 1440 px.
- `/guias/gastos-comprar-vivienda-andalucia` a 1440 px.
- `/valoracion-vivienda-ecija` a 390 px.

Resultado:

- 0 errores JavaScript.
- 0 desbordamiento horizontal.
- 1 H1 por pantalla.
- formularios, preguntas frecuentes, enlaces relacionados y footer renderizados.
- navegación responsive y contenido legible.

## Comprobaciones HTTP

- páginas públicas: `200` e `index,follow`.
- panel: `200`, `noindex,nofollow,noarchive` y caché privada desactivada.
- ruta inexistente: `404` y `noindex,follow`.
- rutas antiguas: `308` hacia la nueva arquitectura.
- sitemap: XML dinámico con `Content-Type: application/xml`.

## Dependencias externas pendientes

No son fallos del código:

- conectar el dominio definitivo;
- crear Supabase y ejecutar el esquema;
- migrar el catálogo completo conservando `source_url`;
- verificar Search Console y Bing Webmaster Tools;
- revisar el Perfil de Empresa de Google;
- sustituir imágenes demo por originales autorizados;
- confirmar datos, precios y disponibilidad con Noguera.
