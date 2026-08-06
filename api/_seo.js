import { BUSINESS, DEMO_PROPERTIES, AGENTS } from '../assets/data.js';
import { SITE_ORIGIN, SEO_UPDATED_AT, SEO_PAGES, GUIDES, INDEXABLE_CORE_ROUTES, getSeoPage, guideEntries } from '../assets/seo-data.js';

const CORE_META = {
  '/': {
    title: 'Inmobiliaria Noguera | Casas y pisos en Écija',
    description: 'Compra, vende o alquila inmuebles en Écija y comarca con Inmobiliaria Noguera, equipo local con oficina física y atención directa desde 2007.',
    h1: 'Tu próxima vivienda en Écija, con una búsqueda más clara.',
    intro: 'Explora una cartera real de viviendas, locales, naves y terrenos y habla directamente con el equipo de Inmobiliaria Noguera.'
  },
  '/inmuebles': {
    title: 'Inmuebles en Écija | Venta y alquiler | Noguera',
    description: 'Consulta inmuebles en Écija y comarca: pisos, casas, chalets, locales, naves, solares y terrenos publicados por Inmobiliaria Noguera.',
    h1: 'Inmuebles en Écija y comarca',
    intro: 'Cartera publicada por Inmobiliaria Noguera con precio, referencia, características, estado de disponibilidad y contacto directo.'
  },
  '/vender': {
    title: 'Vender una propiedad en Écija | Inmobiliaria Noguera',
    description: 'Solicita una valoración inicial y conoce el proceso para vender una propiedad en Écija con presentación, visitas y seguimiento comercial.',
    h1: 'Vende tu propiedad con un proceso claro',
    intro: 'Revisión del inmueble, valoración, preparación de la ficha, publicación, seguimiento de contactos y coordinación de la operación.'
  },
  '/nosotros': {
    title: 'Inmobiliaria Noguera en Écija | Desde 2007',
    description: 'Conoce la trayectoria de Inmobiliaria Noguera, agencia inmobiliaria de Écija creada en 2007 con equipo propio y oficina local.',
    h1: 'Una inmobiliaria de Écija desde 2007',
    intro: 'Equipo local dedicado a acompañar a quienes quieren comprar, vender o alquilar una propiedad en Écija y su entorno.'
  },
  '/agentes': {
    title: 'Equipo de Inmobiliaria Noguera | Agentes en Écija',
    description: 'Conoce al equipo comercial y administrativo de Inmobiliaria Noguera en Écija y contacta con la agencia.',
    h1: 'El equipo de Inmobiliaria Noguera',
    intro: 'Personas responsables de la atención comercial, administración y seguimiento de las operaciones.'
  },
  '/financiacion': {
    title: 'Financiación para comprar vivienda en Écija | Noguera',
    description: 'Consulta opciones de financiación y utiliza el simulador orientativo antes de comprar una vivienda en Écija.',
    h1: 'Estudia la financiación antes de decidir',
    intro: 'Información inicial y simulación orientativa. Toda financiación está sujeta a estudio y aprobación por el proveedor correspondiente.'
  },
  '/alquiler-vacacional': {
    title: 'Alquiler vacacional en Écija | Inmobiliaria Noguera',
    description: 'Consulta disponibilidad y condiciones de los alojamientos vacacionales gestionados por Inmobiliaria Noguera en Écija.',
    h1: 'Alquiler vacacional en Écija',
    intro: 'Solicita fechas, capacidad y condiciones directamente al equipo antes de confirmar una estancia.'
  },
  '/contacto': {
    title: 'Contacto | Inmobiliaria Noguera en Écija',
    description: 'Contacta con Inmobiliaria Noguera: Ronda San Agustín, 35, Écija. Teléfono 955 900 748 y atención comercial directa.',
    h1: 'Habla con Inmobiliaria Noguera',
    intro: 'Visita la oficina, llama o envía una consulta sobre una propiedad, una búsqueda o una valoración.'
  }
};

