export const SITE_ORIGIN = 'https://inmobiliarianoguera.com';
export const SEO_UPDATED_AT = '2026-08-05T11:45:00+02:00';

export const SEO_PAGES = {
  '/inmobiliaria-ecija': {
    kind: 'service',
    eyebrow: 'Inmobiliaria en Écija',
    title: 'Inmobiliaria en Écija para comprar, vender y alquilar con claridad',
    metaTitle: 'Inmobiliaria en Écija | Inmobiliaria Noguera',
    description: 'Inmobiliaria Noguera acompaña compraventas, alquileres, valoraciones y financiación en Écija desde 2007. Consulta la cartera y habla con el equipo local.',
    intro: 'Noguera es una inmobiliaria de Écija con oficina física y equipo propio. La web reúne la cartera disponible, permite solicitar visitas y facilita una vía directa para valorar o comercializar una propiedad.',
    answer: 'Inmobiliaria Noguera trabaja en Écija desde 2007 y presta servicios de compraventa, alquiler, valoración, financiación y atención posventa desde su oficina de Ronda San Agustín, 35.',
    bullets: [
      'Cartera actualizada de viviendas, locales, naves, solares y terrenos.',
      'Solicitud de visita y contacto directo con el equipo comercial.',
      'Valoración y plan de comercialización para propietarios.',
      'Acompañamiento documental y coordinación hasta la firma.'
    ],
    faq: [
      ['¿Dónde está Inmobiliaria Noguera?', 'La oficina está en Ronda San Agustín, 35, 41400 Écija, Sevilla.'],
      ['¿Qué tipo de inmuebles gestiona?', 'La cartera puede incluir pisos, áticos, casas, chalets, locales, naves, solares, parcelas y garajes, según disponibilidad.'],
      ['¿Puedo solicitar una valoración?', 'Sí. El propietario puede facilitar los datos básicos del inmueble y pedir una primera valoración y un plan de comercialización.'],
      ['¿Cómo puedo pedir una visita?', 'Desde cada ficha se puede solicitar una fecha orientativa, llamar a la oficina o contactar por WhatsApp.']
    ],
    related: ['/inmuebles', '/valoracion-vivienda-ecija', '/nosotros', '/contacto']
  },
  '/pisos-venta-ecija': {
    kind: 'collection',
    eyebrow: 'Pisos en venta',
    title: 'Pisos en venta en Écija con información clara y visita directa',
    metaTitle: 'Pisos en venta en Écija | Inmobiliaria Noguera',
    description: 'Consulta pisos y áticos en venta en Écija. Filtra por zona, precio y características y solicita una visita directamente a Inmobiliaria Noguera.',
    intro: 'Explora pisos, áticos y apartamentos disponibles en Écija. Cada ficha muestra referencia, precio, superficie, distribución, estado de disponibilidad y fotografías aportadas por la agencia.',
    answer: 'La oferta de pisos en Écija cambia con frecuencia. Esta página reúne únicamente las fichas publicadas por Noguera y permite contactar con la agencia para confirmar precio, disponibilidad y condiciones.',
    filter: { operation: 'venta', types: ['piso', 'ático', 'apartamento'] },
    bullets: ['Pisos en planta baja, edificios con ascensor y viviendas con terraza.', 'Información de superficie, dormitorios, baños y referencia.', 'Aviso de disponibilidad: disponible, reservado o vendido.', 'Solicitud de visita vinculada a cada inmueble.'],
    faq: [
      ['¿Los precios están actualizados?', 'El panel comercial permite actualizar precio y disponibilidad. Antes de tomar una decisión, la agencia confirma los datos vigentes con la propiedad.'],
      ['¿Puedo filtrar por zona?', 'Sí. El catálogo permite buscar por localidad, zona, referencia, precio y tipo de inmueble.'],
      ['¿Se publican los gastos de compra?', 'El precio anunciado no incluye, salvo indicación expresa, impuestos ni gastos de notaría, registro, gestoría u otros costes asociados.'],
      ['¿Puedo guardar pisos para verlos después?', 'Sí. Los favoritos y el comparador se guardan en el dispositivo del visitante.']
    ],
    related: ['/inmuebles?operation=venta&type=piso', '/casas-venta-ecija', '/guias/gastos-comprar-vivienda-andalucia', '/contacto']
  },
  '/casas-venta-ecija': {
    kind: 'collection',
    eyebrow: 'Casas en venta',
    title: 'Casas y chalets en venta en Écija y su entorno',
    metaTitle: 'Casas en venta en Écija | Inmobiliaria Noguera',
    description: 'Encuentra casas, chalets y viviendas para reformar en Écija y su entorno. Consulta superficies, exteriores, precio y disponibilidad con Noguera.',
    intro: 'Esta selección reúne casas, chalets y viviendas para reformar publicadas por Inmobiliaria Noguera en Écija y localidades cercanas.',
    answer: 'Para comparar casas en Écija conviene revisar no solo el precio, sino también la superficie construida, el estado, los espacios exteriores, el aparcamiento y la situación urbanística.',
    filter: { operation: 'venta', types: ['casa', 'chalet', 'casa_reformar'] },
    bullets: ['Casas de varias plantas y viviendas en una sola planta.', 'Chalets con parcela, piscina o construcciones auxiliares.', 'Información sobre patios, terrazas, garajes y sótanos.', 'Contacto para confirmar documentación y situación urbanística.'],
    faq: [
      ['¿La dirección exacta se muestra siempre?', 'No. En determinados inmuebles se publica una zona aproximada para proteger la privacidad del propietario.'],
      ['¿Cómo sé si una casa está reservada?', 'La ficha muestra su estado de disponibilidad y el equipo puede confirmarlo por teléfono o WhatsApp.'],
      ['¿Se puede solicitar información urbanística?', 'La agencia puede facilitar la información disponible y recomendar las verificaciones profesionales necesarias antes de comprar.'],
      ['¿Hay casas fuera de Écija?', 'La cartera puede incluir inmuebles en el entorno y localidades cercanas, siempre identificados en la ficha.']
    ],
    related: ['/inmuebles?operation=venta&type=casa', '/pisos-venta-ecija', '/zonas/alcarrachela', '/contacto']
  },
  '/alquiler-ecija': {
    kind: 'collection',
    eyebrow: 'Alquiler en Écija',
    title: 'Pisos y casas de alquiler en Écija según disponibilidad',
    metaTitle: 'Alquiler en Écija | Pisos y casas disponibles',
    description: 'Consulta viviendas de alquiler en Écija y deja tu búsqueda a Inmobiliaria Noguera. La disponibilidad se confirma directamente con el equipo.',
    intro: 'La oferta de alquiler cambia con rapidez. Esta página muestra los inmuebles publicados como disponibles y permite enviar una búsqueda personalizada al equipo.',
    answer: 'Cuando no hay viviendas visibles, no significa que Noguera haya dejado de gestionar alquileres: la disponibilidad puede cambiar antes de que una nueva ficha llegue a publicarse.',
    filter: { operation: 'alquiler' },
    bullets: ['Resultados limitados a alquiler residencial publicado.', 'Formulario para indicar zona, presupuesto y necesidades.', 'Confirmación directa de condiciones y documentación.', 'Acceso separado al alquiler vacacional.'],
    faq: [
      ['¿Qué documentación suelen pedir para alquilar?', 'Depende de la propiedad y del estudio de solvencia. La agencia comunica la documentación necesaria en cada caso.'],
      ['¿Puedo recibir avisos?', 'Puedes guardar una búsqueda en el dispositivo y dejar tus datos para que el equipo conozca tus criterios.'],
      ['¿El alquiler vacacional aparece aquí?', 'No. Los alojamientos vacacionales se gestionan en una sección independiente.'],
      ['¿La fianza está incluida en el precio?', 'La ficha debe indicar la renta mensual. Fianza, garantías y otros conceptos se confirman antes de formalizar el contrato.']
    ],
    related: ['/inmuebles?operation=alquiler', '/alquiler-vacacional', '/alquiler-opcion-compra-ecija', '/contacto']
  },
  '/vender-vivienda-ecija': {
    kind: 'service',
    eyebrow: 'Vender una vivienda',
    title: 'Vender una vivienda en Écija con un plan comercial verificable',
    metaTitle: 'Vender vivienda en Écija | Inmobiliaria Noguera',
    description: 'Solicita una valoración y conoce el proceso para vender una vivienda en Écija: preparación, publicación, visitas, seguimiento y coordinación documental.',
    intro: 'Vender bien no consiste únicamente en publicar un anuncio. El proceso empieza con la revisión del inmueble y continúa con la presentación, el filtrado de contactos, las visitas y la coordinación de la operación.',
    answer: 'Noguera puede estudiar el inmueble, proponer una estrategia de salida y gestionar las consultas y visitas. El propietario mantiene una vía directa de contacto con el equipo.',
    bullets: ['Revisión de características, estado y documentación disponible.', 'Selección y orden de fotografías y datos de la ficha.', 'Publicación y actualización de precio y disponibilidad.', 'Seguimiento de consultas, visitas y próximos pasos.'],
    faq: [
      ['¿La valoración obliga a vender con la agencia?', 'La primera conversación sirve para entender el inmueble y el servicio. Las condiciones del encargo se explican antes de firmar.'],
      ['¿Qué documentos conviene preparar?', 'Entre otros, identificación, título de propiedad, información registral y catastral, recibos y certificado energético cuando corresponda.'],
      ['¿Se puede vender una vivienda heredada?', 'Sí, pero antes deben revisarse la titularidad y los trámites sucesorios. La complejidad depende de cada caso.'],
      ['¿Cómo se gestionan las visitas?', 'El equipo coordina las solicitudes y comunica al propietario la información necesaria para organizar cada visita.']
    ],
    related: ['/valoracion-vivienda-ecija', '/guias/vender-casa-ecija', '/guias/documentos-vender-vivienda', '/contacto']
  },
  '/valoracion-vivienda-ecija': {
    kind: 'service',
    eyebrow: 'Valoración de vivienda',
    title: 'Valoración de vivienda en Écija basada en datos y contexto real',
    metaTitle: 'Valoración de vivienda en Écija | Noguera',
    description: 'Pide una valoración inicial de tu piso, casa, local o terreno en Écija. Noguera revisa ubicación, estado, superficie y comparables disponibles.',
    intro: 'Una valoración comercial útil debe explicar de dónde sale la horquilla propuesta y qué factores pueden acelerar o frenar la venta.',
    answer: 'Para valorar una vivienda se analizan la ubicación, el tipo de inmueble, la superficie, la distribución, el estado, los exteriores, el edificio, la documentación y las referencias comparables disponibles.',
    bullets: ['Datos objetivos del inmueble y su entorno.', 'Estado de conservación y mejoras relevantes.', 'Comparación con oferta y operaciones conocidas.', 'Recomendación de precio y estrategia, no una cifra automática aislada.'],
    faq: [
      ['¿Una valoración comercial es una tasación hipotecaria?', 'No. La valoración comercial orienta la estrategia de venta; una tasación oficial para una hipoteca debe realizarla una sociedad homologada.'],
      ['¿Qué información necesito facilitar?', 'Dirección o zona, tipo, superficie, dormitorios, baños, estado, planta, ascensor, exteriores, aparcamiento y cualquier circunstancia relevante.'],
      ['¿Puede hacerse sin visitar el inmueble?', 'Puede prepararse una orientación inicial, pero una visita mejora la precisión porque permite comprobar estado, distribución y elementos diferenciales.'],
      ['¿El valor catastral es el precio de mercado?', 'No. El valor catastral y el valor de referencia tienen funciones tributarias y no sustituyen una valoración comercial o tasación.']
    ],
    related: ['/vender-vivienda-ecija', '/guias/como-valorar-vivienda-ecija', '/guias/documentos-vender-vivienda', '/contacto']
  },
  '/alquiler-opcion-compra-ecija': {
    kind: 'service',
    eyebrow: 'Opción a compra',
    title: 'Alquiler con opción a compra en Écija: qué revisar antes de firmar',
    metaTitle: 'Alquiler con opción a compra en Écija | Noguera',
    description: 'Consulta inmuebles con opción a compra en Écija y entiende precio, prima, plazo, rentas descontables y condiciones antes de firmar.',
    intro: 'El alquiler con opción a compra combina un arrendamiento y un derecho de compra futuro. Las condiciones deben quedar escritas con precisión.',
    answer: 'Antes de firmar hay que concretar el precio de compra, el plazo para ejercer la opción, la prima, qué parte de las rentas se descuenta y qué ocurre si la compra no se ejecuta.',
    filter: { operation: 'alquiler_opcion' },
    bullets: ['Precio de venta y vigencia de la opción.', 'Prima inicial y tratamiento si no se compra.', 'Porcentaje de renta descontable.', 'Reparto de gastos, reparaciones e impuestos.'],
    faq: [
      ['¿Todas las rentas se descuentan del precio?', 'No necesariamente. El contrato debe especificar el porcentaje o importe descontable.'],
      ['¿La prima se devuelve si no compro?', 'Depende de lo pactado. Es un punto que debe revisarse expresamente antes de firmar.'],
      ['¿Es obligatorio comprar al final?', 'La opción da un derecho, no una obligación, salvo que el contrato incorpore compromisos adicionales.'],
      ['¿Conviene revisar la situación registral?', 'Sí. Como en cualquier compraventa, conviene verificar titularidad, cargas y condiciones jurídicas del inmueble.']
    ],
    related: ['/inmuebles?operation=alquiler_opcion', '/guias/alquiler-opcion-compra', '/financiacion', '/contacto']
  },
  '/obra-nueva-ecija': {
    kind: 'collection',
    eyebrow: 'Obra nueva',
    title: 'Obra nueva y promociones de vivienda en Écija',
    metaTitle: 'Obra nueva en Écija | Promociones de vivienda',
    description: 'Consulta promociones de obra nueva comercializadas por Inmobiliaria Noguera en Écija. Tipologías, disponibilidad y condiciones se confirman con la agencia.',
    intro: 'Las promociones requieren información especialmente precisa sobre tipologías, memoria de calidades, plazos, eficiencia energética, forma de pago y disponibilidad.',
    answer: 'Las imágenes de una promoción en construcción pueden ser renders orientativos. La ficha debe identificarlo y diferenciar claramente el material comercial de las fotografías reales.',
    filter: { references: ['NOVAÉ'], features: ['Obra nueva'] },
    bullets: ['Tipologías y superficies disponibles.', 'Memoria de calidades y eficiencia energética.', 'Calendario orientativo y situación de la promoción.', 'Condiciones económicas confirmadas por la agencia.'],
    faq: [
      ['¿Los renders muestran el resultado definitivo?', 'Son representaciones orientativas. El resultado se rige por el proyecto, la memoria de calidades y la documentación contractual.'],
      ['¿Cómo se confirma la disponibilidad?', 'El equipo comercial verifica qué tipologías siguen disponibles y sus condiciones actuales.'],
      ['¿El precio incluye impuestos?', 'La fiscalidad y los gastos se detallan para cada operación; no deben darse por incluidos salvo indicación expresa.'],
      ['¿Puedo pedir planos y memoria de calidades?', 'Sí, cuando la promotora haya autorizado su entrega y la documentación esté disponible.']
    ],
    related: ['/inmuebles', '/guias/gastos-comprar-vivienda-andalucia', '/financiacion', '/contacto']
  },
  '/zonas/centro-ecija': {
    kind: 'area',
    eyebrow: 'Zona Centro',
    title: 'Viviendas y locales en el centro de Écija',
    metaTitle: 'Viviendas en el centro de Écija | Noguera',
    description: 'Consulta pisos, casas, locales y solares publicados por Noguera en el centro de Écija. Revisa edificio, accesibilidad, aparcamiento y estado.',
    intro: 'El centro de Écija reúne viviendas en edificios de distintas épocas, casas tradicionales, locales y solares. Cada inmueble requiere revisar accesibilidad, conservación y posibilidades de reforma.',
    answer: 'Al comparar inmuebles en el centro conviene comprobar planta y ascensor, estado del edificio, aparcamiento, luz natural, protección patrimonial y alcance real de una posible reforma.',
    filter: { text: ['centro', 'merinos', 'puerta palma'] },
    bullets: ['Pisos y casas cerca de servicios cotidianos.', 'Locales y solares con usos sujetos a normativa.', 'Edificios con y sin ascensor.', 'Dirección exacta protegida cuando lo solicita la propiedad.'],
    faq: [
      ['¿Todas las viviendas del centro tienen ascensor?', 'No. La ficha debe indicar la planta y la existencia de ascensor cuando se conoce.'],
      ['¿Se puede reformar libremente?', 'Depende del inmueble y de la normativa aplicable. Antes de comprar conviene revisar licencias, protección y viabilidad técnica.'],
      ['¿La web publica la calle exacta?', 'Solo cuando la propiedad y la estrategia comercial lo permiten. En otros casos se muestra una zona aproximada.'],
      ['¿También hay locales y solares?', 'Sí, la cartera del centro puede incluir vivienda, local comercial, garaje o suelo, según disponibilidad.']
    ],
    related: ['/pisos-venta-ecija', '/casas-venta-ecija', '/inmuebles?q=centro', '/contacto']
  },
  '/zonas/alcarrachela': {
    kind: 'area',
    eyebrow: 'La Alcarrachela',
    title: 'Pisos y casas en La Alcarrachela, Écija',
    metaTitle: 'Viviendas en La Alcarrachela, Écija | Noguera',
    description: 'Consulta pisos, áticos, casas y garajes en La Alcarrachela publicados por Inmobiliaria Noguera. Confirma precio y disponibilidad.',
    intro: 'La cartera de La Alcarrachela puede incluir pisos, áticos, casas, garajes y viviendas con patios o terrazas. Esta página agrupa únicamente anuncios publicados por la agencia.',
    answer: 'Para elegir una vivienda en La Alcarrachela conviene comparar superficie útil, exteriores, aparcamiento, ascensor, régimen de protección y gastos de comunidad.',
    filter: { text: ['alcarrachela'] },
    bullets: ['Viviendas con terrazas, patios o porches.', 'Pisos en planta baja y áticos.', 'Garajes y aparcamiento según ficha.', 'Régimen libre o protegido cuando se conoce.'],
    faq: [
      ['¿Hay viviendas de protección oficial?', 'Algunas propiedades pueden estar sujetas a régimen de protección. La ficha debe identificarlo y la agencia confirma las condiciones.'],
      ['¿Se publican garajes por separado?', 'Sí, cuando forman una propiedad independiente o una oferta específica.'],
      ['¿Cómo sé si hay una terraza grande?', 'La ficha describe la superficie cuando está disponible y la galería ayuda a entender su distribución.'],
      ['¿Puedo dejar una búsqueda aunque no haya resultados?', 'Sí. Puedes contactar con el equipo e indicar tipo, presupuesto y características.']
    ],
    related: ['/inmuebles?q=alcarrachela', '/pisos-venta-ecija', '/casas-venta-ecija', '/contacto']
  }
};

