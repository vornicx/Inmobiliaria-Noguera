# QA V6 — corrección rigurosa antes de presentación

## Bloqueadores corregidos

| Problema | Solución aplicada | Validación |
|---|---|---|
| Propiedades superpuestas en portada | Cuadrícula uniforme de tres columnas, sin spans heredados, offsets negativos ni posicionamiento absoluto | 6 tarjetas, 0 intersecciones a 1440 px y 390 px |
| Cookies tapando buscador o tarjetas | Aviso dentro del flujo del documento, sin posición fija ni transformación lateral | Caja dentro del viewport en escritorio y móvil |
| WhatsApp compitiendo con cookies y ficha | Se oculta mientras el aviso está abierto y no se renderiza en la ficha | Sin colisiones flotantes |
| Tarjetas sin imagen | Placeholder de marca, `onerror` seguro y bloqueo de publicación sin galería | Validador comprueba todos los archivos locales |
| Hueco vacío en bloque de venta móvil | Imagen con `aspect-ratio` y layout de una columna sin altura heredada | Sin altura fantasma ni desbordes |
| Pestañas cortadas en catálogo | Navegación desplazable con `scroll-snap` y buscador en bloque propio | Sin overflow horizontal |
| Campos truncados en visita | Etiquetas visibles, una columna en anchos pequeños y fecha `dd/mm/aaaa` | Ficha móvil comprobada |
| Render NOVAÉ confundido con fotografía | Etiqueta “Render oficial orientativo” y exclusión de destacados | Validación automática |
| Panel cortado en escritorio | Eliminado el doble desplazamiento de la barra lateral; grid y acciones recalculados | Acciones completas dentro de 1440 px |
| Panel no demostrado en móvil | Filas convertidas en tarjetas y acciones reordenadas | Captura y prueba a 390 px |
| Simulador incompleto o solapado | Cuota inicial calculada y resultado apilado en móvil | Sin overflow, resultado visible |

## Mejoras de producto aplicadas

- Hero simplificado y recorte responsive.
- Tipografía Manrope + DM Sans sin cursivas decorativas.
- Jerarquía reducida en titulares y footer.
- Catálogo de tres columnas en escritorio y una en móvil.
- Filtros sin duplicar operación o búsqueda.
- Mapa aproximado previo al mapa interactivo.
- Publicación bloqueada si faltan imágenes, resumen o descripción.
- Filas del panel con cabecera semántica, calidad y acciones explícitas.
- Estados vacíos compactos en administración.
- Contraste, foco visible, enlace de salto y reducción de movimiento.

## Pruebas ejecutadas

- `npm run check`.
- Portada con y sin consentimiento: 1440 × 1000 y 390 × 844.
- Catálogo: 1440 × 1000 y 390 × 844.
- Ficha: 1440 × 1000 y 390 × 844.
- Resumen admin: 1440 × 1000 y 390 × 844.
- Cartera admin: 1440 × 1000 y 390 × 844.
- Errores JavaScript capturados: 0.
- Desbordamiento horizontal: 0 px.
- Intersecciones entre tarjetas de portada y catálogo: 0.

## Visor de imágenes de las fichas

El visor se había corregido dos veces y el fallo reaparecía. La causa de la
reaparición no estaba en el visor: `vercel.json` servía `/assets/*` como
`immutable` durante un año y los archivos no llevan huella en el nombre, así
que quien ya había visitado la web seguía ejecutando el `app.js` anterior a la
corrección. Cada arreglo funcionaba en un navegador limpio y seguía roto en el
del cliente.

| Problema | Solución aplicada |
|---|---|
| La corrección publicada no llegaba al navegador | `/assets/*` pasa a `max-age=0, must-revalidate`; `api/render.js` versiona hojas y módulos con `?v=` y un `importmap` que evita mezclar un `app.js` nuevo con un `service.js` viejo |
| “Ver N fotos” colocado respecto al documento | `.gallery` es `position: relative`, que es el ancestro que el botón absoluto necesitaba |
| Foto caída con icono de imagen rota dentro del visor | La imagen del modal usa el mismo respaldo `onerror` que la cuadrícula |
| `#modal-root` vacío tragándose los toques en móvil | `mobile.css` lo estira a `fixed; inset: 0`, y con la z más alta del sitio interceptaba **todos** los toques: no solo el visor, la web móvil entera dejaba de responder. El contenedor pasa a `pointer-events: none` y el puntero lo recibe `.modal-backdrop`, que solo existe con el visor abierto |
| Regresiones silenciosas | `scripts/validate-visor.mjs`, dentro de `npm run check`: delegación en `document`, acciones y teclas del visor, `#modal-root` por encima de cookies y WhatsApp pero sin capturar el puntero, `pointer-events` de fondo y controles, respaldo de imagen y caché de `/assets` |

Comprobado a 1440 × 900 y 390 × 844: abrir, siguiente, anterior, teclado,
clic sobre la foto sin cerrar, cerrar, reabrir desde “Ver N fotos”, `Escape`,
liberación del scroll y foto caída servida como 404.

## Dependencias externas pendientes

El código no puede crear originales fotográficos que la inmobiliaria no haya entregado. Las marcas de agua y la compresión pertenecen a las copias públicas existentes. Para el lanzamiento final deben sustituirse desde `/admin` por los archivos autorizados de Noguera.