const TYPE_MAP = {
  piso: 'Apartment', ático: 'Apartment', apartamento: 'Apartment', casa: 'House', casa_reformar: 'House',
  chalet: 'SingleFamilyResidence', local: 'Place', nave: 'Place', parcela_rustica: 'Place',
  parcela_urbana: 'Place', solar: 'Place', garaje: 'ParkingFacility'
};

export function absoluteUrl(value, origin = SITE_ORIGIN) {
  if (!value) return `${origin}/public/images/property-placeholder.svg`;
  try { return new URL(value, origin).href; } catch { return `${origin}/public/images/property-placeholder.svg`; }
}

export function escapeHtml(value = '') {
  return String(value).replace(/[&<>"']/g, (char) => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[char]));
}

export function normalizePath(value = '/') {
  const decoded = (() => { try { return decodeURIComponent(value); } catch { return value; } })();
  const path = `/${String(decoded).replace(/^\/+|\/+$/g, '')}`;
  return path === '/' ? '/' : path.replace(/\/{2,}/g, '/');
}

export async function getPublicProperties() {
  const url = String(process.env.SUPABASE_URL || '').replace(/\/$/, '');
  const key = process.env.SUPABASE_ANON_KEY || '';
  if (!url || !key) return DEMO_PROPERTIES.filter((item) => item.status === 'published');
  try {
    /* limit explícito: PostgREST aplica su propio tope por defecto, así que sin
       esto la cartera se truncaría en silencio en cuanto crezca. */
    const response = await fetch(`${url}/rest/v1/properties?select=*&status=eq.published&order=featured.desc,updated_at.desc&limit=2000`, {
      headers: { apikey: key, Authorization: `Bearer ${key}`, Accept: 'application/json' }
    });
    if (!response.ok) throw new Error(`Supabase ${response.status}`);
    const data = await response.json();
    if (!Array.isArray(data) || !data.length) throw new Error('cartera vacía');
    return data;
  } catch (error) {
    /* Devolver [] dejaba el HTML rastreable sin un solo inmueble ante cualquier
       caída pasajera de Supabase, que es exactamente como se desindexa un
       catálogo. Es preferible servir el respaldo que no servir nada. */
    console.error('SEO property fetch failed, usando respaldo:', error);
    return DEMO_PROPERTIES.filter((item) => item.status === 'published');
  }
}

export function filterSeoProperties(properties, filter = {}) {
  if (!filter || !Object.keys(filter).length) return properties;
  const textTerms = (filter.text || []).map((term) => term.toLowerCase());
  return properties.filter((property) => {
    const haystack = `${property.title || ''} ${property.location || ''} ${property.zone || ''} ${property.address || ''} ${(property.features || []).join(' ')}`.toLowerCase();
    return (!filter.operation || property.operation === filter.operation)
      && (!filter.types || filter.types.includes(property.property_type))
      && (!filter.references || filter.references.includes(property.reference))
      && (!filter.features || filter.features.some((value) => (property.features || []).includes(value)))
      && (!textTerms.length || textTerms.some((term) => haystack.includes(term)));
  });
}

export function isIndexableProperty(property) {
  return property?.status === 'published' && ['available', 'reserved'].includes(property.availability || 'available');
}

function breadcrumbFor(path, label) {
  const items = [{ name: 'Inicio', path: '/' }];
  if (path.startsWith('/inmuebles/')) items.push({ name: 'Inmuebles', path: '/inmuebles' });
  else if (path.startsWith('/zonas/')) items.push({ name: 'Zonas', path: '/inmuebles' });
  else if (path.startsWith('/guias/')) items.push({ name: 'Guías', path: '/guias' });
  if (path !== '/') items.push({ name: label, path });
  return items;
}

function propertyMeta(property) {
  const price = Number(property.price || 0);
  const priceText = price > 0 ? `${new Intl.NumberFormat('es-ES').format(price)} €` : 'precio a consultar';
  const specs = [property.bedrooms ? `${property.bedrooms} dormitorios` : '', property.bathrooms ? `${property.bathrooms} baños` : '', property.area ? `${property.area} m²` : ''].filter(Boolean).join(', ');
  return {
    title: (property.seo_title || `${property.title} | ${priceText} | Noguera`).slice(0, 70),
    description: (property.seo_description || `${property.title} en ${property.zone || property.location}. ${specs ? `${specs}. ` : ''}${property.short_description || 'Consulta disponibilidad y solicita una visita.'}`).slice(0, 170),
    h1: property.title,
    intro: property.short_description || property.description || 'Consulta la información del inmueble y solicita una visita.',
    image: property.images?.[0],
    updatedAt: property.updated_at || property.created_at,
    robots: isIndexableProperty(property) ? 'index,follow,max-image-preview:large,max-snippet:-1,max-video-preview:-1' : 'noindex,follow',
    type: 'property', property
  };
}

export function resolveRoute(pathname, query = {}, properties = []) {
  const path = normalizePath(pathname);
  if (path.startsWith('/admin')) return { path, status: 200, robots: 'noindex,nofollow,noarchive', title: 'Zona privada · Inmobiliaria Noguera', description: 'Acceso privado para el equipo de Inmobiliaria Noguera.', h1: 'Zona privada', intro: 'Acceso reservado al equipo comercial.', type: 'utility' };
  if (['/favoritos', '/comparar', '/busquedas-guardadas'].includes(path)) return { path, status: 200, robots: 'noindex,follow', title: 'Herramientas de búsqueda · Inmobiliaria Noguera', description: 'Herramienta personal de búsqueda de inmuebles.', h1: 'Tu búsqueda', intro: 'Contenido guardado en este dispositivo.', type: 'utility' };
  if (path.startsWith('/legal/')) return { path, status: 200, robots: 'noindex,follow', title: 'Información legal · Inmobiliaria Noguera', description: 'Información legal y de privacidad de Inmobiliaria Noguera.', h1: 'Información legal', intro: 'Condiciones y políticas aplicables al sitio.', type: 'legal' };

  if (/^\/inmuebles\/[^/]+$/.test(path)) {
    const slug = path.split('/').pop();
    const property = properties.find((item) => item.slug === slug);
    if (!property) return { path, status: 404, robots: 'noindex,follow', title: 'Inmueble no encontrado · Inmobiliaria Noguera', description: 'El inmueble no está disponible en esta dirección.', h1: 'Este inmueble no está disponible', intro: 'Puede haberse retirado, vendido o cambiado de dirección.', type: 'notFound' };
    return { path, status: 200, ...propertyMeta(property) };
  }

  const seoPage = getSeoPage(path);
  if (seoPage) {
    const filteredProperties = filterSeoProperties(properties, seoPage.filter || {});
    return {
      path, status: 200, robots: 'index,follow,max-image-preview:large,max-snippet:-1,max-video-preview:-1',
      title: seoPage.metaTitle, description: seoPage.description, h1: seoPage.title, intro: seoPage.intro,
      image: filteredProperties.find((item) => item.images?.length)?.images?.[0], updatedAt: SEO_UPDATED_AT,
      type: seoPage.kind, seoPage, properties: filteredProperties
    };
  }

  const core = CORE_META[path];
  if (core) {
    const hasFacets = path === '/inmuebles' && Object.keys(query || {}).some((key) => !['path'].includes(key));
    return {
      path, status: 200,
      robots: hasFacets ? 'noindex,follow' : 'index,follow,max-image-preview:large,max-snippet:-1,max-video-preview:-1',
      ...core, type: path === '/inmuebles' ? 'collection' : 'core', properties: path === '/inmuebles' ? properties : [],
      image: properties.find((item) => item.images?.length)?.images?.[0], updatedAt: SEO_UPDATED_AT
    };
  }

  return { path, status: 404, robots: 'noindex,follow', title: 'Página no encontrada · Inmobiliaria Noguera', description: 'La página solicitada no existe.', h1: 'Esta página no está disponible', intro: 'Vuelve al catálogo o contacta con el equipo.', type: 'notFound' };
}

function businessSchema(origin) {
  return {
    '@type': ['RealEstateAgent', 'LocalBusiness'], '@id': `${origin}/#business`,
    name: BUSINESS.name, legalName: BUSINESS.legalName, taxID: BUSINESS.taxId, url: `${origin}/`,
    foundingDate: '2007', image: `${origin}/public/images/8631-chalet-urbanizacion.jpeg`,
    logo: `${origin}/public/images/brand/logo-on-light.png`, telephone: BUSINESS.phoneHref, email: BUSINESS.email,
    address: { '@type': 'PostalAddress', streetAddress: BUSINESS.address, postalCode: '41400', addressLocality: 'Écija', addressRegion: 'Sevilla', addressCountry: 'ES' },
    geo: { '@type': 'GeoCoordinates', latitude: BUSINESS.coordinates.lat, longitude: BUSINESS.coordinates.lng },
    areaServed: [{ '@type': 'City', name: 'Écija' }, { '@type': 'AdministrativeArea', name: 'Comarca de Écija' }],
    sameAs: [BUSINESS.instagram, BUSINESS.facebook],
    openingHoursSpecification: [
      { '@type': 'OpeningHoursSpecification', dayOfWeek: ['Monday','Tuesday','Wednesday','Thursday','Friday'], opens: '09:00', closes: '15:00' },
      { '@type': 'OpeningHoursSpecification', dayOfWeek: ['Monday','Tuesday','Wednesday','Thursday','Friday'], opens: '16:00', closes: '21:00' },
      { '@type': 'OpeningHoursSpecification', dayOfWeek: 'Saturday', opens: '10:00', closes: '14:00' }
    ],
    employee: AGENTS.map((agent) => ({ '@type': 'Person', name: agent.name, jobTitle: agent.role, worksFor: { '@id': `${origin}/#business` } })),
    knowsAbout: ['Compraventa de inmuebles', 'Alquiler de viviendas', 'Valoración inmobiliaria', 'Mercado inmobiliario de Écija']
  };
}

function propertySchema(property, origin) {
  const url = `${origin}/inmuebles/${property.slug}`;
  const offeredType = TYPE_MAP[property.property_type] || 'Accommodation';
  const schema = {
    '@type': 'RealEstateListing', '@id': `${url}#listing`, url, name: property.title,
    headline: property.title, description: property.description || property.short_description,
    datePosted: property.created_at, dateModified: property.updated_at || property.created_at,
    image: (property.images || []).map((image) => absoluteUrl(image, origin)),
    seller: { '@id': `${origin}/#business` },
    address: { '@type': 'PostalAddress', addressLocality: property.location || 'Écija', addressRegion: property.province || 'Sevilla', addressCountry: 'ES' },
    itemOffered: {
      '@type': offeredType, name: property.title,
      numberOfBedrooms: property.bedrooms || undefined, numberOfBathroomsTotal: property.bathrooms || undefined,
      floorSize: property.area ? { '@type': 'QuantitativeValue', value: property.area, unitCode: 'MTK' } : undefined,
      address: { '@type': 'PostalAddress', addressLocality: property.location || 'Écija', addressRegion: property.province || 'Sevilla', addressCountry: 'ES' }
    },
    offers: {
      '@type': 'Offer', url, priceCurrency: 'EUR', price: Number(property.price || 0) || undefined,
      availability: property.availability === 'available' ? 'https://schema.org/InStock' : property.availability === 'reserved' ? 'https://schema.org/LimitedAvailability' : 'https://schema.org/OutOfStock',
      seller: { '@id': `${origin}/#business` }
    }
  };
  return JSON.parse(JSON.stringify(schema));
}

export function buildJsonLd(route, origin = SITE_ORIGIN) {
  const canonical = `${origin}${route.path === '/' ? '/' : route.path}`;
  const label = route.seoPage?.eyebrow || route.h1;
  const breadcrumbs = breadcrumbFor(route.path, label);
  const graph = [
    businessSchema(origin),
    {
      '@type': 'WebSite', '@id': `${origin}/#website`, url: `${origin}/`, name: BUSINESS.name,
      publisher: { '@id': `${origin}/#business` }, inLanguage: 'es-ES'
    },
    {
      '@type': 'BreadcrumbList', '@id': `${canonical}#breadcrumb`,
      itemListElement: breadcrumbs.map((item, index) => ({ '@type': 'ListItem', position: index + 1, name: item.name, item: `${origin}${item.path}` }))
    }
  ];

  const webPage = {
    '@type': route.type === 'guide' ? 'Article' : route.type === 'collection' || route.type === 'area' ? 'CollectionPage' : route.type === 'notFound' ? 'WebPage' : 'WebPage',
    '@id': `${canonical}#webpage`, url: canonical, name: route.h1, description: route.description,
    isPartOf: { '@id': `${origin}/#website` }, about: { '@id': `${origin}/#business` },
    breadcrumb: { '@id': `${canonical}#breadcrumb` }, inLanguage: 'es-ES', dateModified: route.updatedAt || SEO_UPDATED_AT,
    primaryImageOfPage: route.image ? { '@type': 'ImageObject', url: absoluteUrl(route.image, origin) } : undefined
  };
  if (route.type === 'guide') {
    webPage.headline = route.h1; webPage.datePublished = '2026-08-05'; webPage.author = { '@id': `${origin}/#business` }; webPage.publisher = { '@id': `${origin}/#business` };
  }
  graph.push(JSON.parse(JSON.stringify(webPage)));

  if (route.type === 'property') graph.push(propertySchema(route.property, origin));
  if (['collection', 'area'].includes(route.type) && route.properties?.length) {
    graph.push({ '@type': 'ItemList', '@id': `${canonical}#list`, numberOfItems: route.properties.length, itemListElement: route.properties.slice(0, 20).map((property, index) => ({ '@type': 'ListItem', position: index + 1, url: `${origin}/inmuebles/${property.slug}`, name: property.title })) });
  }
  if (route.type === 'service' && route.seoPage) {
    graph.push({ '@type': 'Service', '@id': `${canonical}#service`, name: route.h1, description: route.description, provider: { '@id': `${origin}/#business` }, areaServed: { '@type': 'City', name: 'Écija' }, url: canonical });
  }
  if (route.seoPage?.faq?.length) {
    graph.push({ '@type': 'FAQPage', '@id': `${canonical}#faq`, mainEntity: route.seoPage.faq.map(([question, answer]) => ({ '@type': 'Question', name: question, acceptedAnswer: { '@type': 'Answer', text: answer } })) });
  }
  return { '@context': 'https://schema.org', '@graph': graph };
}

/* La mayoría de fichas no traen número de referencia del origen y el suyo se
   derivó del slug; enseñarlo daría "Ref. fantastico-chalet-en-venta-con-...".
   Sólo se muestra cuando es una referencia real de Noguera. */
function refVisible(property) {
  const r = String(property?.reference || '').trim();
  return /^\d{1,8}$/.test(r) ? r : '';
}

function propertyLink(property) {
  const price = Number(property.price || 0) > 0 ? `${new Intl.NumberFormat('es-ES').format(property.price)} €` : 'Consultar';
  return `<article class="ssr-property"><h2>${escapeHtml(property.title)}</h2><p>${escapeHtml(property.zone || property.location || 'Écija')} · ${escapeHtml(price)}</p><a href="/inmuebles/${escapeHtml(property.slug)}">Ver inmueble</a></article>`;
}

export function renderSsrContent(route, properties = []) {
  const page = route.seoPage;
  const pageProperties = route.properties || (route.path === '/inmuebles' ? properties : []);
  const usefulLinks = page?.related || ['/inmuebles', '/vender-vivienda-ecija', '/valoracion-vivienda-ecija', '/guias'];
  let extra = '';
  if (route.type === 'property') {
    const p = route.property;
    const price = Number(p.price || 0) > 0 ? `${new Intl.NumberFormat('es-ES').format(p.price)} €` : 'Precio a consultar';
    extra = `<div class="ssr-properties"><article class="ssr-property"><h2>${escapeHtml(price)}</h2><p>${refVisible(p) ? `Ref. ${escapeHtml(refVisible(p))} · ` : ''}${escapeHtml(p.zone || p.location)}</p><p>${escapeHtml(p.description || '')}</p><a href="/contacto">Solicitar información</a></article></div>`;
  } else if (route.type === 'guideHub') {
    extra = `<div class="ssr-links">${guideEntries().map(([path, guide]) => `<a href="${path}"><strong>${escapeHtml(guide.title)}</strong><br>${escapeHtml(guide.description)}</a>`).join('')}</div>`;
  }
  /* El catálogo iba delante del artículo y con hasta 9 fichas, que diluye el
     tema de la página y repite lo mismo en todas. El contenido propio va
     primero; los inmuebles quedan al final, como mucho tres, y con una llamada
     a la acción. En /inmuebles sí manda el listado, que es su contenido. */
  const esCatalogo = route.path === '/inmuebles';
  if (page?.answer) extra = `<p><strong>Respuesta directa:</strong> ${escapeHtml(page.answer)}</p>${extra}`;
  if (esCatalogo && pageProperties.length) {
    extra += `<div class="ssr-properties">${pageProperties.slice(0, 24).map(propertyLink).join('')}</div>`;
  }
  if (page?.sections?.length) extra += `<div>${page.sections.map(([title, text]) => `<section><h2>${escapeHtml(title)}</h2><p>${escapeHtml(text)}</p></section>`).join('')}</div>`;
  if (page?.faq?.length) extra += `<section><h2>Preguntas frecuentes</h2>${page.faq.map(([q, a]) => `<h3>${escapeHtml(q)}</h3><p>${escapeHtml(a)}</p>`).join('')}</section>`;
  if (!esCatalogo && route.type !== 'property' && pageProperties.length) {
    extra += `<section class="ssr-properties"><h2>Inmuebles relacionados</h2>${pageProperties.slice(0, 3).map(propertyLink).join('')}`
      + `<p><a href="/valoracion-vivienda-ecija">Solicita una valoración</a> o <a href="/contacto">habla con Noguera</a>.</p></section>`;
  }
  return `<div class="ssr-shell"><header class="ssr-header"><a href="/">Inmobiliaria Noguera</a><nav class="ssr-nav"><a href="/inmuebles">Inmuebles</a><a href="/vender-vivienda-ecija">Vender</a><a href="/guias">Guías</a><a href="/contacto">Contacto</a></nav></header><main id="main" class="ssr-main"><span>${escapeHtml(page?.eyebrow || 'Inmobiliaria Noguera')}</span><h1>${escapeHtml(route.h1)}</h1><p>${escapeHtml(route.intro)}</p>${extra}<div class="ssr-links">${usefulLinks.map((path) => `<a href="${escapeHtml(path)}">${escapeHtml(path.replace(/^\//, '').replaceAll('-', ' ') || 'Inicio')}</a>`).join('')}</div></main><footer class="ssr-footer">${escapeHtml(BUSINESS.name)} · ${escapeHtml(BUSINESS.address)}, ${escapeHtml(BUSINESS.city)} · ${escapeHtml(BUSINESS.phone)}</footer></div>`;
}

export function sitemapEntries(properties, origin = SITE_ORIGIN) {
  const now = SEO_UPDATED_AT;
  const staticEntries = INDEXABLE_CORE_ROUTES.map((path) => ({ url: `${origin}${path === '/' ? '/' : path}`, lastmod: now, changefreq: path === '/' || path === '/inmuebles' ? 'daily' : path.startsWith('/guias/') ? 'monthly' : 'weekly', priority: path === '/' ? '1.0' : path === '/inmuebles' ? '0.9' : '0.7' }));
  const propertyEntries = properties.filter(isIndexableProperty).map((property) => ({ url: `${origin}/inmuebles/${property.slug}`, lastmod: property.updated_at || property.created_at || now, changefreq: 'weekly', priority: property.featured ? '0.9' : '0.8', images: property.images || [] }));
  return [...staticEntries, ...propertyEntries];
}