export const GUIDES = {
  '/guias': {
    kind: 'guideHub',
    eyebrow: 'Guías inmobiliarias',
    title: 'Información útil para comprar, vender y alquilar con más criterio',
    metaTitle: 'Guías inmobiliarias de Écija | Inmobiliaria Noguera',
    description: 'Guías prácticas de Inmobiliaria Noguera sobre venta, documentación, valoración, impuestos y alquiler con opción a compra.',
    intro: 'Respuestas claras sobre las decisiones y documentos que aparecen en una operación inmobiliaria. El contenido es informativo y se revisa frente a fuentes oficiales.'
  },
  '/guias/vender-casa-ecija': {
    kind: 'guide',
    eyebrow: 'Guía para propietarios',
    title: 'Cómo vender una casa en Écija paso a paso',
    metaTitle: 'Cómo vender una casa en Écija: guía paso a paso',
    description: 'Proceso para vender una casa en Écija: documentación, valoración, presentación, publicación, visitas, negociación y firma.',
    intro: 'Una venta ordenada reduce cambios de última hora. Estos son los pasos que conviene preparar desde la primera valoración hasta la entrega de llaves.',
    answer: 'Para vender una casa en Écija hay que comprobar la titularidad y documentación, definir un precio razonado, preparar la presentación, filtrar contactos, organizar visitas y coordinar reserva, contrato y escritura.',
    sections: [
      ['1. Revisar la situación del inmueble', 'Antes de anunciar conviene identificar titulares, cargas, referencia catastral, superficie, régimen de protección, comunidad, suministros y cualquier circunstancia que pueda afectar a la venta.'],
      ['2. Definir una horquilla de salida', 'La valoración debe combinar características objetivas, estado, ubicación y comparables. Un precio alto sin justificación puede alargar la comercialización; uno bajo puede destruir valor.'],
      ['3. Preparar la vivienda y la ficha', 'Orden, luz, pequeñas reparaciones y fotografías honestas ayudan a explicar el inmueble. La ficha debe distinguir datos confirmados de estimaciones.'],
      ['4. Gestionar consultas y visitas', 'Conviene registrar cada contacto, confirmar su interés y organizar visitas con información suficiente. El seguimiento evita perder oportunidades y permite detectar objeciones repetidas.'],
      ['5. Negociar y documentar', 'Precio, plazos, bienes incluidos, financiación y condiciones deben quedar claros antes de firmar una reserva o arras. Las dudas jurídicas o fiscales deben revisarse con el profesional correspondiente.'],
      ['6. Preparar la firma y entrega', 'Antes de escritura se coordinan documentación, certificados, comunidad, recibos, medios de pago, cancelación de cargas cuando exista y entrega de llaves.']
    ],
    faq: [
      ['¿Cuánto tarda en venderse una casa?', 'No existe un plazo universal. Influyen precio, estado, demanda, documentación, financiación del comprador y capacidad de respuesta durante la comercialización.'],
      ['¿Debo reformar antes de vender?', 'No siempre. Conviene priorizar reparaciones que eviten rechazo o dudas y comparar su coste con el valor que realmente pueden aportar.'],
      ['¿Puedo vender si queda hipoteca?', 'Sí, pero la deuda y el procedimiento de cancelación deben coordinarse con la entidad y la notaría.'],
      ['¿Qué es un contrato de arras?', 'Es un acuerdo previo que fija condiciones y consecuencias del desistimiento. Su redacción debe adaptarse a la operación concreta.']
    ],
    sources: [
      ['Junta de Andalucía · Trámites de compraventa', 'https://www.juntadeandalucia.es/temas/vivienda-consumo/compra/tramites.html'],
      ['Junta de Andalucía · Contrato de compraventa e hipoteca', 'https://www.juntadeandalucia.es/temas/vivienda-consumo/compra/contrato.html']
    ],
    related: ['/vender-vivienda-ecija', '/valoracion-vivienda-ecija', '/guias/documentos-vender-vivienda']
  },
  '/guias/documentos-vender-vivienda': {
    kind: 'guide',
    eyebrow: 'Documentación',
    title: 'Documentos que conviene preparar para vender una vivienda',
    metaTitle: 'Documentos para vender una vivienda | Guía práctica',
    description: 'Lista práctica de documentos para vender una vivienda: titularidad, nota simple, catastro, IBI, comunidad, certificado energético y cargas.',
    intro: 'La lista exacta depende del inmueble y de la operación, pero preparar la documentación con tiempo evita retrasos y ayuda a detectar incidencias.',
    answer: 'Normalmente conviene reunir identificación de titulares, título de propiedad, nota simple reciente, referencia catastral, recibo de IBI, certificado de comunidad, certificado energético y documentación de cargas o reformas.',
    sections: [
      ['Identidad y titularidad', 'Documentos de identidad de los titulares y escritura, adjudicación de herencia u otro título que explique cómo se adquirió el inmueble.'],
      ['Información registral y cargas', 'Una nota simple permite comprobar descripción, titularidad y cargas registrales. Si existe hipoteca, embargo o usufructo, hay que planificar su tratamiento.'],
      ['Catastro e IBI', 'La referencia catastral, la descripción catastral y los recibos ayudan a contrastar datos y obligaciones tributarias. Registro y Catastro pueden no coincidir y la diferencia debe analizarse.'],
      ['Comunidad y suministros', 'En propiedades sujetas a comunidad suele solicitarse certificado de estar al corriente. También conviene disponer de información sobre derramas, cuotas y contratos de suministro.'],
      ['Eficiencia energética', 'La venta o alquiler puede requerir certificado energético y su correspondiente etiqueta, con las excepciones previstas legalmente.'],
      ['Documentación adicional', 'Según el caso pueden ser necesarios licencias, declaración de obra, planos, contratos de arrendamiento, documentación de VPO, herencia, poderes o acuerdos entre copropietarios.']
    ],
    faq: [
      ['¿La nota simple es obligatoria?', 'Es una comprobación esencial para entender titularidad y cargas, aunque la documentación definitiva se coordina para la firma.'],
      ['¿Qué ocurre si Registro y Catastro no coinciden?', 'La diferencia debe estudiarse antes de avanzar. Puede requerir una corrección registral, catastral o técnica.'],
      ['¿Puedo anunciar antes de tener todo?', 'Puede iniciarse una revisión comercial, pero no conviene ocultar incidencias ni esperar a la firma para resolver cuestiones importantes.'],
      ['¿Quién emite el certificado energético?', 'Un técnico competente realiza el certificado y tramita su registro conforme a la normativa aplicable.']
    ],
    sources: [
      ['Junta de Andalucía · Comprobaciones antes de comprar', 'https://www.juntadeandalucia.es/temas/vivienda-consumo/compra/contrato.html'],
      ['Sede Electrónica del Catastro', 'https://www.sedecatastro.gob.es/']
    ],
    related: ['/vender-vivienda-ecija', '/guias/vender-casa-ecija', '/contacto']
  },
  '/guias/gastos-comprar-vivienda-andalucia': {
    kind: 'guide',
    eyebrow: 'Compra de vivienda',
    title: 'Gastos e impuestos al comprar una vivienda en Andalucía',
    metaTitle: 'Gastos al comprar vivienda en Andalucía | Guía 2026',
    description: 'Resumen actualizado de impuestos y gastos al comprar vivienda usada o nueva en Andalucía. Revisión: agosto de 2026.',
    intro: 'El presupuesto de compra no termina en el precio. Debes reservar margen para impuestos, notaría, registro, gestoría, tasación y financiación cuando corresponda.',
    answer: 'En agosto de 2026, la vivienda usada tributa con carácter general por TPO al 7 % en Andalucía. La vivienda nueva suele llevar IVA del 10 % y AJD, cuyo tipo general autonómico es del 1,2 %, sin perjuicio de tipos reducidos y casos especiales.',
    sections: [
      ['Vivienda usada', 'La compra de segunda o posteriores transmisiones tributa por Transmisiones Patrimoniales Onerosas. El tipo general publicado por la Junta de Andalucía es del 7 %, con tipos reducidos cuando se cumplen requisitos.'],
      ['Vivienda nueva', 'La primera entrega por promotor suele estar sujeta a IVA del 10 % para vivienda general y, además, a Actos Jurídicos Documentados. La fiscalidad exacta depende del tipo de inmueble y de la operación.'],
      ['Notaría y Registro', 'Los aranceles dependen del documento, precio y circunstancias. La inscripción registra el nuevo derecho y las cargas que correspondan.'],
      ['Hipoteca y tasación', 'Si existe financiación puede haber tasación, productos vinculados u otros costes. La entidad debe entregar la información precontractual exigible antes de la firma.'],
      ['Valor de referencia', 'En determinados impuestos, la base puede relacionarse con el valor de referencia catastral cuando exista. Conviene consultarlo y recibir asesoramiento si no coincide con el precio o la realidad del inmueble.'],
      ['Presupuesto prudente', 'Antes de reservar, pide un cálculo adaptado a edad, uso, precio, vivienda habitual, discapacidad, familia numerosa, municipio y cualquier beneficio fiscal aplicable.']
    ],
    faq: [
      ['¿El ITP siempre es del 7 %?', 'Es el tipo general de TPO publicado por Andalucía, pero existen tipos reducidos y supuestos especiales sujetos a requisitos.'],
      ['¿La vivienda nueva paga ITP?', 'La primera entrega por promotor normalmente tributa por IVA y AJD, no por TPO.'],
      ['¿Los impuestos están incluidos en el anuncio?', 'No deben darse por incluidos salvo que la ficha lo indique expresamente.'],
      ['¿Esta guía sustituye asesoramiento fiscal?', 'No. Resume información oficial disponible en la fecha de revisión; cada operación debe calcularse de forma individual.']
    ],
    sources: [
      ['Junta de Andalucía · Impuestos asociados a la compra', 'https://www.juntadeandalucia.es/temas/vivienda-consumo/compra/impuestos.html'],
      ['Agencia Tributaria de Andalucía · TPO y AJD', 'https://www.juntadeandalucia.es/organismos/atrian/areas/declaracion-pagos/presentacion-impuestos/itpajd.html'],
      ['Catastro · Valor de referencia 2026', 'https://www.sedecatastro.gob.es/Accesos/SECAccvr.aspx?EJERCICIO=2026']
    ],
    related: ['/pisos-venta-ecija', '/casas-venta-ecija', '/financiacion']
  },
  '/guias/alquiler-opcion-compra': {
    kind: 'guide',
    eyebrow: 'Contratos inmobiliarios',
    title: 'Alquiler con opción a compra: condiciones que deben quedar claras',
    metaTitle: 'Alquiler con opción a compra: guía práctica',
    description: 'Guía sobre alquiler con opción a compra: precio, plazo, prima, rentas descontables, gastos y comprobaciones antes de firmar.',
    intro: 'Este modelo puede ser útil en determinadas situaciones, pero exige un contrato preciso porque combina dos relaciones: arrendamiento y opción de compra.',
    answer: 'El contrato debe fijar por escrito el precio futuro, el plazo, la prima, la parte de las rentas que se descuenta, el reparto de gastos y las consecuencias de ejercer o no la opción.',
    sections: [
      ['Precio y plazo', 'Debe definirse el precio de compra o el mecanismo para calcularlo, además de la fecha límite y la forma de comunicar el ejercicio de la opción.'],
      ['Prima de la opción', 'Puede pactarse una cantidad inicial por reservar el derecho. El contrato debe explicar si se descuenta del precio y qué ocurre si no se compra.'],
      ['Rentas descontables', 'No existe una regla única: puede descontarse todo, una parte o nada. El porcentaje puede variar con el tiempo y debe quedar cuantificado.'],
      ['Gastos y conservación', 'Conviene repartir comunidad, IBI, suministros, reparaciones y mejoras, diferenciando las obligaciones propias del arrendamiento y de la futura compra.'],
      ['Financiación futura', 'Tener una opción no garantiza que el banco conceda la hipoteca. Es prudente estudiar solvencia y evolución del ahorro antes de comprometerse.'],
      ['Comprobación jurídica', 'Titularidad, cargas, situación registral y condiciones del inmueble deben revisarse como en cualquier compraventa.']
    ],
    faq: [
      ['¿Puedo perder la prima?', 'Puede ocurrir si así se pacta y no se ejerce la opción. La cláusula debe entenderse antes de firmar.'],
      ['¿El propietario puede vender a otra persona?', 'Durante la vigencia debe respetar el derecho pactado. La protección concreta depende del contrato y, en su caso, de su inscripción.'],
      ['¿Puedo pedir hipoteca al final?', 'Sí, pero la aprobación depende del estudio bancario que se realice entonces.'],
      ['¿Es lo mismo que una compraventa aplazada?', 'No. Son figuras distintas y producen obligaciones diferentes.']
    ],
    sources: [
      ['Junta de Andalucía · Impuestos asociados a la compra', 'https://www.juntadeandalucia.es/temas/vivienda-consumo/compra/impuestos.html'],
      ['Junta de Andalucía · Contrato de compraventa e hipoteca', 'https://www.juntadeandalucia.es/temas/vivienda-consumo/compra/contrato.html']
    ],
    related: ['/alquiler-opcion-compra-ecija', '/financiacion', '/contacto']
  },
  '/guias/como-valorar-vivienda-ecija': {
    kind: 'guide',
    eyebrow: 'Valoración inmobiliaria',
    title: 'Cómo se valora una vivienda en Écija antes de ponerla en venta',
    metaTitle: 'Cómo valorar una vivienda en Écija | Guía Noguera',
    description: 'Factores para valorar una vivienda en Écija: ubicación, superficie, estado, planta, exteriores, edificio, documentación y comparables.',
    intro: 'Una estimación automática puede ser un punto de partida, pero no ve el estado real, la distribución, la luz, los exteriores ni las incidencias documentales.',
    answer: 'La valoración comercial combina datos medibles, inspección del inmueble, contexto de la zona, oferta comparable y respuesta prevista del comprador objetivo.',
    sections: [
      ['Ubicación concreta', 'No basta con la localidad. Influyen la calle o zona, accesos, ruido, orientación, servicios, aparcamiento y características del entorno inmediato.'],
      ['Superficie y distribución', 'Los metros deben interpretarse junto con la superficie útil, pasillos, número de estancias, proporciones, altura y posibilidades de uso.'],
      ['Estado y edificio', 'Instalaciones, cocina, baños, ventanas, cubierta, fachada, ascensor, comunidad y derramas pueden cambiar la percepción y el presupuesto del comprador.'],
      ['Espacios exteriores', 'Terrazas, patios, porches, parcela, garaje y trastero deben valorarse por su utilidad, privacidad, estado y documentación.'],
      ['Comparables', 'Conviene comparar inmuebles realmente parecidos y distinguir entre precios anunciados, negociaciones y operaciones cerradas cuando se dispone de esa información.'],
      ['Estrategia de salida', 'El mejor precio de publicación no es simplemente el máximo posible: debe atraer demanda cualificada y dejar margen de negociación coherente.']
    ],
    faq: [
      ['¿Un portal inmobiliario puede valorar mi casa?', 'Puede generar una estimación estadística, pero no sustituye una revisión del inmueble y de su documentación.'],
      ['¿La reforma siempre aumenta el valor más de lo que cuesta?', 'No. Algunas mejoras ayudan a vender; otras no recuperan su coste. Deben priorizarse según el comprador objetivo.'],
      ['¿Por qué dos viviendas del mismo edificio valen distinto?', 'Planta, orientación, luz, estado, distribución, terraza, garaje y situación arrendaticia pueden producir diferencias importantes.'],
      ['¿La valoración garantiza el precio final?', 'No. Es una estimación razonada. El precio final depende del mercado, negociación, financiación y condiciones concretas.']
    ],
    sources: [
      ['Catastro · Valor de referencia', 'https://www.sedecatastro.gob.es/Accesos/SECAccvr.aspx?EJERCICIO=2026']
    ],
    related: ['/valoracion-vivienda-ecija', '/vender-vivienda-ecija', '/contacto']
  }
};

export const INDEXABLE_CORE_ROUTES = [
  '/', '/inmuebles', '/nosotros', '/agentes', '/financiacion', '/alquiler-vacacional', '/contacto',
  ...Object.keys(SEO_PAGES), ...Object.keys(GUIDES)
];

export const PRIVATE_OR_UTILITY_ROUTES = ['/favoritos', '/comparar', '/busquedas-guardadas'];

export function getSeoPage(pathname) {
  return SEO_PAGES[pathname] || GUIDES[pathname] || null;
}

export function guideEntries() {
  return Object.entries(GUIDES).filter(([path, page]) => path !== '/guias' && page.kind === 'guide');
}
