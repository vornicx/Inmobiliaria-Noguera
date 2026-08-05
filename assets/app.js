import { BUSINESS, PROPERTY_TYPES, ZONES, AGENTS } from './data.js';
import { service } from './service.js';
import { SEO_PAGES, GUIDES, getSeoPage, guideEntries, SITE_ORIGIN, SEO_UPDATED_AT } from './seo-data.js';

const app = document.querySelector('#app');
const modalRoot = document.querySelector('#modal-root');
const toastRegion = document.querySelector('#toast-region');
const cookieRoot = document.querySelector('#cookie-root') || (() => {
  const node = document.createElement('div');
  node.id = 'cookie-root';
  document.body.appendChild(node);
  return node;
})();

const state = {
  properties: [],
  adminProperties: [],
  leads: [],
  favorites: readList('noguera-favorites'),
  compare: readList('noguera-compare'),
  savedSearches: readList('noguera-saved-searches'),
  catalogView: localStorage.getItem('noguera-view') || 'grid',
  config: null,
  mobileMenu: false,
  gallery: { images: [], index: 0 },
};

function readList(key) {
  try { const data = JSON.parse(localStorage.getItem(key) || '[]'); return Array.isArray(data) ? data : []; }
  catch (_) { return []; }
}
function saveList(key, list) { localStorage.setItem(key, JSON.stringify(list)); }

const icons = {
  search: '<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><circle cx="11" cy="11" r="7"/><path d="m20 20-3.5-3.5"/></svg>',
  heart: '<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><path d="M20.8 4.6a5.5 5.5 0 0 0-7.8 0L12 5.7l-1.1-1.1a5.5 5.5 0 0 0-7.8 7.8l1.1 1.1L12 21l7.8-7.5 1.1-1.1a5.5 5.5 0 0 0-.1-7.8Z"/></svg>',
  heartFill: '<svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor"><path d="M12 21 4.2 13.5 3.1 12.4a5.5 5.5 0 0 1 7.8-7.8L12 5.7l1-1.1a5.5 5.5 0 0 1 7.8 7.8l-1 1.1Z"/></svg>',
  compare: '<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><path d="M8 6h13M3 6h1M16 18H3M21 18h-1M6 3v6M18 15v6"/></svg>',
  menu: '<svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><path d="M4 7h16M4 12h16M4 17h16"/></svg>',
  close: '<svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><path d="m6 6 12 12M18 6 6 18"/></svg>',
  arrow: '<svg width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><path d="M5 12h14m-5-5 5 5-5 5"/></svg>',
  arrowLeft: '<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><path d="M19 12H5m5 5-5-5 5-5"/></svg>',
  arrowRight: '<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><path d="M5 12h14m-5-5 5 5-5 5"/></svg>',
  map: '<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><path d="M20 10c0 5-8 11-8 11S4 15 4 10a8 8 0 1 1 16 0Z"/><circle cx="12" cy="10" r="2.5"/></svg>',
  bed: '<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.7" stroke-linecap="round"><path d="M3 19v-8m18 8v-6a2 2 0 0 0-2-2H9a2 2 0 0 0-2 2v6M7 11V8a2 2 0 0 1 2-2h3a2 2 0 0 1 2 2v3M3 16h18"/></svg>',
  bath: '<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.7" stroke-linecap="round"><path d="M4 12h16v3a4 4 0 0 1-4 4H8a4 4 0 0 1-4-4v-3ZM7 12V6a2 2 0 0 1 4 0M8 19v2m8-2v2"/></svg>',
  area: '<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.7" stroke-linecap="round"><path d="M4 9V4h5M20 9V4h-5M4 15v5h5M20 15v5h-5"/></svg>',
  floor: '<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.7" stroke-linecap="round"><path d="M4 20h16M6 20V4h12v16M9 8h2m2 0h2m-6 4h2m2 0h2m-6 4h2m2 0h2"/></svg>',
  phone: '<svg width="19" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><path d="M22 16.9v3a2 2 0 0 1-2.2 2 19.8 19.8 0 0 1-8.6-3.1 19.5 19.5 0 0 1-6-6A19.8 19.8 0 0 1 2.1 4.2 2 2 0 0 1 4.1 2h3a2 2 0 0 1 2 1.7c.1 1 .4 2 .7 2.9a2 2 0 0 1-.5 2.1L8.1 9.9a16 16 0 0 0 6 6l1.2-1.2a2 2 0 0 1 2.1-.5c.9.3 1.9.6 2.9.7a2 2 0 0 1 1.7 2Z"/></svg>',
  mail: '<svg width="19" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><rect x="3" y="5" width="18" height="14" rx="2"/><path d="m3 7 9 6 9-6"/></svg>',
  clock: '<svg width="19" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><circle cx="12" cy="12" r="9"/><path d="M12 7v5l3 2"/></svg>',
  home: '<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><path d="m3 11 9-8 9 8v10H3Z"/><path d="M9 21v-6h6v6"/></svg>',
  key: '<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><circle cx="8" cy="15" r="4"/><path d="m11 12 9-9m-4 4 3 3m-6 0 3 3"/></svg>',
  shield: '<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10Z"/><path d="m9 12 2 2 4-4"/></svg>',
  spark: '<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><path d="m12 3 1.2 4.3L17 9l-3.8 1.7L12 15l-1.2-4.3L7 9l3.8-1.7ZM5 15l.8 2.2L8 18l-2.2.8L5 21l-.8-2.2L2 18l2.2-.8Z"/></svg>',
  grid: '<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><rect x="4" y="4" width="6" height="6"/><rect x="14" y="4" width="6" height="6"/><rect x="4" y="14" width="6" height="6"/><rect x="14" y="14" width="6" height="6"/></svg>',
  list: '<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><path d="M8 6h12M8 12h12M8 18h12M4 6h.01M4 12h.01M4 18h.01"/></svg>',
  filter: '<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><path d="M4 6h16M7 12h10M10 18h4"/></svg>',
  share: '<svg width="19" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><circle cx="18" cy="5" r="3"/><circle cx="6" cy="12" r="3"/><circle cx="18" cy="19" r="3"/><path d="m8.6 10.5 6.8-4m-6.8 7 6.8 4"/></svg>',
  check: '<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><path d="m5 12 4 4L19 6"/></svg>',
  user: '<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><circle cx="12" cy="8" r="4"/><path d="M4 21a8 8 0 0 1 16 0"/></svg>',
  building: '<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><path d="M4 21V5l8-3 8 3v16M8 8h1m6 0h1M8 12h1m6 0h1M8 16h1m6 0h1M10 21v-3h4v3"/></svg>',
  inbox: '<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><path d="M4 4h16v14H4zM4 14h4l2 3h4l2-3h4"/></svg>',
  plus: '<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><path d="M12 5v14M5 12h14"/></svg>',
  edit: '<svg width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><path d="M12 20h9M16.5 3.5a2.1 2.1 0 0 1 3 3L8 18l-4 1 1-4Z"/></svg>',
  trash: '<svg width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><path d="M4 7h16M9 7V4h6v3m3 0-1 14H7L6 7m4 4v6m4-6v6"/></svg>',
  eye: '<svg width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><path d="M2 12s3.5-6 10-6 10 6 10 6-3.5 6-10 6S2 12 2 12Z"/><circle cx="12" cy="12" r="2.5"/></svg>',
  logout: '<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><path d="M10 17l5-5-5-5M15 12H3M21 19V5a2 2 0 0 0-2-2h-6"/></svg>',
  external: '<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><path d="M14 3h7v7M10 14 21 3M21 14v6a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h6"/></svg>',
  upload: '<svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><path d="M12 16V4m-5 5 5-5 5 5M4 20h16"/></svg>',
  calendar: '<svg width="19" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><rect x="3" y="5" width="18" height="16" rx="2"/><path d="M16 3v4M8 3v4M3 10h18"/></svg>',
  camera: '<svg width="19" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><path d="M14.5 5 13 3H9L7.5 5H4a2 2 0 0 0-2 2v11a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V7a2 2 0 0 0-2-2Z"/><circle cx="11" cy="12" r="4"/></svg>',
  warning: '<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><path d="M10.3 3.7 2.5 17.2A2 2 0 0 0 4.2 20h15.6a2 2 0 0 0 1.7-2.8L13.7 3.7a2 2 0 0 0-3.4 0Z"/><path d="M12 9v4M12 17h.01"/></svg>',
  checkCircle: '<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="9"/><path d="m8 12 2.5 2.5L16 9"/></svg>',
  more: '<svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor"><circle cx="5" cy="12" r="1.5"/><circle cx="12" cy="12" r="1.5"/><circle cx="19" cy="12" r="1.5"/></svg>',
};

function esc(value = '') {
  return String(value).replace(/[&<>'"]/g, (char) => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', "'": '&#39;', '"': '&quot;' }[char]));
}
function attr(value = '') { return esc(value).replace(/`/g, '&#96;'); }
function safeImage(url) {
  const placeholder = '/public/images/property-placeholder.svg';
  if (!url) return placeholder;
  try {
    const parsed = new URL(url, window.location.origin);
    return ['http:', 'https:', 'data:', 'blob:'].includes(parsed.protocol) ? parsed.href : placeholder;
  } catch (_) { return placeholder; }
}
function slugify(value) {
  return String(value || '').normalize('NFD').replace(/[\u0300-\u036f]/g, '').toLowerCase().trim().replace(/[^a-z0-9]+/g, '-').replace(/^-|-$/g, '');
}
function formatPrice(property) {
  if (!Number(property.price)) return 'Consultar';
  const value = new Intl.NumberFormat('es-ES', { style: 'currency', currency: 'EUR', maximumFractionDigits: 0 }).format(Number(property.price));
  if (property.operation === 'alquiler' || property.operation === 'alquiler_opcion') return `${value}<small>/mes</small>`;
  if (property.operation === 'vacacional') return `${value}<small>/${esc(property.price_unit || 'noche')}</small>`;
  return value;
}
function operationLabel(operation = '') {
  return ({ venta: 'Venta', alquiler: 'Alquiler', alquiler_opcion: 'Alquiler con opción a compra', vacacional: 'Alquiler vacacional' })[operation] || capitalize(operation);
}
function availabilityLabel(value = 'available') {
  return ({ available: 'Disponible', reserved: 'Reservado', sold: 'Vendido', rented: 'Alquilado' })[value] || 'Disponible';
}
function propertyCompleteness(property = {}) {
  const checks = [property.title, property.reference, property.price !== null && property.price !== undefined, property.description, property.zone, property.property_type, property.operation, property.images?.length >= 3, property.agent_name, property.short_description];
  return Math.round((checks.filter(Boolean).length / checks.length) * 100);
}
function agentInitials(name = '') {
  return String(name).split(/\s+/).filter(Boolean).slice(0,2).map(part=>part[0]).join('').toUpperCase() || 'N';
}
function mapEmbedUrl(property) {
  const query = [property.zone, property.location, property.province].filter(Boolean).join(', ');
  return `https://www.google.com/maps?q=${encodeURIComponent(query)}&output=embed`;
}
function filterChips(params) {
  const entries = [
    ['operation', params.get('operation') ? operationLabel(params.get('operation')) : ''],
    ['type', params.get('type') ? propertyTypeLabel(params.get('type')) : ''],
    ['zone', params.get('zone') || ''],
    ['q', params.get('q') ? `“${params.get('q')}”` : ''],
    ['min', params.get('min') ? `Desde ${new Intl.NumberFormat('es-ES').format(Number(params.get('min')))} €` : ''],
    ['max', params.get('max') ? `Hasta ${new Intl.NumberFormat('es-ES').format(Number(params.get('max')))} €` : ''],
    ['beds', params.get('beds') ? `${params.get('beds')}+ hab.` : ''],
    ['baths', params.get('baths') ? `${params.get('baths')}+ baños` : ''],
    ['minArea', params.get('minArea') ? `${params.get('minArea')}+ m²` : ''],
    ['featured', params.get('featured') === '1' ? 'Destacados' : ''],
  ].filter(([,label])=>label);
  if (!entries.length) return '';
  return `<div class="active-filters" aria-label="Filtros aplicados">${entries.map(([key,label])=>{ const next=new URLSearchParams(params); next.delete(key); return `<a href="/inmuebles?${attr(next.toString())}" data-link class="filter-chip">${esc(label)} <span aria-hidden="true">×</span></a>`; }).join('')}<a href="/inmuebles" data-link class="filter-clear">Limpiar todo</a></div>`;
}

function imageErrorAttr(property) {
  const fallback = safeImage(property?.image_fallback || '');
  const target = fallback && !fallback.endsWith('property-placeholder.svg') ? fallback : '/public/images/property-placeholder.svg';
  return `onerror="this.onerror=null;this.src='${attr(target)}';this.closest('.property-media,.gallery-item,.seller-image,.type-tile')?.classList.add('has-placeholder')"`;
}
function formatDate(value) {
  if (!value) return '—';
  return new Intl.DateTimeFormat('es-ES', { day: '2-digit', month: 'short', year: 'numeric' }).format(new Date(value));
}
function propertyTypeLabel(type) { return PROPERTY_TYPES.find(([value]) => value === type)?.[1] || capitalize(type); }
function capitalize(value = '') { return value ? value.charAt(0).toUpperCase() + value.slice(1) : ''; }
function getPath() { return window.location.pathname.replace(/\/+$/, '') || '/'; }
function queryParams() { return new URLSearchParams(window.location.search); }
function isAdminPath() { return getPath().startsWith('/admin'); }

function logo({ compact = false, footer = false } = {}) {
  // Dos variantes: el CSS elige light/dark según el fondo (header, pie, admin, login).
  const lightSrc = compact
    ? '/public/images/brand/logo-compact-on-light.png'
    : '/public/images/brand/logo-on-light.png';
  const darkSrc = compact
    ? '/public/images/brand/logo-compact-on-dark.png'
    : '/public/images/brand/logo-on-dark.png';
  const w = compact ? 148 : footer ? 200 : 168;
  const h = compact ? 55 : footer ? 64 : 54;
  return `<span class="brand ${compact ? 'brand-compact' : ''} ${footer ? 'brand-footer' : ''}" aria-label="Inmobiliaria Noguera">
    <img class="brand-logo brand-logo-light" src="${lightSrc}" width="${w}" height="${h}" alt="Inmobiliaria Noguera" decoding="async">
    <img class="brand-logo brand-logo-dark" src="${darkSrc}" width="${w}" height="${h}" alt="" decoding="async" aria-hidden="true">
  </span>`;
}


function navLink(path, label) {
  const current = getPath();
  const active = path === '/' ? current === '/' : current.startsWith(path);
  return `<a href="${path}" data-link class="${active ? 'active' : ''}" ${active ? 'aria-current="page"' : ''}>${label}</a>`;
}


function publicHeader() {
  const home = getPath() === '/';
  return `<header class="site-header ${home ? 'header-overlay' : 'header-solid'}" id="site-header"><div class="container header-inner">
    <a href="/" data-link class="brand-link">${logo()}</a>
    <nav class="nav" aria-label="Navegación principal">
      ${navLink('/inmuebles', 'Inmuebles')}${navLink('/vender-vivienda-ecija', 'Vender')}${navLink('/financiacion', 'Financiación')}${navLink('/alquiler-vacacional', 'Vacacional')}${navLink('/nosotros', 'La agencia')}${navLink('/guias', 'Guías')}${navLink('/contacto', 'Contacto')}
    </nav>
    <div class="header-actions">
      <a class="header-phone" href="tel:${BUSINESS.phoneHref}" aria-label="Llamar al ${attr(BUSINESS.phone)}">${icons.phone}<span>${esc(BUSINESS.phone)}</span></a>
      <a class="icon-btn header-favorite" href="/favoritos" data-link aria-label="Favoritos">${icons.heart}<span class="count-badge" data-fav-count>${state.favorites.length}</span></a>
      <a class="btn btn-header" href="/valoracion-vivienda-ecija" data-link>Valorar inmueble</a>
      <button class="icon-btn mobile-toggle" data-action="toggle-menu" aria-label="${state.mobileMenu ? 'Cerrar menú' : 'Abrir menú'}" aria-expanded="${state.mobileMenu}">${state.mobileMenu ? icons.close : icons.menu}</button>
    </div>
  </div></header>
  <nav class="mobile-menu ${state.mobileMenu ? 'open' : ''}" aria-label="Navegación móvil">
    ${navLink('/inmuebles', 'Inmuebles')}${navLink('/vender-vivienda-ecija', 'Vender mi inmueble')}${navLink('/financiacion', 'Financiación')}${navLink('/alquiler-vacacional', 'Alquiler vacacional')}${navLink('/agentes', 'Equipo')}${navLink('/nosotros', 'La agencia')}${navLink('/guias', 'Guías')}${navLink('/contacto', 'Contacto')}
    <div class="mobile-menu-tools"><a href="/favoritos" data-link>${icons.heart} Favoritos (${state.favorites.length})</a><a href="/busquedas-guardadas" data-link>${icons.search} Búsquedas guardadas</a><a href="/admin" data-link>${icons.user} Zona privada</a><a href="tel:${BUSINESS.phoneHref}">${icons.phone} ${esc(BUSINESS.phone)}</a></div>
  </nav>`;
}


function publicFooter() {
  return `<footer class="footer">
    <div class="container footer-cta"><div><span class="footer-kicker">¿Hablamos de tu próximo paso?</span><h2>Comprar, vender o alquilar empieza por una conversación clara.</h2></div><div class="footer-cta-actions"><a href="tel:${BUSINESS.phoneHref}" class="btn btn-light">${icons.phone} ${esc(BUSINESS.phone)}</a><a href="/contacto" data-link class="btn btn-outline-light">Escribir al equipo</a></div></div>
    <div class="container footer-grid">
      <div class="footer-brand-col"><a href="/" data-link class="footer-brand-link brand-on-dark">${logo({ footer: true })}</a><p class="footer-intro">Inmuebles y acompañamiento inmobiliario en Écija y comarca desde una oficina a la que puedes venir, llamar y volver.</p><div class="footer-social"><a href="${attr(BUSINESS.instagram)}" target="_blank" rel="noopener">Instagram</a><a href="${attr(BUSINESS.facebook)}" target="_blank" rel="noopener">Facebook</a></div></div>
      <div><h4>Buscar</h4><div class="footer-links"><a href="/pisos-venta-ecija" data-link>Pisos en venta</a><a href="/casas-venta-ecija" data-link>Casas en venta</a><a href="/alquiler-ecija" data-link>Alquiler en Écija</a><a href="/alquiler-vacacional" data-link>Vacacional</a></div></div>
      <div><h4>Servicios</h4><div class="footer-links"><a href="/valoracion-vivienda-ecija" data-link>Valorar vivienda</a><a href="/vender-vivienda-ecija" data-link>Vender en Écija</a><a href="/guias" data-link>Guías inmobiliarias</a><a href="/admin" data-link>Zona privada</a></div></div>
      <div><h4>Oficina</h4><div class="footer-links"><span>${esc(BUSINESS.address)}<br>${esc(BUSINESS.city)}</span><a href="tel:${BUSINESS.phoneHref}">${esc(BUSINESS.phone)}</a><a href="tel:${BUSINESS.mobileHref}">${esc(BUSINESS.mobile)}</a><a href="mailto:${BUSINESS.email}">${esc(BUSINESS.email)}</a><span>${esc(BUSINESS.hours)}</span></div></div>
    </div>
    <div class="container footer-bottom"><span>© ${new Date().getFullYear()} ${esc(BUSINESS.legalName)}</span><span><a href="/legal/aviso-legal" data-link>Aviso legal</a><a href="/legal/privacidad" data-link>Privacidad</a><a href="/legal/cookies" data-link>Cookies</a><button type="button" class="footer-cookie-btn" data-action="cookies-reset">Preferencias</button></span></div>
  </footer>`;
}


function hasCookieConsent() {
  try { return Boolean(localStorage.getItem('noguera-cookie-consent')); }
  catch (_) { return false; }
}

function publicLayout(content) {
  const shellClass = getPath() === '/' ? 'home-shell' : 'inner-shell';
  const cookieOpen = !hasCookieConsent();
  const detailPath = /^\/inmuebles\/[^/]+$/.test(getPath());
  const seoPath = Boolean(getSeoPage(getPath()));
  const whatsapp = (detailPath || cookieOpen || seoPath) ? '' : `<a class="whatsapp-float" href="https://wa.me/${BUSINESS.whatsapp}?text=${encodeURIComponent('Hola, quisiera información sobre un inmueble de Inmobiliaria Noguera.')}" target="_blank" rel="noopener" aria-label="Contactar por WhatsApp"><span>${icons.phone}</span><strong>WhatsApp</strong></a>`;
  return `<div class="public-shell ${shellClass}${cookieOpen ? ' cookie-open' : ''}">${publicHeader()}<main id="main">${content}</main>${publicFooter()}${whatsapp}</div>`;
}


function cookieBannerHtml() {
  return `<aside class="cookie-banner" role="dialog" aria-modal="true" aria-labelledby="cookie-title" aria-live="polite">
    <div class="cookie-inner">
      <div class="cookie-copy">
        <strong id="cookie-title">Cookies y privacidad</strong>
        <p>Usamos cookies técnicas para el funcionamiento del sitio. Las analíticas solo se activan si las aceptas.</p>
      </div>
      <div class="cookie-actions">
        <button class="btn btn-primary btn-sm" type="button" data-action="cookies-accept">Aceptar todas</button>
        <button class="btn btn-outline btn-sm" type="button" data-action="cookies-essential">Solo necesarias</button>
        <a href="/legal/cookies" data-link>Política de cookies</a>
      </div>
    </div>
  </aside>`;
}

function mountCookieBanner() {
  if (!cookieRoot) return;
  const open = !hasCookieConsent();
  document.body.classList.toggle('cookie-open', open);
  document.documentElement.classList.toggle('cookie-open', open);
  if (!open) {
    cookieRoot.innerHTML = '';
    cookieRoot.hidden = true;
    return;
  }
  cookieRoot.hidden = false;
  cookieRoot.innerHTML = cookieBannerHtml();
}


function ensureMeta(selector, attributes = {}) {
  let el = document.head.querySelector(selector);
  if (!el) {
    const tag = selector.startsWith('link') ? 'link' : 'meta';
    el = document.createElement(tag);
    for (const [key, value] of Object.entries(attributes)) el.setAttribute(key, value);
    document.head.appendChild(el);
  }
  return el;
}

function routeRobots(path = getPath()) {
  if (path.startsWith('/admin')) return 'noindex,nofollow,noarchive';
  if (['/favoritos','/comparar','/busquedas-guardadas'].includes(path) || path.startsWith('/legal/')) return 'noindex,follow';
  if (path === '/inmuebles' && window.location.search) return 'noindex,follow';
  return 'index,follow,max-image-preview:large,max-snippet:-1,max-video-preview:-1';
}

function updateMeta({ title, description, image, canonical, robots, type = 'website' } = {}) {
  const path = getPath();
  const cleanCanonical = canonical || `${state.config?.siteUrl || SITE_ORIGIN}${path === '/' ? '/' : path}`;
  const finalTitle = title || 'Inmobiliaria Noguera | Casas y pisos en Écija';
  const finalDescription = description || 'Compra, vende o alquila inmuebles en Écija y comarca con Inmobiliaria Noguera.';
  const finalImage = image || safeImage(state.properties?.find(p => p.images?.length)?.images?.[0]);
  document.title = finalTitle;
  const values = [
    ['meta[name="description"]', {name:'description'}, finalDescription],
    ['meta[name="robots"]', {name:'robots'}, robots || routeRobots(path)],
    ['meta[property="og:title"]', {property:'og:title'}, finalTitle],
    ['meta[property="og:description"]', {property:'og:description'}, finalDescription],
    ['meta[property="og:type"]', {property:'og:type'}, type],
    ['meta[property="og:url"]', {property:'og:url'}, cleanCanonical],
    ['meta[property="og:image"]', {property:'og:image'}, finalImage],
    ['meta[property="og:image:alt"]', {property:'og:image:alt'}, finalTitle],
    ['meta[name="twitter:card"]', {name:'twitter:card'}, 'summary_large_image'],
    ['meta[name="twitter:title"]', {name:'twitter:title'}, finalTitle],
    ['meta[name="twitter:description"]', {name:'twitter:description'}, finalDescription],
    ['meta[name="twitter:image"]', {name:'twitter:image'}, finalImage],
  ];
  values.forEach(([selector, attrs, value]) => ensureMeta(selector, attrs).setAttribute('content', value));
  const link = ensureMeta('link[rel="canonical"]', {rel:'canonical'}); link.href = cleanCanonical;
  ['es-ES','x-default'].forEach(lang => {
    const alt = ensureMeta(`link[rel="alternate"][hreflang="${lang}"]`, {rel:'alternate', hreflang:lang});
    alt.href = cleanCanonical;
  });
}

function propertyCard(property) {
  const favorite = state.favorites.includes(property.id);
  const compared = state.compare.includes(property.id);
  const images = Array.isArray(property.images) ? property.images.filter(Boolean) : [];
  const hasImages = images.length > 0;
  const image = safeImage(images[0]);
  const availability = property.availability || 'available';
  const specs = [
    property.bedrooms > 0 ? `${icons.bed}<span>${property.bedrooms} hab.</span>` : '',
    property.bathrooms > 0 ? `${icons.bath}<span>${property.bathrooms} baños</span>` : '',
    property.area > 0 ? `${icons.area}<span>${property.area} m²</span>` : property.plot_area > 0 ? `${icons.area}<span>${property.plot_area} m² parcela</span>` : '',
  ].filter(Boolean);
  const mainBadge = availability !== 'available'
    ? `<span class="badge badge-availability badge-${attr(availability)}">${esc(availabilityLabel(availability))}</span>`
    : property.exclusive ? '<span class="badge badge-dark">Exclusiva</span>'
    : property.featured ? '<span class="badge badge-accent">Destacado</span>'
    : `<span class="badge badge-operation">${esc(operationLabel(property.operation))}</span>`;
  const mediaNote = property.reference === 'NOVAÉ' ? '<span class="media-note">Render oficial orientativo</span>' : '';
  return `<article class="property-card ${hasImages ? '' : 'property-card-placeholder'}">
    <div class="property-media"><a href="/inmuebles/${attr(property.slug)}" data-link aria-label="Ver ${attr(property.title)}"><img src="${attr(image)}" ${imageErrorAttr(property)} alt="${attr(property.title)} en ${attr(property.zone || property.location || 'Écija')}" loading="lazy" decoding="async" width="900" height="600"></a>
      <div class="property-badges">${mainBadge}</div>
      <div class="card-actions"><button class="card-action ${favorite ? 'active' : ''}" data-action="favorite" data-id="${attr(property.id)}" aria-label="${favorite ? 'Quitar de favoritos' : 'Añadir a favoritos'}">${favorite ? icons.heartFill : icons.heart}</button><button class="card-action ${compared ? 'active' : ''}" data-action="compare" data-id="${attr(property.id)}" aria-label="${compared ? 'Quitar del comparador' : 'Añadir al comparador'}">${icons.compare}</button></div>
      ${hasImages ? `<span class="photo-count">${icons.camera} ${images.length}</span>` : '<span class="photo-missing">Fotografía pendiente</span>'}${mediaNote}
    </div>
    <div class="property-body">
      <div class="property-meta"><span>${esc(propertyTypeLabel(property.property_type))}</span><span>Ref. ${esc(property.reference || '')}</span></div>
      <h3 class="property-title"><a href="/inmuebles/${attr(property.slug)}" data-link>${esc(property.title)}</a></h3>
      <div class="property-location">${icons.map}<span>${esc(property.zone || property.location)}${property.location && property.zone !== property.location ? ` · ${esc(property.location)}` : ''}</span></div>
      <div class="property-specs">${specs.length ? specs.map((value) => `<span class="property-spec">${value}</span>`).join('') : '<span class="property-spec property-spec-muted">Características por confirmar</span>'}</div>
      <div class="property-footer"><div>${property.previous_price ? `<span class="old-price">${new Intl.NumberFormat('es-ES',{style:'currency',currency:'EUR',maximumFractionDigits:0}).format(property.previous_price)}</span>` : ''}<span class="price">${formatPrice(property)}</span></div><a href="/inmuebles/${attr(property.slug)}" data-link class="card-link">Ver ficha ${icons.arrow}</a></div>
    </div>
  </article>`;
}


function propertiesGrid(properties, className = '') {
  if (!properties.length) return `<div class="empty-state"><div class="empty-icon">${icons.search}</div><h2 class="h3">No hemos encontrado inmuebles</h2><p class="muted">Prueba a ampliar los filtros o cuéntanos qué estás buscando.</p><a href="/contacto" data-link class="btn btn-primary">Solicitar búsqueda personalizada</a></div>`;
  return `<div class="property-grid ${className}">${properties.map(propertyCard).join('')}</div>`;
}

function pageHero({ eyebrow, title, text, side = '' }) {
  return `<section class="page-hero"><div class="page-hero-watermark">N</div><div class="container page-hero-inner"><div><div class="breadcrumbs"><a href="/" data-link>Inicio</a><span>/</span><span>${esc(eyebrow || title)}</span></div><span class="eyebrow">${esc(eyebrow || '')}</span><h1 class="h1">${title}</h1>${text ? `<p class="lead">${text}</p>` : ''}</div>${side}</div></section>`;
}

function leadForm({ property = null, source = 'contact', compact = false, visit = false } = {}) {
  const propertyText = property ? `Me interesa el inmueble ${esc(property.reference)}. Quisiera recibir más información.` : '';
  return `<form class="form-stack lead-form" data-form="lead" data-source="${attr(source)}" data-property-id="${attr(property?.id || '')}" data-property-ref="${attr(property?.reference || '')}">
    <div class="field-pair"><label class="form-field"><span>Nombre y apellidos</span><input class="input" name="name" autocomplete="name" required></label><label class="form-field"><span>Teléfono</span><input class="input" name="phone" autocomplete="tel" inputmode="tel" required></label></div>
    <label class="form-field"><span>Correo electrónico <small>opcional</small></span><input class="input" type="email" name="email" autocomplete="email"></label>
    ${visit ? `<input type="hidden" name="interest" value="visita"><div class="field-pair"><label class="form-field"><span>Fecha preferida</span><input class="input" type="text" name="visit_date" inputmode="numeric" placeholder="dd/mm/aaaa" pattern="[0-3][0-9]/[0-1][0-9]/[0-9]{4}" aria-describedby="visit-date-help"><small id="visit-date-help" class="field-help">Formato: día/mes/año</small></label><label class="form-field"><span>Franja horaria</span><select class="select" name="visit_time"><option value="">Horario flexible</option><option>Mañana</option><option>Mediodía</option><option>Tarde</option></select></label></div>` : compact ? '<input type="hidden" name="interest" value="informacion">' : `<label class="form-field"><span>Motivo de la consulta</span><select class="select" name="interest"><option value="informacion">Solicitar información</option><option value="visita">Concertar una visita</option><option value="valoracion">Valorar mi inmueble</option><option value="financiacion">Consultar financiación</option></select></label>`}
    <label class="form-field"><span>Mensaje</span><textarea class="textarea" name="message" placeholder="${property ? `Consulta sobre la referencia ${esc(property.reference)}` : 'Cuéntanos qué necesitas'}">${propertyText}</textarea></label>
    <label class="form-check"><input type="checkbox" name="privacy" required><span>Acepto la <a href="/legal/privacidad" data-link>política de privacidad</a>.</span></label>
    <button class="btn btn-primary btn-wide" type="submit">${visit ? 'Solicitar visita' : property ? 'Solicitar información' : 'Enviar consulta'} ${icons.arrow}</button>
    <div data-form-message></div>
  </form>`;
}


function infoItem(icon, title, body) {
  return `<div class="info-item"><div class="info-item-icon">${icon}</div><div><strong>${title}</strong>${body}</div></div>`;
}

function toast(message, type = '') {
  const node = document.createElement('div');
  node.className = `toast ${type}`;
  node.textContent = message;
  toastRegion.appendChild(node);
  setTimeout(() => node.remove(), 3600);
}

function showLoading() { app.innerHTML = '<div class="loading"><div class="loader" aria-label="Cargando"></div></div>'; }

function homeView() {
  const available = state.properties.filter((p) => (p.availability || 'available') !== 'sold' && p.reference !== 'NOVAÉ');
  const preferred = available.filter((p) => p.featured);
  const featured = [...preferred, ...available.filter(p => !preferred.some(item => item.id === p.id))].slice(0, 6);
  const hero = featured.find(p => p.images?.length) || state.properties.find(p => p.images?.length) || state.properties[0];
  const homes = available.filter(p=>['piso','ático','casa','chalet','apartamento'].includes(p.property_type) && p.images?.length);
  const business = available.filter(p=>['local','nave','solar','parcela_urbana','parcela_rustica','garaje'].includes(p.property_type) && p.images?.length);
  const typePicks = [homes.find(p=>['piso','ático','apartamento'].includes(p.property_type)) || homes[0] || hero, homes.find(p=>['casa','chalet'].includes(p.property_type)) || homes[1] || hero, business[0] || hero];
  updateMeta({ title: 'Inmobiliaria Noguera · Casas y pisos en Écija', description: 'Compra, vende o alquila inmuebles en Écija y comarca con un equipo local activo desde 2007.', image: safeImage(hero?.images?.[0]) });
  return publicLayout(`
    <section class="hero v5-hero">
      <div class="hero-media" aria-hidden="true"><img src="${attr(safeImage(hero?.images?.[0]))}" ${imageErrorAttr(hero)} alt=""><div class="hero-shade"></div></div>
      <div class="container hero-inner"><div class="hero-copy"><span class="hero-kicker"><i></i> Inmobiliaria · Écija · desde 2007</span><h1 class="hero-title">Tu lugar en Écija,<br>con más claridad.</h1><p class="hero-sub">Cartera real, oficina local y acompañamiento de principio a fin. Compra, vende o alquila con un equipo que conoces.</p><div class="hero-actions"><a href="/inmuebles" data-link class="btn btn-light">Explorar inmuebles</a><a href="/vender-vivienda-ecija" data-link class="hero-text-link">Vender mi propiedad</a></div></div></div>
    </section>
    <section class="home-quick-links" aria-label="Accesos rápidos"><div class="container home-quick-row"><span class="home-quick-label">Explorar</span><a href="/inmuebles?operation=venta" data-link>Venta</a><a href="/inmuebles?operation=alquiler" data-link>Alquiler</a><a href="/pisos-venta-ecija" data-link>Pisos</a><a href="/casas-venta-ecija" data-link>Casas</a><a href="/inmuebles" data-link class="home-quick-all">Ver catálogo</a></div></section>
    <section class="trust-strip"><div class="container trust-strip-grid"><div><strong>Desde 2007</strong><span>Experiencia local en Écija</span></div><div><strong>Oficina física</strong><span>${esc(BUSINESS.address)}</span></div><div><strong>Atención directa</strong><span>Un equipo en toda la operación</span></div><div><strong>Cartera actualizada</strong><span>Disponibilidad y precios al día</span></div></div></section>
    <section class="section featured-section" id="seleccion"><div class="container"><div class="section-heading section-heading-row"><div><span class="eyebrow">Selección</span><h2 class="h2">Propiedades destacadas.</h2></div><div><p class="lead">Una selección de la cartera para empezar a comparar con calma.</p><a href="/inmuebles" data-link class="editorial-link">Ver todas las propiedades</a></div></div>${propertiesGrid(featured, 'home-featured-grid')}</div></section>
    <section class="section type-discovery"><div class="container"><div class="section-heading section-heading-row"><div><span class="eyebrow">Por tipología</span><h2 class="h2">Empieza por el tipo de inmueble.</h2></div><p class="lead">Accesos directos a las búsquedas más habituales en Écija y comarca.</p></div><div class="type-discovery-grid"><a href="/inmuebles?type=piso" data-link class="type-tile type-tile-large"><img src="${attr(safeImage(typePicks[0]?.images?.[0]))}" ${imageErrorAttr(typePicks[0])} alt="Pisos y áticos de la cartera Noguera" loading="lazy" decoding="async"><span><small>Pisos y áticos</small><strong>Vivir en la ciudad</strong><em>Ver propiedades</em></span></a><a href="/inmuebles?type=casa" data-link class="type-tile"><img src="${attr(safeImage(typePicks[1]?.images?.[0]))}" ${imageErrorAttr(typePicks[1])} alt="Casas y chalets de la cartera Noguera" loading="lazy" decoding="async"><span><small>Casas y chalets</small><strong>Más espacio</strong><em>Ver propiedades</em></span></a><a href="/inmuebles?type=nave" data-link class="type-tile"><img src="${attr(safeImage(typePicks[2]?.images?.[0]))}" ${imageErrorAttr(typePicks[2])} alt="Locales, naves y terrenos de la cartera Noguera" loading="lazy" decoding="async"><span><small>Negocio e inversión</small><strong>Locales y suelo</strong><em>Ver oportunidades</em></span></a></div></div></section>
    <section class="journey-section"><div class="container"><div class="journey-heading"><span class="eyebrow">Servicios</span><h2 class="h2">Una agencia para todo el proceso.</h2></div><div class="journey-grid"><a href="/inmuebles" data-link class="journey-card"><span class="journey-index">01</span><div class="journey-icon">${icons.search}</div><div><small>Comprar o alquilar</small><h3>Busca con criterio y solicita visita sin rodeos.</h3><span class="journey-link">Explorar inmuebles ${icons.arrow}</span></div></a><a href="/vender-vivienda-ecija" data-link class="journey-card"><span class="journey-index">02</span><div class="journey-icon">${icons.home}</div><div><small>Vender</small><h3>Valoración, publicación y seguimiento comercial.</h3><span class="journey-link">Solicitar valoración ${icons.arrow}</span></div></a><a href="/financiacion" data-link class="journey-card"><span class="journey-index">03</span><div class="journey-icon">${icons.shield}</div><div><small>Financiación</small><h3>Estudia tus opciones antes de tomar una decisión.</h3><span class="journey-link">Consultar financiación ${icons.arrow}</span></div></a></div></div></section>
    <section class="section agency-proof"><div class="container agency-proof-grid"><div><span class="eyebrow">Equipo local</span><h2 class="h2">Personas que conocen el mercado y siguen cada operación.</h2><p class="lead">Noguera trabaja desde Écija desde 2007. La atención comercial, la administración y el servicio posventa se gestionan desde un equipo propio.</p><a href="/agentes" data-link class="btn btn-outline">Conocer al equipo ${icons.arrow}</a></div><div class="team-mini-grid">${AGENTS.slice(0,4).map(agent=>`<article class="team-mini"><span>${esc(agent.initials)}</span><div><strong>${esc(agent.short_name)}</strong><small>${esc(agent.role)}</small></div></article>`).join('')}</div></div></section>
    <section class="seller-section"><div class="container seller-panel"><div class="seller-image"><img src="${attr(safeImage((featured[2]||hero)?.images?.[0]))}" ${imageErrorAttr(featured[2]||hero)} alt="Vivienda comercializada por Inmobiliaria Noguera" loading="lazy" decoding="async"></div><div class="seller-copy"><span class="eyebrow">¿Tienes una propiedad?</span><h2>Preséntala mejor y conoce cada paso de la venta.</h2><p>Solicita una valoración inicial y conoce el plan de comercialización antes de decidir. El equipo coordina la ficha, las consultas, las visitas y el seguimiento.</p><ul class="seller-benefits"><li>${icons.checkCircle} Valoración razonada</li><li>${icons.checkCircle} Presentación cuidada</li><li>${icons.checkCircle} Seguimiento de interesados</li></ul><div class="seller-actions"><a href="/valoracion-vivienda-ecija" data-link class="btn btn-light">Solicitar valoración ${icons.arrow}</a><a href="tel:${BUSINESS.phoneHref}">${icons.phone} ${esc(BUSINESS.phone)}</a></div></div></div></section>
  `);
}


function filterProperties(params) {
  const q = (params.get('q') || '').trim().toLowerCase();
  const operation = params.get('operation') || '';
  const type = params.get('type') || '';
  const zone = params.get('zone') || '';
  const min = Number(params.get('min') || 0);
  const max = Number(params.get('max') || 0);
  const beds = Number(params.get('beds') || 0);
  const baths = Number(params.get('baths') || 0);
  const minArea = Number(params.get('minArea') || 0);
  const featured = params.get('featured') === '1';
  let result = state.properties.filter((p) => {
    const haystack = `${p.title} ${p.reference} ${p.zone} ${p.location} ${p.description}`.toLowerCase();
    return (!q || haystack.includes(q)) &&
      (!operation || p.operation === operation) &&
      (!type || p.property_type === type) &&
      (!zone || p.zone === zone) &&
      (!min || Number(p.price) >= min) &&
      (!max || Number(p.price) <= max) &&
      (!beds || Number(p.bedrooms) >= beds) &&
      (!baths || Number(p.bathrooms) >= baths) &&
      (!minArea || Number(p.area || p.plot_area) >= minArea) &&
      (!featured || p.featured);
  });
  const sort = params.get('sort') || 'featured';
  const sorters = {
    featured: (a,b) => Number(b.featured)-Number(a.featured) || new Date(b.created_at)-new Date(a.created_at),
    newest: (a,b) => new Date(b.created_at)-new Date(a.created_at),
    priceAsc: (a,b) => Number(a.price)-Number(b.price),
    priceDesc: (a,b) => Number(b.price)-Number(a.price),
    areaDesc: (a,b) => Number(b.area || b.plot_area)-Number(a.area || a.plot_area),
  };
  return result.sort(sorters[sort] || sorters.featured);
}

function filterSidebar(params) {
  const selected = (name, value) => params.get(name) === String(value) ? 'selected' : '';
  const checked = (name, value = '1') => params.get(name) === value ? 'checked' : '';
  return `<aside class="filters catalog-filter-panel" id="catalog-filters"><div class="filter-head"><div><strong>Afina la búsqueda</strong><span>Precio, tipo, zona y características</span></div><button class="icon-btn filter-mobile-btn" data-action="close-filters" aria-label="Cerrar filtros">${icons.close}</button></div><form data-form="filters"><input type="hidden" name="q" value="${attr(params.get('q') || '')}"><input type="hidden" name="operation" value="${attr(params.get('operation') || '')}"><div class="filter-group"><label class="filter-label">Tipo</label><select class="select" name="type"><option value="">Todos</option>${PROPERTY_TYPES.map(([v,l]) => `<option value="${v}" ${selected('type',v)}>${l}</option>`).join('')}</select></div><div class="filter-group"><label class="filter-label">Zona</label><select class="select" name="zone"><option value="">Todas las zonas</option>${ZONES.map((z) => `<option value="${attr(z)}" ${selected('zone',z)}>${esc(z)}</option>`).join('')}</select></div><div class="filter-group filter-price"><label class="filter-label">Precio</label><div class="range-row"><input class="input" type="number" name="min" min="0" step="1000" value="${attr(params.get('min') || '')}" placeholder="Mínimo"><input class="input" type="number" name="max" min="0" step="1000" value="${attr(params.get('max') || '')}" placeholder="Máximo"></div></div><div class="filter-group"><label class="filter-label">Habitaciones</label><select class="select" name="beds"><option value="">Cualquiera</option>${[1,2,3,4,5].map(n=>`<option value="${n}" ${selected('beds',n)}>${n} o más</option>`).join('')}</select></div><div class="filter-group"><label class="filter-label">Baños</label><select class="select" name="baths"><option value="">Cualquiera</option>${[1,2,3].map(n=>`<option value="${n}" ${selected('baths',n)}>${n} o más</option>`).join('')}</select></div><div class="filter-group"><label class="filter-label">Superficie</label><select class="select" name="minArea"><option value="">Cualquiera</option>${[50,80,100,150,200,300].map(n=>`<option value="${n}" ${selected('minArea',n)}>${n} m² o más</option>`).join('')}</select></div><label class="check filter-featured"><input type="checkbox" name="featured" value="1" ${checked('featured')}><span>Solo destacados</span></label><div class="filter-actions"><button class="btn btn-primary" type="submit">Aplicar</button><button class="btn btn-ghost" type="button" data-action="clear-filters">Limpiar</button></div></form></aside>`;
}


function catalogView() {
  const params = queryParams();
  const filtered = filterProperties(params);
  updateMeta({ title: 'Inmuebles en Écija y comarca · Inmobiliaria Noguera', description: 'Consulta viviendas, casas, áticos, locales, solares y alquileres disponibles en Écija y comarca.' });
  const sort = params.get('sort') || 'featured';
  const activeOperation = params.get('operation') || '';
  return publicLayout(`<section class="catalog-hero"><div class="container"><div class="breadcrumbs"><a href="/" data-link>Inicio</a><span>/</span><span>Inmuebles</span></div><div class="catalog-title-row"><div><span class="eyebrow">Cartera Noguera</span><h1>Encuentra una propiedad que encaje contigo.</h1><p>${filtered.length} inmueble${filtered.length===1?'':'s'} con los filtros actuales.</p></div></div><div class="catalog-quick"><div class="operation-links" role="navigation" aria-label="Operación"><a href="/inmuebles" data-link class="${!activeOperation?'active':''}">Todos</a><a href="/inmuebles?operation=venta" data-link class="${activeOperation==='venta'?'active':''}">Venta</a><a href="/inmuebles?operation=alquiler" data-link class="${activeOperation==='alquiler'?'active':''}">Alquiler</a><a href="/inmuebles?operation=alquiler_opcion" data-link class="${activeOperation==='alquiler_opcion'?'active':''}">Opción a compra</a><a href="/alquiler-vacacional" data-link>Vacacional</a></div><form class="catalog-inline-search" data-form="hero-search"><input type="hidden" name="operation" value="${attr(activeOperation)}"><div>${icons.search}<input name="q" value="${attr(params.get('q') || '')}" placeholder="Zona, referencia o palabra clave"></div><button class="btn btn-primary" type="submit">Buscar</button></form></div></div></section><section class="section-sm catalog-section"><div class="container catalog-layout">${filterSidebar(params)}<div class="catalog-main"><div class="catalog-toolbar"><div><span class="catalog-label">Resultados</span><strong>${filtered.length}</strong> <span class="catalog-count">inmueble${filtered.length===1?'':'s'}</span></div><div class="toolbar-actions"><button class="btn btn-outline btn-sm" data-action="save-search">${icons.search} Guardar</button><button class="btn btn-outline btn-sm filter-mobile-btn" data-action="open-filters">${icons.filter} Filtros</button><select class="select" data-action="sort" aria-label="Ordenar resultados"><option value="featured" ${sort==='featured'?'selected':''}>Recomendados</option><option value="newest" ${sort==='newest'?'selected':''}>Más recientes</option><option value="priceAsc" ${sort==='priceAsc'?'selected':''}>Precio: menor a mayor</option><option value="priceDesc" ${sort==='priceDesc'?'selected':''}>Precio: mayor a menor</option><option value="areaDesc" ${sort==='areaDesc'?'selected':''}>Mayor superficie</option></select><div class="view-switch"><button class="${state.catalogView==='grid'?'active':''}" data-action="view-grid" aria-label="Vista cuadrícula">${icons.grid}</button><button class="${state.catalogView==='list'?'active':''}" data-action="view-list" aria-label="Vista lista">${icons.list}</button></div></div></div>${filterChips(params)}${propertiesGrid(filtered, state.catalogView === 'list' ? 'list' : 'compact')}</div></div></section>`);
}


function detailView(property) {
  const image = safeImage(property.images?.[0]);
  const related = state.properties.filter((p) => p.id !== property.id && (p.zone === property.zone || p.property_type === property.property_type)).slice(0,3);
  updateMeta({ title: `${property.title} · ${property.location} | Inmobiliaria Noguera`, description: property.short_description || property.description?.slice(0,155), image });
  const favorite = state.favorites.includes(property.id);
  const compared = state.compare.includes(property.id);
  const images = property.images?.length ? property.images.filter(Boolean) : [image];
  const galleryImages = images.slice(0, 4);
  const availability = property.availability || 'available';
  const price = Number(property.price || 0); const principal = price * .8; const months = 360; const rate = .032 / 12;
  const initialPayment = price ? principal*(rate*Math.pow(1+rate,months))/(Math.pow(1+rate,months)-1) : 0;
  const initialPaymentText = initialPayment ? new Intl.NumberFormat('es-ES',{style:'currency',currency:'EUR',maximumFractionDigits:0}).format(initialPayment)+'/mes' : 'Consultar';
  const mediaNote = property.reference === 'NOVAÉ' ? '<div class="gallery-disclaimer">Render oficial orientativo de la promoción. Acabados y vistas sujetos al proyecto definitivo.</div>' : '';
  return publicLayout(`<section class="detail-hero"><div class="container"><div class="breadcrumbs"><a href="/" data-link>Inicio</a><span>/</span><a href="/inmuebles" data-link>Inmuebles</a><span>/</span><span>${esc(property.reference)}</span></div><div class="detail-top"><div class="detail-title"><div class="detail-kickers"><span>${esc(propertyTypeLabel(property.property_type))}</span><span>${esc(operationLabel(property.operation))}</span>${availability !== 'available' ? `<span class="availability-inline availability-${attr(availability)}">${esc(availabilityLabel(availability))}</span>` : ''}</div><h1 class="h1">${esc(property.title)}</h1><div class="property-location">${icons.map}<span>${esc(property.zone)}, ${esc(property.location)} (${esc(property.province || 'Sevilla')})</span></div></div><div class="detail-price-card"><span class="detail-ref">Ref. ${esc(property.reference)}</span>${property.previous_price ? `<span class="old-price">${new Intl.NumberFormat('es-ES',{style:'currency',currency:'EUR',maximumFractionDigits:0}).format(property.previous_price)}</span>`:''}<div class="price">${formatPrice(property)}</div><div class="detail-actions"><button class="icon-btn ${favorite?'active':''}" data-action="favorite" data-id="${attr(property.id)}" aria-label="Favorito">${favorite?icons.heartFill:icons.heart}</button><button class="icon-btn ${compared?'active':''}" data-action="compare" data-id="${attr(property.id)}" aria-label="Comparar">${icons.compare}</button><button class="icon-btn" data-action="share" data-title="${attr(property.title)}" aria-label="Compartir">${icons.share}</button></div></div></div></div></section><div class="container"><div class="gallery-wrap"><div class="gallery gallery-${Math.min(galleryImages.length,4)}">${galleryImages.map((src,index)=>`<button class="gallery-item gallery-item-${index+1}" data-action="open-gallery" data-index="${index}"><img src="${attr(safeImage(src))}" ${imageErrorAttr(property)} alt="${attr(property.title)} · imagen ${index+1}" width="1200" height="800"></button>`).join('')}<button class="btn btn-light gallery-more" data-action="open-gallery" data-index="0">${icons.camera} Ver ${images.length} ${images.length===1?'foto':'fotos'}</button></div>${mediaNote}</div></div><section class="section-sm"><div class="container detail-layout"><div class="detail-content"><section class="detail-section detail-specs"><div class="spec-grid">${property.bedrooms>0?`<div class="spec-card">${icons.bed}<strong>${property.bedrooms}</strong><span>Habitaciones</span></div>`:''}${property.bathrooms>0?`<div class="spec-card">${icons.bath}<strong>${property.bathrooms}</strong><span>Baños</span></div>`:''}${(property.area||property.plot_area)?`<div class="spec-card">${icons.area}<strong>${property.area || property.plot_area} m²</strong><span>${property.area?'Construidos':'Parcela'}</span></div>`:''}${property.floor?`<div class="spec-card">${icons.floor}<strong>${esc(property.floor)}</strong><span>Distribución</span></div>`:''}</div></section><section class="detail-section"><span class="eyebrow">Descripción</span><h2>Sobre este inmueble</h2><p class="detail-lead">${esc(property.short_description || '')}</p><p>${esc(property.description || '')}</p></section><section class="detail-section"><span class="eyebrow">Prestaciones</span><h2>Características</h2><div class="chip-list">${(property.features||[]).map(f=>`<span class="chip">${icons.check}${esc(f)}</span>`).join('')}</div></section><section class="detail-section"><span class="eyebrow">Información</span><h2>Datos principales</h2><div class="facts-grid"><div><span>Tipo</span><strong>${esc(propertyTypeLabel(property.property_type))}</strong></div><div><span>Operación</span><strong>${esc(operationLabel(property.operation))}</strong></div><div><span>Superficie</span><strong>${property.area?`${property.area} m² construidos`:property.plot_area?`${property.plot_area} m² de parcela`:'Consultar'}</strong></div><div><span>Año</span><strong>${property.year_built || 'No indicado'}</strong></div><div><span>Energía</span><strong>${esc(property.energy_rating || 'En trámite')}</strong></div><div><span>Estado</span><strong>${esc(availabilityLabel(availability))}</strong></div></div></section><section class="detail-section"><span class="eyebrow">Entorno</span><h2>Ubicación aproximada</h2><p class="muted">La dirección exacta se facilita al concertar la visita. El mapa sitúa la zona indicada en el anuncio.</p><div class="real-map" data-map-shell><div class="map-preview-grid" aria-hidden="true"></div><div class="map-consent"><div>${icons.map}<strong>${esc(property.zone || property.location)}</strong><span>${esc(property.location)}, ${esc(property.province || 'Sevilla')}</span></div><button class="btn btn-outline" data-action="load-map" data-map-src="${attr(mapEmbedUrl(property))}">Cargar mapa interactivo</button><a href="https://www.google.com/maps/search/?api=1&query=${encodeURIComponent(`${property.zone}, ${property.location}`)}" target="_blank" rel="noopener">Abrir en Google Maps ${icons.external}</a></div></div></section>${property.operation==='venta'?`<section class="detail-section"><span class="eyebrow">Orientación financiera</span><h2>Calcula una cuota aproximada</h2><div class="mortgage-card"><form data-form="mortgage"><div class="form-grid three"><div class="form-field"><label>Precio (€)</label><input class="input" type="number" name="price" value="${price}"></div><div class="form-field"><label>Aportación (€)</label><input class="input" type="number" name="deposit" value="${Math.round(price*.2)}"></div><div class="form-field"><label>Años</label><input class="input" type="number" name="years" value="30" min="5" max="40"></div><div class="form-field"><label>Interés (%)</label><input class="input" type="number" name="interest" value="3.2" step="0.1"></div></div><div class="mortgage-result"><div><span>Cuota mensual estimada</span><strong data-mortgage-result>${initialPaymentText}</strong></div><button class="btn btn-primary btn-sm" type="submit">Recalcular</button></div><p class="small muted">Simulación orientativa. No constituye una oferta financiera.</p></form></div></section>`:''}<section class="property-disclaimer"><strong>Información comercial</strong><p>Precio y disponibilidad sujetos a confirmación. Impuestos, gastos de notaría, registro y honorarios profesionales no incluidos salvo indicación expresa.</p>${property.source_url?`<a href="${attr(property.source_url)}" target="_blank" rel="noopener">Consultar anuncio de origen ${icons.external}</a>`:''}</section></div><aside class="detail-aside"><div class="contact-card"><div class="agent-row"><div class="agent-avatar">${esc(agentInitials(property.agent_name || 'Equipo Noguera'))}</div><div><strong>${esc(property.agent_name || 'Equipo Noguera')}</strong><span>Atención comercial para esta propiedad</span></div></div><div class="contact-card-title"><span>${icons.calendar}</span><div><strong>Solicita una visita</strong><small>Te confirmaremos fecha y hora.</small></div></div>${leadForm({property,source:'property-visit',visit:true})}<div class="contact-shortcuts"><a class="btn btn-outline btn-wide" href="tel:${BUSINESS.mobileHref}">${icons.phone} Llamar</a><a class="btn btn-whatsapp btn-wide" target="_blank" rel="noopener" href="https://wa.me/${BUSINESS.whatsapp}?text=${encodeURIComponent(`Hola, me interesa el inmueble ${property.reference}: ${property.title}`)}">WhatsApp</a></div><p class="small muted">Respondemos durante horario comercial. Referencia ${esc(property.reference)}.</p></div></aside></div></section>${related.length?`<section class="section section-paper-2"><div class="container"><div class="section-heading section-heading-row"><div><span class="eyebrow">También puede interesarte</span><h2 class="h2">Inmuebles similares</h2></div><a href="/inmuebles?type=${attr(property.property_type)}" data-link class="editorial-link">Ver más ${icons.arrow}</a></div>${propertiesGrid(related)}</div></section>`:''}`);
}


function favoritesView() {
  const items = state.properties.filter((p) => state.favorites.includes(p.id));
  updateMeta({ title: 'Tus inmuebles favoritos · Inmobiliaria Noguera', description: 'Consulta los inmuebles que has guardado como favoritos.' });
  return publicLayout(`${pageHero({eyebrow:'Favoritos',title:'Los que merecen una segunda mirada.',text:'Aquí guardamos los inmuebles que has marcado en este dispositivo.'})}<section class="section-sm"><div class="container">${propertiesGrid(items)}</div></section>`);
}

function compareView() {
  const items = state.properties.filter((p) => state.compare.includes(p.id));
  updateMeta({ title: 'Comparar inmuebles · Inmobiliaria Noguera', description: 'Compara precio, superficie, habitaciones y características de tus inmuebles seleccionados.' });
  if (!items.length) return publicLayout(`${pageHero({eyebrow:'Comparador',title:'Compara antes de decidir.',text:'Puedes seleccionar hasta tres inmuebles desde el catálogo.'})}<section class="section-sm"><div class="container">${propertiesGrid([])}</div></section>`);
  const rows = [
    ['Precio', (p)=>formatPrice(p)], ['Operación',(p)=>operationLabel(p.operation)], ['Tipo',(p)=>propertyTypeLabel(p.property_type)],
    ['Zona',(p)=>`${p.zone}, ${p.location}`], ['Habitaciones',(p)=>p.bedrooms || '—'], ['Baños',(p)=>p.bathrooms || '—'],
    ['Superficie',(p)=>p.area?`${p.area} m²`:p.plot_area?`${p.plot_area} m² parcela`:'—'], ['Planta',(p)=>p.floor||'—'],
    ['Energía',(p)=>p.energy_rating||'En trámite'], ['Características',(p)=>(p.features||[]).slice(0,5).join(', ')||'—'],
  ];
  return publicLayout(`${pageHero({eyebrow:'Comparador',title:'Ponlos frente a frente.',text:'Una vista rápida para comparar los datos que más pesan en tu decisión.'})}<section class="section-sm"><div class="container" style="overflow:auto"><table class="compare-table"><thead><tr><th>Inmueble</th>${items.map(p=>`<th><img class="compare-image" src="${attr(safeImage(p.images?.[0]))}" ${imageErrorAttr(p)} alt="${attr(p.title)}"><a href="/inmuebles/${attr(p.slug)}" data-link><strong>${esc(p.title)}</strong></a><br><button class="btn btn-ghost btn-sm" data-action="compare" data-id="${attr(p.id)}">Quitar</button></th>`).join('')}</tr></thead><tbody>${rows.map(([label,fn])=>`<tr><td>${label}</td>${items.map(p=>`<td>${fn(p)}</td>`).join('')}</tr>`).join('')}</tbody></table></div></section>`);
}

function savedSearchesView() {
  updateMeta({ title: 'Búsquedas guardadas · Inmobiliaria Noguera', description: 'Recupera tus búsquedas de inmuebles guardadas en este dispositivo.' });
  const items = state.savedSearches;
  return publicLayout(`${pageHero({eyebrow:'Tu selección',title:'Búsquedas guardadas.',text:'Guarda filtros y vuelve a consultar la cartera sin repetir cada criterio.'})}<section class="section-sm"><div class="container saved-search-list">${items.length ? items.map((item)=>`<article class="saved-search-card"><div><span class="eyebrow">Guardada ${esc(formatDate(item.created_at))}</span><h2>${esc(item.label)}</h2><p>${esc(item.summary || 'Búsqueda de inmuebles en Noguera')}</p></div><div class="saved-search-actions"><a href="${attr(item.url)}" data-link class="btn btn-primary btn-sm">Ver resultados ${icons.arrow}</a><button class="btn btn-outline btn-sm" data-action="delete-search" data-id="${attr(item.id)}">Eliminar</button></div></article>`).join('') : `<div class="empty-state"><div class="empty-icon">${icons.search}</div><h2>No tienes búsquedas guardadas</h2><p>Configura tus filtros en el catálogo y pulsa “Guardar búsqueda”.</p><a href="/inmuebles" data-link class="btn btn-primary">Buscar inmuebles</a></div>`}</div></section>`);
}

function sellView() {
  updateMeta({ title: 'Vende tu inmueble en Écija · Inmobiliaria Noguera', description: 'Solicita una valoración y descubre cómo comercializar tu vivienda con una presentación cuidada y seguimiento profesional.' });
  return publicLayout(`${pageHero({eyebrow:'Vende con Noguera',title:'Tu inmueble no necesita más ruido. Necesita una estrategia.',text:'Valoramos, presentamos y gestionamos cada contacto para que la venta avance con orden y claridad.',side:'<a href="#valoracion" class="btn btn-accent">Solicitar valoración</a>'})}
  <section class="section"><div class="container feature-split"><div><span class="eyebrow">Presentación y seguimiento</span><h2 class="h2">Una buena venta empieza mucho antes de la visita.</h2><p class="lead">Analizamos la propiedad, definimos cómo presentarla y organizamos la comercialización para atraer a compradores con interés real.</p><div class="feature-list">
    <div class="feature-item"><div class="feature-icon">${icons.search}</div><div><strong>Valoración razonada</strong><p>Estudiamos ubicación, estado, superficie, demanda y comparables.</p></div></div>
    <div class="feature-item"><div class="feature-icon">${icons.spark}</div><div><strong>Presentación cuidada</strong><p>Fotografía, descripción, orden de imágenes y ficha preparada para convertir visitas en consultas.</p></div></div>
    <div class="feature-item"><div class="feature-icon">${icons.shield}</div><div><strong>Filtrado y seguimiento</strong><p>Centralizamos interesados, visitas y próximos pasos para que siempre sepas qué está ocurriendo.</p></div></div>
  </div></div><div class="feature-image"><img src="/public/images/8631-chalet-urbanizacion.jpeg" alt="Vivienda preparada para la venta" loading="eager" decoding="async"></div></div></section>
  <section class="section section-paper-2"><div class="container"><div class="section-heading"><span class="eyebrow">Cómo trabajamos</span><h2 class="h2">Cuatro pasos, sin perderte por el camino</h2></div><div class="process-grid"><div class="process-card"><h3>Primera conversación</h3><p>Conocemos el inmueble, tu situación y el plazo que tienes en mente.</p></div><div class="process-card"><h3>Valoración y propuesta</h3><p>Definimos precio, enfoque comercial y documentación necesaria.</p></div><div class="process-card"><h3>Salida al mercado</h3><p>Publicamos, difundimos y atendemos las consultas de forma ordenada.</p></div><div class="process-card"><h3>Visitas y cierre</h3><p>Coordinamos visitas, negociación, reservas y pasos hasta la firma.</p></div></div></div></section>
  <section class="section" id="valoracion"><div class="container content-grid"><div><span class="eyebrow">Valoración inicial</span><h2 class="h2">Cuéntanos qué quieres vender</h2><p class="lead">No necesitas tener todos los datos. Con una primera descripción podemos orientarte y concertar una visita.</p><div class="info-card" style="margin-top:28px"><div class="info-list">${infoItem(icons.phone,'Respuesta directa',`<span>Te contactaremos durante horario comercial.</span>`)}${infoItem(icons.map,'Especialistas en la zona',`<span>Écija y municipios cercanos.</span>`)}${infoItem(icons.shield,'Sin compromiso',`<span>La solicitud inicial no implica contratación.</span>`)}</div></div></div><div class="info-card">${leadForm({source:'valuation'})}</div></div></section>`);
}

function aboutView() {
  updateMeta({ title: 'La agencia · Inmobiliaria Noguera', description: 'Inmobiliaria Noguera trabaja desde Écija desde 2007 con atención comercial, administración y servicio posventa propios.' });
  return publicLayout(`${pageHero({eyebrow:'La agencia',title:'Écija no se aprende desde una pantalla.',text:'Noguera nació aquí en 2007 y trabaja cada operación con atención local, información ordenada y seguimiento directo.'})}
  <section class="section"><div class="container feature-split"><div class="feature-image about-collage"><img src="/public/images/8662-casa-alcarrachela.jpeg" alt="Vivienda comercializada por Noguera" loading="eager" decoding="async"><div class="about-year"><strong>2007</strong><span>Año de fundación</span></div></div><div><span class="eyebrow">Nuestra historia</span><h2 class="h2">Una inmobiliaria de Écija para personas de aquí y de fuera.</h2><p class="lead">La agencia se creó con el objetivo de ayudar a quienes quieren comprar, vender o alquilar con una atención cercana y comprensible.</p><p>El trabajo combina conocimiento de zonas y precios, preparación de la propiedad, atención a consultas, coordinación de visitas y acompañamiento hasta el cierre.</p><div class="feature-list"><div class="feature-item"><div class="feature-icon">${icons.map}</div><div><strong>Conocimiento local</strong><p>Écija, su comarca y los municipios en los que opera la cartera.</p></div></div><div class="feature-item"><div class="feature-icon">${icons.user}</div><div><strong>Equipo propio</strong><p>Comercial, administración, atención al cliente y servicio posventa.</p></div></div><div class="feature-item"><div class="feature-icon">${icons.shield}</div><div><strong>Seguimiento</strong><p>Información y próximos pasos durante toda la operación.</p></div></div></div></div></div></section>
  <section class="section section-paper-2"><div class="container"><div class="section-heading section-heading-row"><div><span class="eyebrow">Equipo</span><h2 class="h2">Las personas detrás de Noguera.</h2></div><a href="/agentes" data-link class="editorial-link">Ver perfiles ${icons.arrow}</a></div><div class="agent-grid">${AGENTS.map(agent=>`<article class="agent-card"><div class="agent-card-avatar">${esc(agent.initials)}</div><div><h3>${esc(agent.short_name)}</h3><p>${esc(agent.role)}</p><span>En el equipo desde ${agent.since}</span></div></article>`).join('')}</div></div></section>
  <section class="section section-dark"><div class="container"><div class="section-heading"><span class="eyebrow">Nuestra forma de trabajar</span><h2 class="h2">Cercanía con método.</h2></div><div class="values-grid"><div class="value-card">${icons.user}<h3 class="h3">Escuchar primero</h3><p>Entender la necesidad evita visitas innecesarias y decisiones apresuradas.</p></div><div class="value-card">${icons.camera}<h3 class="h3">Presentar con cuidado</h3><p>La ficha, las imágenes y la respuesta comercial influyen en el resultado.</p></div><div class="value-card">${icons.checkCircle}<h3 class="h3">Cerrar bien</h3><p>La operación necesita coordinación, documentación y seguimiento hasta la firma.</p></div></div></div></section>`);
}


function contactView() {
  updateMeta({ title: 'Contacto · Inmobiliaria Noguera Écija', description: 'Contacta con Inmobiliaria Noguera en Ronda San Agustín 35, Écija. Teléfono, WhatsApp, correo y formulario.' });
  return publicLayout(`${pageHero({eyebrow:'Contacto',title:'Hablemos de lo que estás buscando.',text:'Compra, alquiler, venta o una primera orientación: dinos qué necesitas y te responderemos directamente.'})}<section class="section"><div class="container content-grid"><div><div class="section-heading"><span class="eyebrow">Oficina en Écija</span><h2 class="h2">Estamos cerca.</h2></div><div class="info-card"><div class="info-list">${infoItem(icons.map,'Dirección',`<span>${esc(BUSINESS.address)}<br>${esc(BUSINESS.city)}</span>`)}${infoItem(icons.phone,'Teléfonos',`<a href="tel:${BUSINESS.phoneHref}">${esc(BUSINESS.phone)}</a><br><a href="tel:${BUSINESS.mobileHref}">${esc(BUSINESS.mobile)}</a>`)}${infoItem(icons.mail,'Correo',`<a href="mailto:${BUSINESS.email}">${esc(BUSINESS.email)}</a>`)}${infoItem(icons.clock,'Horario',`<span>${esc(BUSINESS.hours)}</span>`)}</div></div><div class="map-placeholder" style="margin-top:20px"><div class="map-grid"></div><div class="map-road"></div><div class="map-road two"></div><div class="map-marker">${icons.home}</div><div class="map-label"><div><strong>${esc(BUSINESS.address)}</strong><div class="small muted">${esc(BUSINESS.city)}</div></div><a class="btn btn-primary btn-sm" target="_blank" rel="noopener" href="https://www.google.com/maps/search/?api=1&query=${encodeURIComponent(`${BUSINESS.address}, ${BUSINESS.city}`)}">Cómo llegar ${icons.external}</a></div></div></div><div class="info-card"><h2 class="h3" style="margin-bottom:8px">Envíanos tu consulta</h2><p class="muted">Cuanta más información nos des, mejor podremos ayudarte desde el primer contacto.</p>${leadForm({source:'contact'})}</div></div></section>`);
}

function agentsView() {
  updateMeta({ title:'Equipo comercial · Inmobiliaria Noguera', description:'Conoce al equipo comercial, administrativo y posventa de Inmobiliaria Noguera en Écija.' });
  return publicLayout(`${pageHero({eyebrow:'Equipo',title:'Personas a las que puedes poner nombre y llamar.',text:'Comercial, administración, atención al cliente y servicio posventa desde la oficina de Écija.'})}<section class="section"><div class="container agent-grid agent-grid-full">${AGENTS.map((agent,index)=>`<article class="agent-card agent-card-profile"><div class="agent-card-avatar">${esc(agent.initials)}</div><div><span class="agent-number">0${index+1}</span><h2>${esc(agent.short_name)}</h2><p>${esc(agent.role)}</p><span>En el equipo desde ${agent.since}</span><div class="agent-actions"><a href="tel:${BUSINESS.mobileHref}">${icons.phone} Llamar</a><a href="mailto:${BUSINESS.email}">${icons.mail} Escribir</a></div></div></article>`).join('')}</div></section><section class="section section-paper-2"><div class="container cta-panel"><div class="cta-content"><span class="eyebrow">Oficina en Écija</span><h2 class="h2">Ven a vernos o cuéntanos qué necesitas.</h2><p>${esc(BUSINESS.address)}, ${esc(BUSINESS.city)}.</p></div><a href="/contacto" data-link class="btn btn-primary">Contactar ${icons.arrow}</a></div></section>`);
}


function financingView() {
  updateMeta({ title:'Financiación inmobiliaria en Écija · Inmobiliaria Noguera', description:'Información y simulador de financiación para la compra de inmuebles con Inmobiliaria Noguera.' });
  return publicLayout(`${pageHero({eyebrow:'Financiación',title:'Estudia la operación antes de dar el paso.',text:'Noguera anuncia estudio de financiación, alternativas cuando la banca deniega una operación y orientación previa a la firma.'})}<section class="section-sm"><div class="container finance-layout"><div><div class="finance-points"><div class="finance-point"><span>01</span><div><strong>Estudio de la operación</strong><p>Revisión inicial de la situación y de las posibilidades de financiación.</p></div></div><div class="finance-point"><span>02</span><div><strong>Alternativas de financiación</strong><p>La agencia informa de que trabaja con inversores para determinados préstamos de capital privado.</p></div></div><div class="finance-point"><span>03</span><div><strong>Casos con deudas o embargos</strong><p>Orientación inicial y derivación al profesional adecuado cuando el caso requiere análisis específico.</p></div></div><div class="finance-point"><span>04</span><div><strong>Daciones y negociación</strong><p>Información sobre posibles vías de actuación con la entidad financiera.</p></div></div></div><p class="small muted" style="margin-top:18px">Toda financiación está sujeta a estudio, aprobación, documentación y condiciones del proveedor. La web no garantiza financiación ni sustituye asesoramiento financiero o jurídico.</p></div><aside class="finance-card"><span class="eyebrow" style="color:#d9c49a">Simulador orientativo</span><h2 class="h3">Calcula una mensualidad aproximada</h2><form data-form="mortgage"><div class="form-field"><label>Precio o préstamo (€)</label><input class="input" type="number" name="price" value="150000"></div><div class="form-field"><label>Aportación (€)</label><input class="input" type="number" name="deposit" value="30000"></div><div class="form-field"><label>Años</label><input class="input" type="number" name="years" value="30" min="5" max="40"></div><div class="form-field"><label>Interés (%)</label><input class="input" type="number" name="interest" value="3.2" step="0.1"></div><div class="mortgage-result"><div><span class="small">Cuota estimada</span><strong data-mortgage-result>—</strong></div><button class="btn btn-light btn-sm" type="submit">Calcular</button></div></form><a href="/contacto" data-link class="btn btn-outline btn-wide" style="color:white;border-color:rgba(255,255,255,.35);margin-top:20px">Consultar financiación</a></aside></div></section>`);
}

function vacationView() {
  updateMeta({ title:'Alquiler vacacional en Écija · Inmobiliaria Noguera', description:'Consulta Villa Paraíso y los alojamientos vacacionales gestionados por Inmobiliaria Noguera en Écija.' });
  return publicLayout(`<section class="vacational-hero vacational-hero-data"><div class="vacational-copy"><span class="eyebrow" style="color:#d9c49a">Alquiler vacacional</span><h1>Villa Paraíso, una estancia amplia en Écija.</h1><p class="lead" style="color:rgba(255,255,255,.72)">La oferta publicada por Noguera identifica Villa Paraíso, registro VFT/SE/10427, en la urbanización Cuesta Blanca. La disponibilidad, el precio y la galería completa deben confirmarse con la agencia.</p><div class="vacational-actions"><a href="/contacto" data-link class="btn btn-light">Consultar disponibilidad ${icons.arrow}</a><a href="tel:${BUSINESS.phoneHref}" class="hero-text-link">Llamar a la oficina</a></div></div><div class="vacational-facts" aria-label="Datos del alojamiento"><div><span>Capacidad publicada</span><strong>Hasta 20 personas</strong></div><div><span>Entorno</span><strong>Cuesta Blanca · Écija</strong></div><div><span>Espacios</span><strong>Piscina y jardines</strong></div><div><span>Registro</span><strong>VFT/SE/10427</strong></div><p>No se incorpora ninguna fotografía no verificada. El panel permite que el comercial cargue la galería real y autorizada cuando Noguera entregue los archivos originales.</p></div></section><section class="section-sm"><div class="container finance-layout"><div><span class="eyebrow">Reservas</span><h2 class="h2">Información clara antes de confirmar.</h2><p class="lead">La web puede mostrar calendario, condiciones, capacidad, normas, precios por temporada y formulario de solicitud. En esta entrega, la reserva se tramita directamente con la agencia para evitar publicar datos no confirmados.</p><div class="finance-points"><div class="finance-point"><span>01</span><div><strong>Consulta de fechas</strong><p>El cliente solicita entrada, salida y número de huéspedes.</p></div></div><div class="finance-point"><span>02</span><div><strong>Confirmación comercial</strong><p>Noguera comprueba disponibilidad, tarifa y condiciones.</p></div></div><div class="finance-point"><span>03</span><div><strong>Gestión desde el panel</strong><p>El equipo recibe la solicitud en la bandeja privada y puede marcarla como gestionada.</p></div></div></div></div><aside class="finance-card"><span class="eyebrow" style="color:#d9c49a">Solicitar estancia</span><h2 class="h3">Consulta fechas y capacidad</h2>${leadForm({source:'vacational',compact:false})}</aside></div></section>`);
}

const legalCopy = {
  'aviso-legal': {
    eyebrow: 'Información legal', title: 'Aviso legal',
    body: `<h2>1. Identificación del titular</h2><p>El titular de este sitio web es <strong>${esc(BUSINESS.legalName)}</strong>, con CIF <strong>${esc(BUSINESS.taxId)}</strong> y domicilio en ${esc(BUSINESS.address)}, ${esc(BUSINESS.city)}. Contacto: <a href="mailto:${BUSINESS.email}">${esc(BUSINESS.email)}</a> y ${esc(BUSINESS.phone)}.</p><h2>2. Objeto</h2><p>Este sitio facilita información sobre servicios y ofertas inmobiliarias. Las descripciones, superficies, precios y disponibilidades pueden estar sujetas a verificación, modificación, venta, alquiler o retirada.</p><h2>3. Condiciones económicas</h2><p>Salvo indicación expresa, los precios de compraventa no incluyen impuestos, gastos de notaría, registro, gestoría ni otros gastos asociados. Los honorarios profesionales se informarán según la operación y encargo correspondiente.</p><h2>4. Responsabilidad</h2><p>La información se revisa con diligencia, pero puede contener errores u omisiones. Ninguna simulación financiera de la web constituye una oferta o asesoramiento financiero.</p><h2>5. Propiedad intelectual</h2><p>Los textos, diseño, elementos gráficos y contenidos propios están protegidos por la normativa aplicable. Las fotografías de inmuebles deben proceder de material propio o autorizado por la agencia. La entrega identifica las fuentes públicas usadas para la demostración y prevé su migración al almacenamiento propio.</p><h2>6. Legislación</h2><p>Las relaciones derivadas del uso del sitio se rigen por la legislación española. Cuando resulte aplicable, las controversias se someterán a los juzgados y tribunales legalmente competentes.</p>`
  },
  privacidad: {
    eyebrow: 'Protección de datos', title: 'Política de privacidad',
    body: `<h2>1. Responsable</h2><p>${esc(BUSINESS.legalName)}, CIF ${esc(BUSINESS.taxId)}, ${esc(BUSINESS.address)}, ${esc(BUSINESS.city)}. Correo de contacto: <a href="mailto:${BUSINESS.email}">${esc(BUSINESS.email)}</a>.</p><h2>2. Datos tratados</h2><p>Podemos tratar datos identificativos y de contacto, información sobre el inmueble o búsqueda, comunicaciones y datos necesarios para gestionar visitas, valoraciones u operaciones.</p><h2>3. Finalidades y base jurídica</h2><p>Los datos se usan para responder consultas, gestionar solicitudes y prestar servicios inmobiliarios. La base puede ser el consentimiento, la ejecución de medidas precontractuales o contractuales y el cumplimiento de obligaciones legales.</p><h2>4. Conservación</h2><p>Las consultas se conservarán durante el tiempo necesario para atenderlas y, posteriormente, durante los plazos exigidos para atender responsabilidades. Los datos de clientes se conservarán según las obligaciones legales y contractuales aplicables.</p><h2>5. Destinatarios</h2><p>No se cederán datos salvo obligación legal o cuando sea necesario para la operación y exista base legítima. Los proveedores tecnológicos podrán actuar como encargados del tratamiento bajo contrato.</p><h2>6. Derechos</h2><p>Puedes solicitar acceso, rectificación, supresión, oposición, limitación y portabilidad escribiendo a ${esc(BUSINESS.email)} e identificando tu solicitud. También puedes reclamar ante la Agencia Española de Protección de Datos.</p><h2>7. Seguridad</h2><p>Se aplican medidas razonables para proteger la información. La versión definitiva deberá formalizar contratos con proveedores, revisar formularios y documentar el registro de actividades de tratamiento.</p>`
  },
  cookies: {
    eyebrow: 'Preferencias', title: 'Política de cookies',
    body: `<h2>1. Qué son las cookies</h2><p>Son pequeños archivos que un sitio puede guardar en tu dispositivo para recordar información o medir el uso de la web.</p><h2>2. Cookies utilizadas</h2><h3>Técnicas (siempre activas)</h3><p>Necesarias para navegación, favoritos y búsquedas guardadas en el dispositivo, sesión privada del panel y recordar tu preferencia de privacidad (<code>noguera-cookie-consent</code>).</p><h3>Analíticas (opcionales)</h3><p>Google Analytics 4 solo se carga cuando existe un identificador configurado (<code>GA_MEASUREMENT_ID</code>) y el visitante acepta expresamente las cookies analíticas. Mide páginas vistas y eventos de contacto sin cargar scripts de terceros hasta el consentimiento.</p><h2>3. Gestión del consentimiento</h2><p>Puedes aceptar o rechazar las cookies no necesarias desde el aviso inicial o desde esta página. La elección se guarda en tu navegador y puedes cambiarla en cualquier momento.</p><div class="cookie-manage-panel"><strong>Tu preferencia actual</strong><p data-cookie-status></p><div class="cookie-manage-actions"><button class="btn btn-primary btn-sm" type="button" data-action="cookies-accept">Aceptar analíticas</button><button class="btn btn-outline btn-sm" type="button" data-action="cookies-essential">Solo necesarias</button><button class="btn btn-ghost btn-sm" type="button" data-action="cookies-reset">Volver a mostrar el aviso</button></div></div><h2>4. Proveedores y transferencia</h2><p>Si se activa Google Analytics, Google puede tratar datos de uso según su política. La configuración por defecto anonimiza la IP y no envía página vista hasta el consentimiento.</p><h2>5. Actualizaciones</h2><p>Si se añaden Meta Pixel, mapas embebidos automáticos u otra tecnología de terceros, se actualizarán esta política, el inventario de cookies y el bloqueo previo al consentimiento.</p>`
  }
};

function legalView(slug) {
  const page = legalCopy[slug] || legalCopy['aviso-legal'];
  updateMeta({ title: `${page.title} · Inmobiliaria Noguera`, description: `Información sobre ${page.title.toLowerCase()} de Inmobiliaria Noguera.` });
  const consent = localStorage.getItem('noguera-cookie-consent');
  const consentLabel = consent === 'analytics' ? 'Analíticas aceptadas' : consent === 'essential' ? 'Solo cookies necesarias' : 'Sin elección registrada';
  const body = page.body.replace('<p data-cookie-status></p>', `<p data-cookie-status>${consentLabel}</p>`);
  return publicLayout(`${pageHero({eyebrow:page.eyebrow,title:page.title,text:'Última actualización: agosto de 2026.'})}<section class="section-sm"><div class="container legal-content">${body}</div></section>`);
}

function adminNavLink(path, label, icon) {
  const active = getPath() === path || (path !== '/admin' && getPath().startsWith(path));
  return `<a href="${path}" data-link class="${active ? 'active' : ''}">${icon}<span>${label}</span></a>`;
}

function adminLayout(content) {
  const email = service.getSession()?.user?.email || 'Administrador';
  return `<div class="admin-shell"><aside class="admin-sidebar"><div class="admin-brand-row"><a href="/admin" data-link class="brand-on-dark">${logo({ compact: true })}</a><button class="admin-mobile-close" data-action="toggle-admin-nav" aria-label="Cerrar navegación">${icons.close}</button></div><nav class="admin-nav">${adminNavLink('/admin','Resumen',icons.grid)}${adminNavLink('/admin/inmuebles','Inmuebles',icons.building)}${adminNavLink('/admin/leads','Solicitudes',icons.inbox)}<a href="/" data-link>${icons.external}<span>Ver web pública</span></a></nav><div class="admin-sidebar-foot">${service.isDemo()?'<div class="demo-pill">Modo demo · cambios locales</div>':''}<button class="btn btn-ghost" data-action="logout">${icons.logout}<span>Cerrar sesión</span></button></div></aside><div class="admin-main"><header class="admin-topbar"><button class="admin-menu-button" data-action="toggle-admin-nav" aria-label="Abrir navegación">${icons.menu}</button><div><strong>Panel comercial</strong><div class="small muted">${esc(email)}</div></div><div class="admin-top-actions"><a href="/" data-link class="btn btn-outline btn-sm admin-view-site">${icons.external} Ver web</a><a href="/admin/inmuebles/nuevo" data-link class="btn btn-accent btn-sm">${icons.plus} Nuevo inmueble</a></div></header><main class="admin-content">${content}</main></div></div>`;
}


function loginView() {
  updateMeta({ title:'Acceso privado · Inmobiliaria Noguera', description:'Panel privado de gestión de inmuebles.' });
  return `<div class="login-page"><div class="login-visual"><a href="/" data-link class="brand-on-dark">${logo()}</a><div class="login-quote"><p>Una cartera ordenada se vende mejor.</p><span>Panel privado de Inmobiliaria Noguera</span></div></div><div class="login-form-wrap"><div class="login-card"><a href="/" data-link class="small muted">← Volver a la web</a><h1>Acceso privado</h1><p>Gestiona inmuebles, imágenes y solicitudes desde un único lugar.</p><form class="form-stack" data-form="login"><input class="input" type="email" name="email" placeholder="Correo electrónico" autocomplete="username" required><input class="input" type="password" name="password" placeholder="Contraseña" autocomplete="current-password" required><button class="btn btn-primary btn-wide" type="submit">Entrar al panel ${icons.arrow}</button><div data-form-message></div></form>${service.isDemo()?'<div class="demo-credentials"><strong>Acceso de demostración</strong><br>admin@noguera.demo<br>demo1234</div>':''}</div></div></div>`;
}

function adminDashboardView() {
  const published = state.adminProperties.filter(p=>p.status==='published').length;
  const newLeads = state.leads.filter(l=>l.status==='new').length;
  const needsAttention = state.adminProperties.filter(p=>propertyCompleteness(p)<80).length;
  const recentProperties = state.adminProperties.slice(0,5);
  const recentLeads = state.leads.slice(0,5);
  updateMeta({ title:'Panel comercial · Inmobiliaria Noguera' });
  const inbox = recentLeads.length ? `<div class="lead-list">${recentLeads.map(adminLeadItem).join('')}</div>` : `<div class="admin-empty admin-empty-compact">${icons.checkCircle}<strong>Bandeja al día</strong><span>Las nuevas consultas aparecerán aquí.</span><div class="admin-quick-links"><a href="/admin/inmuebles/nuevo" data-link>Crear inmueble</a><a href="/admin/inmuebles" data-link>Revisar fichas</a></div></div>`;
  return adminLayout(`<div class="admin-heading"><div><span class="admin-eyebrow">Panel comercial</span><h1>Resumen de la cartera</h1><p>Publicación, disponibilidad, calidad de fichas y solicitudes.</p></div></div><div class="admin-stats"><div class="admin-stat"><div class="admin-stat-top"><span>Cartera total</span><div class="admin-stat-icon">${icons.building}</div></div><strong>${state.adminProperties.length}</strong><small>inmuebles registrados</small></div><div class="admin-stat"><div class="admin-stat-top"><span>Publicados</span><div class="admin-stat-icon">${icons.eye}</div></div><strong>${published}</strong><small>visibles en la web</small></div><div class="admin-stat"><div class="admin-stat-top"><span>Solicitudes nuevas</span><div class="admin-stat-icon">${icons.inbox}</div></div><strong>${newLeads}</strong><small>pendientes de respuesta</small></div><div class="admin-stat ${needsAttention?'admin-stat-warning':''}"><div class="admin-stat-top"><span>Fichas incompletas</span><div class="admin-stat-icon">${icons.warning}</div></div><strong>${needsAttention}</strong><small>por debajo del 80%</small></div></div><div class="admin-grid"><section class="admin-card admin-card-wide"><div class="admin-card-head"><div><h2>Últimos inmuebles</h2><p>Estado, disponibilidad y calidad de cada ficha.</p></div><a href="/admin/inmuebles" data-link class="btn btn-outline btn-sm">Gestionar cartera</a></div>${adminPropertiesTable(recentProperties)}</section><section class="admin-card admin-inbox-card"><div class="admin-card-head"><div><h2>Solicitudes recientes</h2><p>${newLeads ? `${newLeads} pendiente${newLeads===1?'':'s'}` : 'Sin pendientes'}</p></div><a href="/admin/leads" data-link class="btn btn-outline btn-sm">Ver bandeja</a></div>${inbox}</section></div>`);
}


function adminPropertiesTable(items) {
  if (!items.length) return `<div class="admin-empty">${icons.building}<strong>No hay inmuebles con estos filtros</strong><span>Cambia los filtros o crea una nueva ficha.</span><a href="/admin/inmuebles/nuevo" data-link class="btn btn-accent btn-sm">${icons.plus} Nuevo inmueble</a></div>`;
  return `<div class="admin-property-list"><div class="admin-property-header" aria-hidden="true"><span>Inmueble</span><span>Calidad</span><span>Disponibilidad y acciones</span></div>${items.map(p=>{ const completeness=propertyCompleteness(p); const availability=p.availability||'available'; const publication = p.status==='published' ? 'Publicado' : p.status==='archived' ? 'Archivado' : 'Borrador'; return `<article class="admin-property-row"><div class="admin-property-main"><img src="${attr(safeImage(p.images?.[0]))}" ${imageErrorAttr(p)} alt="" loading="eager" fetchpriority="high" decoding="async"><div class="admin-property-copy"><strong class="admin-property-title" title="${attr(p.title)}">${esc(p.title)}</strong><div class="admin-property-context"><span class="status status-${attr(p.status||'draft')}">${publication}</span><span>Ref. ${esc(p.reference)}</span><span>${esc(p.zone||p.location)}</span></div><div class="admin-property-meta"><span>${esc(operationLabel(p.operation))}</span><span>${formatPrice(p)}</span></div></div></div><div class="admin-completeness"><div><span>Calidad de ficha</span><strong>${completeness}%</strong></div><progress max="100" value="${completeness}">${completeness}%</progress><small>${completeness<80?'Revisa datos o fotografías':'Lista para comercializar'}</small></div><div class="admin-row-actions"><button class="availability-button availability-${attr(availability)}" data-action="cycle-availability" data-id="${attr(p.id)}" data-current="${attr(availability)}" title="Cambiar disponibilidad">${availabilityLabel(availability)}</button><a class="btn btn-outline btn-sm" href="/inmuebles/${attr(p.slug)}" data-link>${icons.eye}<span>Ver</span></a><a class="btn btn-primary btn-sm" href="/admin/inmuebles/${attr(p.id)}" data-link>${icons.edit}<span>Editar</span></a><button class="action-btn danger" data-action="delete-property" data-id="${attr(p.id)}" title="Eliminar" aria-label="Eliminar inmueble">${icons.trash}</button></div></article>`; }).join('')}</div>`;
}


function adminPropertiesView() {
  const params = queryParams();
  const q = (params.get('q')||'').toLowerCase();
  const status = params.get('status')||'';
  const availability = params.get('availability')||'';
  const items = state.adminProperties.filter(p=>(!q || `${p.title} ${p.reference} ${p.zone}`.toLowerCase().includes(q)) && (!status || p.status===status) && (!availability || (p.availability||'available')===availability));
  updateMeta({ title:'Gestionar inmuebles · Inmobiliaria Noguera' });
  return adminLayout(`<div class="admin-heading"><div><span class="admin-eyebrow">Cartera</span><h1>Inmuebles</h1><p>Edita la ficha, cambia la disponibilidad y controla qué aparece en la web.</p></div><a href="/admin/inmuebles/nuevo" data-link class="btn btn-accent">${icons.plus} Nuevo inmueble</a></div><section class="admin-card"><form class="admin-filter-bar" data-form="admin-filter"><div class="admin-search">${icons.search}<input class="input" name="q" value="${attr(params.get('q')||'')}" placeholder="Buscar por título, referencia o zona"></div><select class="select" name="status"><option value="">Todos los estados</option><option value="published" ${status==='published'?'selected':''}>Publicados</option><option value="draft" ${status==='draft'?'selected':''}>Borradores</option><option value="archived" ${status==='archived'?'selected':''}>Archivados</option></select><select class="select" name="availability"><option value="">Toda disponibilidad</option><option value="available" ${availability==='available'?'selected':''}>Disponibles</option><option value="reserved" ${availability==='reserved'?'selected':''}>Reservados</option><option value="sold" ${availability==='sold'?'selected':''}>Vendidos</option><option value="rented" ${availability==='rented'?'selected':''}>Alquilados</option></select><button class="btn btn-primary btn-sm" type="submit">Filtrar</button><a href="/admin/inmuebles" data-link class="btn btn-ghost btn-sm">Limpiar</a><span class="catalog-count">${items.length} resultado${items.length===1?'':'s'}</span></form>${adminPropertiesTable(items)}</section>`);
}


function adminLeadItem(lead) {
  return `<article class="lead-item"><div class="lead-item-top"><div><strong>${esc(lead.name||'Sin nombre')}</strong><span>${esc(lead.source||'web')} · ${formatDate(lead.created_at)}</span></div><span class="status ${lead.status==='new'?'status-published':'status-draft'}">${lead.status==='new'?'Nueva':'Gestionada'}</span></div><p>${esc(lead.message||'Sin mensaje')}</p><div class="small muted">${esc(lead.phone||'')} ${lead.email?`· ${esc(lead.email)}`:''} ${lead.property_ref?`· ${esc(lead.property_ref)}`:''}</div></article>`;
}

function adminLeadsView() {
  updateMeta({ title:'Solicitudes · Inmobiliaria Noguera' });
  const newCount = state.leads.filter(l=>l.status==='new').length;
  return adminLayout(`<div class="admin-heading"><div><span class="admin-eyebrow">Contactos</span><h1>Solicitudes</h1><p>Consultas de inmuebles, visitas, financiación y valoraciones.</p></div><div class="admin-heading-badge"><strong>${newCount}</strong><span>nueva${newCount===1?'':'s'}</span></div></div><section class="admin-card">${state.leads.length?`<div class="admin-lead-grid">${state.leads.map(l=>`<article class="admin-lead-card ${l.status==='new'?'is-new':''}"><div class="admin-lead-head"><div class="lead-avatar">${esc(agentInitials(l.name||'Contacto'))}</div><div><strong>${esc(l.name||'Sin nombre')}</strong><span>${formatDate(l.created_at)} · ${esc(l.source||'web')}</span></div><span class="status ${l.status==='new'?'status-published':'status-draft'}">${l.status==='new'?'Nueva':'Gestionada'}</span></div><div class="admin-lead-contact"><a href="tel:${attr(l.phone||'')}">${icons.phone} ${esc(l.phone||'Sin teléfono')}</a>${l.email?`<a href="mailto:${attr(l.email)}">${icons.mail} ${esc(l.email)}</a>`:''}${l.property_ref?`<span>${icons.home} Ref. ${esc(l.property_ref)}</span>`:''}</div><p>${esc(l.message||'Sin mensaje')}</p><div class="admin-lead-actions"><button class="btn btn-outline btn-sm" data-action="toggle-lead" data-id="${attr(l.id)}" data-status="${attr(l.status||'new')}">${l.status==='new'?'Marcar gestionada':'Reabrir'}</button>${l.phone?`<a class="btn btn-primary btn-sm" href="tel:${attr(l.phone)}">Llamar</a>`:''}</div></article>`).join('')}</div>`:`<div class="admin-empty admin-empty-large">${icons.inbox}<strong>No hay solicitudes</strong><span>Las consultas de la web aparecerán aquí, ordenadas por fecha.</span></div>`}</section>`);
}


function propertyFormView(property = null) {
  const p = property || { status:'draft', operation:'venta', property_type:'piso', featured:false, exclusive:false, images:[], features:[], agent_name:'Equipo Noguera', agent_phone:BUSINESS.mobile, location:'Écija', province:'Sevilla' };
  const isEdit = Boolean(property?.id);
  updateMeta({ title:`${isEdit?'Editar':'Nuevo'} inmueble · Inmobiliaria Noguera` });
  return adminLayout(`<div class="admin-heading"><div><h1>${isEdit?'Editar inmueble':'Nuevo inmueble'}</h1><p>${isEdit?`Referencia ${esc(p.reference||'')}`:'Completa la ficha y publícala cuando esté preparada.'}</p></div></div><form class="admin-form" data-form="property" data-id="${attr(p.id||'')}">
    <section class="admin-form-section"><h2>Información principal</h2><div class="form-grid"><div class="form-field full"><label>Título</label><input class="input" name="title" value="${attr(p.title||'')}" required data-slug-source></div><div class="form-field"><label>Referencia</label><input class="input" name="reference" value="${attr(p.reference||'')}" required placeholder="NG-8702"></div><div class="form-field"><label>Slug / URL</label><input class="input" name="slug" value="${attr(p.slug||'')}" required data-slug-target><span class="hint">Ejemplo: casa-con-patio-en-ecija</span></div><div class="form-field full"><label>URL anterior del inmueble</label><input class="input" type="url" name="source_url" value="${attr(p.source_url||'')}" placeholder="https://inmobiliarianoguera.com/property/..."><span class="hint">Permite redirigir automáticamente la ficha antigua y conservar su posicionamiento.</span></div><div class="form-field"><label>Operación</label><select class="select" name="operation"><option value="venta" ${p.operation==='venta'?'selected':''}>Venta</option><option value="alquiler" ${p.operation==='alquiler'?'selected':''}>Alquiler</option><option value="alquiler_opcion" ${p.operation==='alquiler_opcion'?'selected':''}>Alquiler con opción a compra</option><option value="vacacional" ${p.operation==='vacacional'?'selected':''}>Vacacional</option></select></div><div class="form-field"><label>Tipo</label><select class="select" name="property_type">${PROPERTY_TYPES.map(([v,l])=>`<option value="${v}" ${p.property_type===v?'selected':''}>${l}</option>`).join('')}</select></div><div class="form-field"><label>Precio (€)</label><input class="input" type="number" name="price" value="${attr(p.price??'')}" min="0" required></div><div class="form-field"><label>Precio anterior (€)</label><input class="input" type="number" name="previous_price" value="${attr(p.previous_price??'')}" min="0"></div><div class="form-field"><label>Estado de publicación</label><select class="select" name="status"><option value="draft" ${p.status==='draft'?'selected':''}>Borrador</option><option value="published" ${p.status==='published'?'selected':''}>Publicado</option><option value="archived" ${p.status==='archived'?'selected':''}>Archivado</option></select></div><div class="form-field"><label>Disponibilidad comercial</label><select class="select" name="availability"><option value="available" ${(p.availability||'available')==='available'?'selected':''}>Disponible</option><option value="reserved" ${p.availability==='reserved'?'selected':''}>Reservado</option><option value="sold" ${p.availability==='sold'?'selected':''}>Vendido</option><option value="rented" ${p.availability==='rented'?'selected':''}>Alquilado</option></select></div><div class="form-field"><label>Unidad de precio</label><input class="input" name="price_unit" value="${attr(p.price_unit||'')}" placeholder="mes, noche..."></div><div class="form-field full"><div class="toggle-row"><label class="check"><input type="checkbox" name="featured" ${p.featured?'checked':''}> Destacado</label><label class="check"><input type="checkbox" name="exclusive" ${p.exclusive?'checked':''}> Exclusiva</label></div></div></div></section>
    <section class="admin-form-section"><h2>Ubicación y características</h2><div class="form-grid three"><div class="form-field"><label>Localidad</label><input class="input" name="location" value="${attr(p.location||'')}"></div><div class="form-field"><label>Provincia</label><input class="input" name="province" value="${attr(p.province||'Sevilla')}"></div><div class="form-field"><label>Zona</label><input class="input" name="zone" value="${attr(p.zone||'')}" list="zone-list"><datalist id="zone-list">${ZONES.map(z=>`<option value="${attr(z)}">`).join('')}</datalist></div><div class="form-field full"><label>Dirección interna o aproximada</label><input class="input" name="address" value="${attr(p.address||'')}"><span class="hint">La ficha pública muestra la zona, no necesariamente la dirección exacta.</span></div><div class="form-field"><label>Habitaciones</label><input class="input" type="number" name="bedrooms" value="${attr(p.bedrooms??'')}" min="0"></div><div class="form-field"><label>Baños</label><input class="input" type="number" name="bathrooms" value="${attr(p.bathrooms??'')}" min="0"></div><div class="form-field"><label>Superficie construida (m²)</label><input class="input" type="number" name="area" value="${attr(p.area??'')}" min="0"></div><div class="form-field"><label>Parcela (m²)</label><input class="input" type="number" name="plot_area" value="${attr(p.plot_area??'')}" min="0"></div><div class="form-field"><label>Planta</label><input class="input" name="floor" value="${attr(p.floor||'')}"></div><div class="form-field"><label>Año de construcción</label><input class="input" type="number" name="year_built" value="${attr(p.year_built??'')}" min="1800" max="2100"></div><div class="form-field"><label>Certificación energética</label><select class="select" name="energy_rating"><option value="">En trámite / no indicada</option>${['A','B','C','D','E','F','G'].map(v=>`<option value="${v}" ${p.energy_rating===v?'selected':''}>${v}</option>`).join('')}</select></div><div class="form-field"><label>Latitud</label><input class="input" type="number" step="any" name="latitude" value="${attr(p.latitude??'')}"></div><div class="form-field"><label>Longitud</label><input class="input" type="number" step="any" name="longitude" value="${attr(p.longitude??'')}"></div></div></section>
    <section class="admin-form-section"><h2>SEO de la ficha</h2><div class="form-grid"><div class="form-field full"><label>Título SEO opcional</label><input class="input" name="seo_title" maxlength="70" value="${attr(p.seo_title||'')}" placeholder="Si se deja vacío, se genera automáticamente"></div><div class="form-field full"><label>Descripción SEO opcional</label><textarea class="textarea" name="seo_description" maxlength="180" placeholder="Resumen específico para buscadores">${esc(p.seo_description||'')}</textarea></div></div></section>
    <section class="admin-form-section"><h2>Descripción</h2><div class="form-grid"><div class="form-field full"><label>Resumen</label><textarea class="textarea" name="short_description" maxlength="220">${esc(p.short_description||'')}</textarea><span class="hint">Texto corto para tarjetas y buscadores.</span></div><div class="form-field full"><label>Descripción completa</label><textarea class="textarea" name="description" style="min-height:220px" required>${esc(p.description||'')}</textarea></div><div class="form-field full"><label>Características</label><textarea class="textarea" name="features" placeholder="Una por línea">${esc((p.features||[]).join('\n'))}</textarea></div></div></section>
    <section class="admin-form-section"><h2>Imágenes</h2><div class="form-field"><label>URLs de imágenes</label><textarea class="textarea" name="images" data-images-input placeholder="Una URL por línea">${esc((p.images||[]).join('\n'))}</textarea><span class="hint">La primera imagen será la portada.</span></div><label class="upload-zone" for="property-files">${icons.upload}<strong style="display:block;margin-top:8px">Subir imágenes</strong><span class="small muted">JPG, PNG o WebP. Requiere Supabase configurado.</span><input id="property-files" type="file" accept="image/*" multiple data-image-files></label><div class="image-preview-grid" data-image-preview>${(p.images||[]).map(src=>`<div class="image-preview"><img src="${attr(safeImage(src))}" alt=""></div>`).join('')}</div></section>
    <section class="admin-form-section"><h2>Contacto asignado</h2><div class="form-grid"><div class="form-field"><label>Nombre del agente o equipo</label><input class="input" name="agent_name" value="${attr(p.agent_name||'Equipo Noguera')}"></div><div class="form-field"><label>Teléfono</label><input class="input" name="agent_phone" value="${attr(p.agent_phone||BUSINESS.mobile)}"></div></div></section>
    <div class="admin-form-actions"><a href="/admin/inmuebles" data-link class="btn btn-outline">Cancelar</a><button class="btn btn-primary" type="submit">${isEdit?'Guardar cambios':'Crear inmueble'}</button></div>
  </form>`);
}


function filterSeoLandingProperties(page = {}) {
  const filter = page.filter || {};
  const terms = (filter.text || []).map(v => String(v).toLowerCase());
  return state.properties.filter(property => {
    const haystack = `${property.title || ''} ${property.zone || ''} ${property.location || ''} ${property.address || ''} ${(property.features || []).join(' ')}`.toLowerCase();
    return (!filter.operation || property.operation === filter.operation)
      && (!filter.types || filter.types.includes(property.property_type))
      && (!filter.references || filter.references.includes(property.reference))
      && (!terms.length || terms.some(term => haystack.includes(term)));
  });
}

function relatedLabel(path) {
  const clean = path.split('?')[0];
  const known = getSeoPage(clean);
  if (known?.title) return known.title;
  const labels = {'/inmuebles':'Todos los inmuebles','/contacto':'Contactar con Noguera','/nosotros':'Conocer la agencia','/agentes':'Conocer al equipo','/financiacion':'Financiación','/alquiler-vacacional':'Alquiler vacacional'};
  return labels[clean] || clean.replace(/^\//,'').replaceAll('-',' ');
}

function faqView(items = []) {
  if (!items.length) return '';
  return `<section><h2>Preguntas frecuentes</h2><div class="seo-faq">${items.map(([question, answer], index) => `<details ${index === 0 ? 'open' : ''}><summary>${esc(question)}</summary><p>${esc(answer)}</p></details>`).join('')}</div></section>`;
}

function seoLeadCard(page) {
  const valuation = ['/vender-vivienda-ecija','/valoracion-vivienda-ecija'].includes(getPath());
  return `<aside class="seo-sidebar"><div class="seo-side-card"><span class="eyebrow">Habla con el equipo</span><h2>${valuation ? 'Solicita una primera valoración' : 'Cuéntanos qué necesitas'}</h2><p>${valuation ? 'Facilita los datos básicos del inmueble. El equipo te explicará el siguiente paso sin compromiso automático.' : 'Confirma disponibilidad, pide una visita o deja tus criterios de búsqueda.'}</p><form data-form="lead" data-source="seo-${attr(slugify(page.title))}"><div class="form-field"><label>Nombre y apellidos</label><input class="input" name="name" autocomplete="name" required></div><div class="form-field"><label>Teléfono</label><input class="input" name="phone" type="tel" autocomplete="tel" required></div><div class="form-field"><label>Correo electrónico</label><input class="input" name="email" type="email" autocomplete="email"></div><div class="form-field"><label>${valuation ? 'Datos del inmueble' : 'Mensaje'}</label><textarea class="textarea" name="message" required></textarea></div><input type="hidden" name="interest" value="${valuation ? 'valoracion' : 'informacion'}"><button class="btn btn-light" type="submit">Enviar consulta</button><div data-form-message></div></form></div><div class="seo-side-card light"><h3>También puedes contactar</h3><div class="seo-side-links"><a href="tel:${BUSINESS.phoneHref}">${esc(BUSINESS.phone)} <span>↗</span></a><a href="https://wa.me/${BUSINESS.whatsapp}" target="_blank" rel="noopener">WhatsApp <span>↗</span></a><a href="/contacto" data-link>Oficina y horario <span>→</span></a></div></div></aside>`;
}

function seoPageView(page, path) {
  const properties = filterSeoLandingProperties(page);
  updateMeta({title:page.metaTitle, description:page.description, image:safeImage(properties.find(p=>p.images?.length)?.images?.[0]), canonical:`${state.config?.siteUrl || SITE_ORIGIN}${path}`});
  const collection = ['collection','area'].includes(page.kind);
  const propertySection = collection ? `<section class="seo-property-section"><span class="eyebrow">Cartera publicada</span><h2>${properties.length ? `${properties.length} ${properties.length === 1 ? 'inmueble relacionado' : 'inmuebles relacionados'}` : 'Déjanos tus criterios de búsqueda'}</h2>${properties.length ? propertiesGrid(properties.slice(0,9)) : `<div class="seo-empty-lead"><p>Ahora mismo no hay fichas publicadas que coincidan exactamente con esta búsqueda. La cartera puede cambiar antes de que una nueva propiedad llegue a la web.</p><a class="btn btn-primary" href="/contacto" data-link>Dejar mi búsqueda</a></div>`}<p><a class="editorial-link" href="/inmuebles" data-link>Explorar toda la cartera ${icons.arrow}</a></p></section>` : '';
  const related = (page.related || []).map(link => `<a class="seo-related-link" href="${attr(link)}" data-link><strong>${esc(relatedLabel(link))}</strong><span>Explorar →</span></a>`).join('');
  return publicLayout(`<section class="seo-page-hero"><div class="container"><span class="eyebrow">${esc(page.eyebrow)}</span><h1 class="h1">${esc(page.title)}</h1><p class="lead">${esc(page.intro)}</p>${page.answer ? `<p class="seo-answer"><strong>Respuesta directa:</strong> ${esc(page.answer)}</p>` : ''}</div></section><section class="section"><div class="container seo-page-layout"><div class="seo-main">${page.bullets?.length ? `<section><h2>Qué encontrarás en este servicio</h2><div class="seo-bullet-grid">${page.bullets.map(item => `<div class="seo-bullet">${icons.checkCircle}<span>${esc(item)}</span></div>`).join('')}</div></section>` : ''}${propertySection}${faqView(page.faq)}</div>${seoLeadCard(page)}</div></section><section class="section section-soft"><div class="container"><span class="eyebrow">Sigue informándote</span><h2 class="h2">Contenido relacionado</h2><div class="guide-hub-grid">${related}</div></div></section>`);
}

function guideHubView(page) {
  updateMeta({title:page.metaTitle, description:page.description, canonical:`${state.config?.siteUrl || SITE_ORIGIN}/guias`});
  return publicLayout(`<section class="seo-page-hero"><div class="container"><span class="eyebrow">${esc(page.eyebrow)}</span><h1 class="h1">${esc(page.title)}</h1><p class="lead">${esc(page.intro)}</p></div></section><section class="section"><div class="container guide-hub-grid">${guideEntries().map(([path, guide]) => `<a class="guide-card" href="${attr(path)}" data-link><small>${esc(guide.eyebrow)}</small><h2>${esc(guide.title)}</h2><p>${esc(guide.description)}</p><span>Leer guía ${icons.arrow}</span></a>`).join('')}</div></section>`);
}

function guideView(page, path) {
  updateMeta({title:page.metaTitle, description:page.description, canonical:`${state.config?.siteUrl || SITE_ORIGIN}${path}`, type:'article'});
  const related = (page.related || []).map(link => `<a href="${attr(link)}" data-link>${esc(relatedLabel(link))}<span>→</span></a>`).join('');
  return publicLayout(`<article><header class="seo-page-hero"><div class="container"><span class="eyebrow">${esc(page.eyebrow)}</span><h1 class="h1">${esc(page.title)}</h1><p class="lead">${esc(page.intro)}</p><p class="seo-answer"><strong>Respuesta directa:</strong> ${esc(page.answer)}</p><div class="guide-meta"><span>Revisado: 5 de agosto de 2026</span><span>Autor: equipo de Inmobiliaria Noguera</span><span>Contenido informativo</span></div></div></header><section class="section"><div class="container seo-page-layout"><div class="seo-main"><div class="guide-sections">${(page.sections || []).map(([title,text]) => `<section class="guide-section"><h2>${esc(title)}</h2><p>${esc(text)}</p></section>`).join('')}</div>${faqView(page.faq)}${page.sources?.length ? `<section><h2>Fuentes oficiales consultadas</h2><ul class="source-list">${page.sources.map(([label,url]) => `<li><a href="${attr(url)}" target="_blank" rel="noopener noreferrer">${esc(label)}</a></li>`).join('')}</ul><p class="small muted">La información puede cambiar. Para decisiones fiscales, jurídicas o técnicas, consulta al profesional correspondiente.</p></section>` : ''}</div><aside class="seo-sidebar"><div class="seo-side-card"><h2>¿Necesitas revisar tu caso?</h2><p>La guía explica el proceso general. El equipo puede estudiar la propiedad o la búsqueda concreta.</p><a class="btn btn-light" href="/contacto" data-link>Contactar</a></div><div class="seo-side-card light"><h3>Contenido relacionado</h3><div class="seo-side-links">${related}</div></div></aside></div></section></article>`);
}

function notFoundView() {
  updateMeta({ title:'Página no encontrada · Inmobiliaria Noguera' });
  return publicLayout(`<section class="section"><div class="container text-center" style="padding:80px 0"><span class="eyebrow">Error 404</span><h1 class="h1">Esta puerta no lleva a ningún inmueble.</h1><p class="lead">Puede que la propiedad se haya retirado o que la dirección no sea correcta.</p><a href="/inmuebles" data-link class="btn btn-primary">Ver inmuebles disponibles</a></div></section>`);
}

async function ensurePublicData() {
  if (state.properties.length) return;
  try { state.properties = await service.getProperties(); }
  catch (error) {
    console.error(error);
    state.properties = [];
    toast('No se pudo conectar con la base de datos.', 'error');
  }
}

async function ensureAdminData() {
  try {
    const [properties, leads] = await Promise.all([service.getProperties({admin:true}), service.getLeads()]);
    state.adminProperties = properties || [];
    state.leads = leads || [];
  } catch (error) {
    console.error(error);
    toast(error.message || 'No se pudieron cargar los datos del panel.', 'error');
    state.adminProperties = [];
    state.leads = [];
  }
}

async function renderRoute({ scroll = true } = {}) {
  showLoading();
  await service.init();
  state.config = service.config;
  const path = getPath();
  if (!path.startsWith('/inmuebles/')) state.currentProperty = null;
  let html = '';

  try {
    if (path.startsWith('/admin')) {
      if (!service.isAuthenticated()) {
        html = loginView();
      } else {
        await ensureAdminData();
        if (path === '/admin' || path === '/admin/') html = adminDashboardView();
        else if (path === '/admin/inmuebles') html = adminPropertiesView();
        else if (path === '/admin/inmuebles/nuevo') html = propertyFormView();
        else if (/^\/admin\/inmuebles\/[^/]+$/.test(path)) {
          const id = decodeURIComponent(path.split('/').pop());
          const property = state.adminProperties.find(p=>String(p.id)===id) || await service.getPropertyById(id);
          html = property ? propertyFormView(property) : notFoundView();
        }
        else if (path === '/admin/leads') html = adminLeadsView();
        else html = adminDashboardView();
      }
    } else {
      await ensurePublicData();
      if (path === '/') html = homeView();
      else if (path === '/inmuebles') html = catalogView();
      else if (/^\/inmuebles\/[^/]+$/.test(path)) {
        const slug = decodeURIComponent(path.split('/').pop());
        const property = state.properties.find(p=>p.slug===slug) || await service.getPropertyBySlug(slug);
        state.currentProperty = property;
        html = property ? detailView(property) : notFoundView();
      }
      else if (path === '/favoritos') html = favoritesView();
      else if (path === '/busquedas-guardadas') html = savedSearchesView();
      else if (path === '/comparar') html = compareView();
      else if (path === '/vender') html = sellView();
      else if (path === '/nosotros') html = aboutView();
      else if (path === '/agentes') html = agentsView();
      else if (path === '/financiacion') html = financingView();
      else if (path === '/alquiler-vacacional') html = vacationView();
      else if (path === '/contacto') html = contactView();
      else if (/^\/legal\/[^/]+$/.test(path)) html = legalView(path.split('/').pop());
      else if (getSeoPage(path)?.kind === 'guideHub') html = guideHubView(getSeoPage(path));
      else if (getSeoPage(path)?.kind === 'guide') html = guideView(getSeoPage(path), path);
      else if (getSeoPage(path)) html = seoPageView(getSeoPage(path), path);
      else html = notFoundView();
    }
  } catch (error) {
    console.error(error);
    html = isAdminPath() ? loginView() : notFoundView();
    toast(error.message || 'Ha ocurrido un error.', 'error');
  }

  app.innerHTML = html;
  app.querySelectorAll('form[data-form="mortgage"]').forEach(calculateMortgage);
  if (scroll) window.scrollTo({ top: 0, behavior: 'instant' });
  updateCounts();
  setupHeaderScroll();
  injectRouteSchema();
  document.documentElement.dataset.cookieConsent = hasCookieConsent() ? (localStorage.getItem('noguera-cookie-consent') || '') : '';
  mountCookieBanner();
  loadAnalytics();
}

function navigate(url, { replace = false, scroll = true } = {}) {
  state.mobileMenu = false;
  const parsed = new URL(url, window.location.origin);
  if (parsed.origin !== window.location.origin) { window.location.href = parsed.href; return; }
  if (replace) history.replaceState({}, '', parsed.pathname + parsed.search + parsed.hash);
  else history.pushState({}, '', parsed.pathname + parsed.search + parsed.hash);
  renderRoute({scroll});
}

function updateCounts() {
  document.querySelectorAll('[data-fav-count]').forEach(el=>el.textContent=state.favorites.length);
  document.querySelectorAll('[data-compare-count]').forEach(el=>el.textContent=state.compare.length);
}

function setupHeaderScroll() {
  const header = document.querySelector('#site-header');
  if (!header) return;
  const update = () => header.classList.toggle('scrolled', window.scrollY > 20);
  update();
  window.onscroll = update;
}

function injectRouteSchema() {
  document.querySelector('#seo-schema')?.remove();
  document.querySelector('#property-schema')?.remove();
  const path = getPath();
  const graph = [{
    '@type':['RealEstateAgent','LocalBusiness'], '@id':`${state.config?.siteUrl || SITE_ORIGIN}/#business`,
    name:BUSINESS.name, legalName:BUSINESS.legalName, taxID:BUSINESS.taxId, url:`${state.config?.siteUrl || SITE_ORIGIN}/`,
    telephone:BUSINESS.phoneHref, email:BUSINESS.email,
    address:{'@type':'PostalAddress',streetAddress:BUSINESS.address,postalCode:'41400',addressLocality:'Écija',addressRegion:'Sevilla',addressCountry:'ES'},
    geo:{'@type':'GeoCoordinates',latitude:BUSINESS.coordinates.lat,longitude:BUSINESS.coordinates.lng},
    sameAs:[BUSINESS.instagram,BUSINESS.facebook]
  }];
  if (path.startsWith('/inmuebles/') && state.currentProperty) {
    const property=state.currentProperty;
    graph.push({'@type':'RealEstateListing',name:property.title,description:property.description||property.short_description,url:window.location.href.split('?')[0],image:property.images||[],datePosted:property.created_at,dateModified:property.updated_at||property.created_at,seller:{'@id':`${state.config?.siteUrl || SITE_ORIGIN}/#business`},offers:{'@type':'Offer',price:property.price||undefined,priceCurrency:'EUR',availability:property.availability==='available'?'https://schema.org/InStock':property.availability==='reserved'?'https://schema.org/LimitedAvailability':'https://schema.org/OutOfStock'},address:{'@type':'PostalAddress',addressLocality:property.location||'Écija',addressRegion:property.province||'Sevilla',addressCountry:'ES'}});
  }
  const page=getSeoPage(path);
  if (page?.faq?.length) graph.push({'@type':'FAQPage',mainEntity:page.faq.map(([q,a])=>({'@type':'Question',name:q,acceptedAnswer:{'@type':'Answer',text:a}}))});
  if (page?.kind==='guide') graph.push({'@type':'Article',headline:page.title,description:page.description,datePublished:'2026-08-05',dateModified:SEO_UPDATED_AT,author:{'@id':`${state.config?.siteUrl || SITE_ORIGIN}/#business`},publisher:{'@id':`${state.config?.siteUrl || SITE_ORIGIN}/#business`},mainEntityOfPage:window.location.href.split('?')[0]});
  const script=document.createElement('script'); script.id='seo-schema'; script.type='application/ld+json'; script.textContent=JSON.stringify({'@context':'https://schema.org','@graph':graph}); document.head.appendChild(script);
}

function trackEvent(name, parameters = {}) {
  if (window.__nogueraAnalyticsLoaded && typeof window.gtag === 'function') window.gtag('event', name, parameters);
}

function loadAnalytics() {
  if (localStorage.getItem('noguera-cookie-consent') !== 'analytics' || !state.config?.gaMeasurementId) return;
  const pageLocation = `${window.location.origin}${window.location.pathname}${window.location.search}`;
  if (!window.__nogueraAnalyticsLoaded) {
    window.__nogueraAnalyticsLoaded = true;
    const script = document.createElement('script');
    script.src = `https://www.googletagmanager.com/gtag/js?id=${encodeURIComponent(state.config.gaMeasurementId)}`;
    script.async = true;
    document.head.appendChild(script);
    window.dataLayer = window.dataLayer || [];
    window.gtag = function gtag() { window.dataLayer.push(arguments); };
    window.gtag('js', new Date());
    window.gtag('config', state.config.gaMeasurementId, { anonymize_ip: true, send_page_view: false });
  }
  if (window.__nogueraLastTrackedPage !== pageLocation && typeof window.gtag === 'function') {
    window.__nogueraLastTrackedPage = pageLocation;
    trackEvent('page_view', { page_title: document.title, page_location: pageLocation, page_path: `${window.location.pathname}${window.location.search}` });
  }
}

function setCookieConsent(value) {
  localStorage.setItem('noguera-cookie-consent', value);
  document.documentElement.dataset.cookieConsent = value;
  if (value === 'analytics') {
    if (state.config?.gaMeasurementId) {
      toast('Cookies analíticas activadas.', 'success');
      loadAnalytics();
    } else {
      toast('Preferencia guardada. La analítica se activará cuando esté configurada.', 'success');
    }
  } else {
    toast('Solo se usarán cookies necesarias.', 'success');
  }
  renderRoute({ scroll: false });
}

function openGallery(index = 0) {
  const images = state.currentProperty?.images || [];
  if (!images.length) {
    toast('No hay imágenes para mostrar.', 'error');
    return;
  }
  state.gallery = { images, index: Math.max(0, Math.min(Number(index) || 0, images.length - 1)) };
  document.body.classList.add('modal-open');
  renderGalleryModal();
}

function renderGalleryModal() {
  if (!modalRoot) return;
  const images = state.gallery?.images || [];
  if (!images.length) {
    closeModal();
    return;
  }
  const index = Math.max(0, Math.min(state.gallery.index || 0, images.length - 1));
  state.gallery.index = index;
  modalRoot.innerHTML = `<div class="modal-backdrop" data-action="close-modal" role="presentation">
    <button type="button" class="icon-btn modal-close" data-action="close-modal" aria-label="Cerrar galería">${icons.close}</button>
    <button type="button" class="icon-btn modal-nav modal-prev" data-action="gallery-prev" aria-label="Imagen anterior">${icons.arrowLeft}</button>
    <div class="modal gallery-modal" data-modal-content>
      <img src="${attr(safeImage(images[index]))}" alt="Imagen ${index + 1} de ${images.length}" decoding="async">
    </div>
    <button type="button" class="icon-btn modal-nav modal-next" data-action="gallery-next" aria-label="Imagen siguiente">${icons.arrowRight}</button>
    <div class="modal-counter" aria-live="polite">${index + 1} / ${images.length}</div>
  </div>`;
}

function closeModal() {
  if (modalRoot) modalRoot.innerHTML = '';
  document.body.classList.remove('modal-open');
}

function stepGallery(delta) {
  const images = state.gallery?.images || [];
  if (!images.length) return;
  const len = images.length;
  state.gallery.index = (state.gallery.index + delta + len) % len;
  renderGalleryModal();
}

function toggleFavorite(id) {
  if (state.favorites.includes(id)) { state.favorites = state.favorites.filter(value=>value!==id); toast('Quitado de favoritos.'); }
  else { state.favorites.push(id); toast('Guardado en favoritos.', 'success'); }
  saveList('noguera-favorites', state.favorites);
  renderRoute({scroll:false});
}
function toggleCompare(id) {
  if (state.compare.includes(id)) state.compare = state.compare.filter(value=>value!==id);
  else if (state.compare.length >= 3) { toast('Puedes comparar un máximo de 3 inmuebles.', 'error'); return; }
  else state.compare.push(id);
  saveList('noguera-compare', state.compare);
  renderRoute({scroll:false});
}

async function handleAction(button, event) {
  const action = button.dataset.action;
  if (!action) return;
  if (action === 'toggle-menu') { state.mobileMenu = !state.mobileMenu; renderRoute({scroll:false}); }
  if (action === 'favorite') toggleFavorite(button.dataset.id);
  if (action === 'compare') toggleCompare(button.dataset.id);
  if (action === 'share') {
    const data = { title:button.dataset.title || document.title, text:'Mira este inmueble de Inmobiliaria Noguera', url:window.location.href };
    try { if (navigator.share) await navigator.share(data); else { await navigator.clipboard.writeText(window.location.href); toast('Enlace copiado.', 'success'); } } catch (_) {}
  }
  if (action === 'open-gallery') { openGallery(Number(button.dataset.index || 0)); return; }
  if (action === 'close-modal') { closeModal(); return; }
  if (action === 'gallery-prev') { stepGallery(-1); return; }
  if (action === 'gallery-next') { stepGallery(1); return; }
  if (action === 'cookies-accept') { setCookieConsent('analytics'); return; }
  if (action === 'cookies-essential') { setCookieConsent('essential'); return; }
  if (action === 'cookies-reset') { localStorage.removeItem('noguera-cookie-consent'); document.documentElement.dataset.cookieConsent = ''; renderRoute({ scroll: false }); toast('Puedes volver a elegir tus preferencias de cookies.'); return; }
  if (action === 'open-filters') document.querySelector('#catalog-filters')?.classList.add('open');
  if (action === 'close-filters') document.querySelector('#catalog-filters')?.classList.remove('open');
  if (action === 'clear-filters') navigate('/inmuebles');
  if (action === 'load-map') { const shell=button.closest('[data-map-shell]'); if(shell){ shell.innerHTML=`<iframe class="map-frame" src="${attr(button.dataset.mapSrc)}" loading="lazy" referrerpolicy="no-referrer-when-downgrade" title="Mapa aproximado del inmueble"></iframe>`; } }
  if (action === 'toggle-admin-nav') document.querySelector('.admin-shell')?.classList.toggle('admin-nav-open');
  if (action === 'view-grid') { state.catalogView='grid'; localStorage.setItem('noguera-view','grid'); renderRoute({scroll:false}); }
  if (action === 'view-list') { state.catalogView='list'; localStorage.setItem('noguera-view','list'); renderRoute({scroll:false}); }
  if (action === 'save-search') {
    const params = queryParams();
    const labels = [];
    if (params.get('operation')) labels.push(operationLabel(params.get('operation')));
    if (params.get('type')) labels.push(propertyTypeLabel(params.get('type')));
    if (params.get('zone')) labels.push(params.get('zone'));
    if (params.get('q')) labels.push(`“${params.get('q')}”`);
    if (params.get('max')) labels.push(`hasta ${new Intl.NumberFormat('es-ES').format(Number(params.get('max')))} €`);
    const item = { id:`search-${Date.now()}`, label:labels.join(' · ') || 'Todos los inmuebles', summary:`${filterProperties(params).length} resultados en el momento de guardarla`, url:window.location.pathname+window.location.search, created_at:new Date().toISOString() };
    state.savedSearches.unshift(item); state.savedSearches=state.savedSearches.slice(0,12); saveList('noguera-saved-searches', state.savedSearches); toast('Búsqueda guardada en este dispositivo.','success');
  }
  if (action === 'delete-search') {
    state.savedSearches = state.savedSearches.filter((item)=>item.id!==button.dataset.id); saveList('noguera-saved-searches', state.savedSearches); renderRoute({scroll:false});
  }
  if (action === 'logout') { await service.signOut(); navigate('/admin', {replace:true}); }
  if (action === 'delete-property') {
    const property = state.adminProperties.find(p=>String(p.id)===button.dataset.id);
    if (!confirm(`¿Eliminar ${property?.title || 'este inmueble'}? Esta acción no se puede deshacer.`)) return;
    button.disabled = true;
    try { await service.deleteProperty(button.dataset.id); service.notifyIndexNow(['/inmuebles', `/inmuebles/${property?.slug || ''}`, '/sitemap.xml']); toast('Inmueble eliminado.', 'success'); await ensureAdminData(); renderRoute({scroll:false}); }
    catch (error) { toast(error.message, 'error'); button.disabled=false; }
  }
  if (action === 'cycle-availability') {
    const property = state.adminProperties.find(p=>String(p.id)===button.dataset.id);
    const order = ['available','reserved','sold','rented']; const next = order[(order.indexOf(button.dataset.current)+1)%order.length];
    button.disabled=true;
    try { await service.saveProperty({...property, availability:next}); service.notifyIndexNow(['/inmuebles', `/inmuebles/${property.slug}`, '/sitemap.xml']); toast(`Marcado como ${availabilityLabel(next).toLowerCase()}.`,'success'); await ensureAdminData(); state.properties=[]; renderRoute({scroll:false}); }
    catch(error){ toast(error.message,'error'); button.disabled=false; }
  }
  if (action === 'toggle-lead') {
    button.disabled=true;
    try { await service.updateLead(button.dataset.id,{status:button.dataset.status==='new'?'managed':'new'}); await ensureAdminData(); renderRoute({scroll:false}); }
    catch(error){ toast(error.message,'error'); button.disabled=false; }
  }
}

function calculateMortgage(form) {
  const data = new FormData(form);
  const price=Number(data.get('price')); const deposit=Number(data.get('deposit')); const years=Number(data.get('years')); const annual=Number(data.get('interest'))/100;
  const principal=Math.max(0,price-deposit); const months=Math.max(1,years*12); const rate=annual/12;
  const payment=rate?principal*(rate*Math.pow(1+rate,months))/(Math.pow(1+rate,months)-1):principal/months;
  const target=form.querySelector('[data-mortgage-result]');
  if (target) target.textContent = Number.isFinite(payment) ? new Intl.NumberFormat('es-ES',{style:'currency',currency:'EUR',maximumFractionDigits:0}).format(payment)+'/mes' : '—';
}

async function handleForm(form) {
  const type = form.dataset.form;
  const submit = form.querySelector('[type="submit"]');
  const message = form.querySelector('[data-form-message]');
  const setBusy = (busy) => { if (submit) { submit.disabled=busy; submit.dataset.label ||= submit.innerHTML; submit.innerHTML = busy ? 'Procesando…' : submit.dataset.label; } };
  const showMessage = (text, kind='success') => { if (message) message.innerHTML=`<div class="form-message ${kind}">${esc(text)}</div>`; };

  if (type === 'hero-search') {
    const data = new FormData(form); const params = new URLSearchParams();
    for (const [k,v] of data) if (String(v).trim()) params.set(k,String(v).trim());
    navigate(`/inmuebles?${params.toString()}`); return;
  }
  if (type === 'filters') {
    const data = new FormData(form); const params = new URLSearchParams();
    for (const [k,v] of data) if (String(v).trim()) params.set(k,String(v).trim());
    const sort = queryParams().get('sort'); if (sort) params.set('sort',sort);
    navigate(`/inmuebles?${params.toString()}`); return;
  }
  if (type === 'admin-filter') {
    const data = new FormData(form); const params = new URLSearchParams();
    for (const [k,v] of data) if (String(v).trim()) params.set(k,String(v).trim());
    navigate(`/admin/inmuebles?${params.toString()}`); return;
  }
  if (type === 'login') {
    setBusy(true); const data = new FormData(form);
    try { await service.signIn(data.get('email'),data.get('password')); toast('Sesión iniciada.','success'); navigate('/admin',{replace:true}); }
    catch(error){ showMessage(error.message,'error'); setBusy(false); }
    return;
  }
  if (type === 'lead') {
    setBusy(true); const data = Object.fromEntries(new FormData(form).entries());
    try {
      const visitNote = data.visit_date ? `\nFecha preferida: ${data.visit_date}${data.visit_time ? ` · ${data.visit_time}` : ''}` : '';
      await service.createLead({ name:data.name, phone:data.phone, email:data.email||null, interest:data.interest||'informacion', message:`${data.message||''}${visitNote}`.trim(), source:form.dataset.source||'web', property_id:form.dataset.propertyId||null, property_ref:form.dataset.propertyRef||null });
      form.reset(); trackEvent('generate_lead',{lead_source:form.dataset.source||'web',property_reference:form.dataset.propertyRef||undefined}); showMessage('Gracias. Hemos recibido tu consulta y te contactaremos lo antes posible.'); toast('Consulta enviada.','success');
    } catch(error){ showMessage(error.message,'error'); }
    setBusy(false); return;
  }
  if (type === 'mortgage') { calculateMortgage(form); return; }
  if (type === 'property') {
    setBusy(true);
    try {
      const data = Object.fromEntries(new FormData(form).entries());
      const files = [...(form.querySelector('[data-image-files]')?.files || [])];
      let imageUrls = String(data.images||'').split(/\r?\n/).map(v=>v.trim()).filter(Boolean);
      if (files.length) { const uploaded = await service.uploadImages(files); imageUrls = [...imageUrls,...uploaded]; }
      if (data.status === 'published' && !imageUrls.length) throw new Error('Añade al menos una fotografía antes de publicar el inmueble.');
      if (data.status === 'published' && (!String(data.short_description||'').trim() || !String(data.description||'').trim())) throw new Error('Completa el resumen y la descripción antes de publicar.');
      const payload = {
        id:form.dataset.id||undefined, title:data.title, reference:data.reference, slug:slugify(data.slug||data.title), source_url:data.source_url||null, seo_title:data.seo_title||null, seo_description:data.seo_description||null, operation:data.operation, availability:data.availability||'available',
        property_type:data.property_type, price:data.price, previous_price:data.previous_price, price_unit:data.price_unit||null, status:data.status,
        featured:form.elements.featured.checked, exclusive:form.elements.exclusive.checked, location:data.location, province:data.province,
        zone:data.zone, address:data.address, bedrooms:data.bedrooms, bathrooms:data.bathrooms, area:data.area, plot_area:data.plot_area,
        floor:data.floor||null, year_built:data.year_built, energy_rating:data.energy_rating||null, latitude:data.latitude, longitude:data.longitude,
        short_description:data.short_description, description:data.description,
        features:String(data.features||'').split(/\r?\n|,/).map(v=>v.trim()).filter(Boolean), images:imageUrls,
        agent_name:data.agent_name, agent_phone:data.agent_phone, published_at:data.status==='published'?new Date().toISOString():null,
      };
      const savedProperty = await service.saveProperty(payload); service.notifyIndexNow(['/inmuebles', `/inmuebles/${savedProperty.slug}`, '/sitemap.xml']); toast(form.dataset.id?'Cambios guardados.':'Inmueble guardado.','success'); state.adminProperties=[]; state.properties=[]; navigate('/admin/inmuebles');
    } catch(error){ toast(error.message||'No se pudo guardar.','error'); setBusy(false); }
  }
}

function onUiClick(event) {
  const action = event.target.closest('[data-action]');
  if (action) {
    // Clic en la foto: no cerrar (solo el fondo del modal)
    if (action.dataset.action === 'close-modal' && event.target.closest('[data-modal-content]')) return;
    event.preventDefault();
    // Los botones de la galería no deben propagar al backdrop (close-modal del padre)
    if (action.dataset.action === 'gallery-prev' || action.dataset.action === 'gallery-next' || action.dataset.action === 'close-modal') {
      event.stopPropagation();
    }
    handleAction(action, event);
    return;
  }
  const contactLink = event.target.closest('a[href^="tel:"],a[href*="wa.me"]');
  if (contactLink) trackEvent(contactLink.href.startsWith('tel:') ? 'click_to_call' : 'click_whatsapp', { link_url: contactLink.href, page_path: getPath() });
  const link = event.target.closest('a[data-link]');
  if (link && !event.metaKey && !event.ctrlKey && !event.shiftKey && event.button === 0) {
    event.preventDefault();
    navigate(link.getAttribute('href'));
    return;
  }
  const tab = event.target.closest('[data-search-tab]');
  if (tab) {
    document.querySelectorAll('[data-search-tab]').forEach((t) => t.classList.remove('active'));
    tab.classList.add('active');
    const input = document.querySelector('[data-form="hero-search"] [name="operation"]');
    if (input) input.value = tab.dataset.searchTab;
  }
}
// Delegación global: galería (#modal-root) y cookies (#cookie-root) están fuera de #app
document.addEventListener('click', onUiClick);

app.addEventListener('submit', (event) => { const form=event.target.closest('form[data-form]'); if(!form) return; event.preventDefault(); handleForm(form); });
app.addEventListener('change', (event) => {
  if (event.target.matches('[data-action="sort"]')) { const params=queryParams(); params.set('sort',event.target.value); navigate(`/inmuebles?${params.toString()}`,{scroll:false}); }
  if (event.target.matches('[data-images-input]')) updateImagePreview(event.target);
  if (event.target.matches('[data-image-files]')) {
    const preview=event.target.closest('.admin-form-section')?.querySelector('[data-image-preview]');
    if(preview){ const urls=[...event.target.files].map(file=>URL.createObjectURL(file)); preview.innerHTML += urls.map(src=>`<div class="image-preview"><img src="${attr(src)}" alt="Vista previa"></div>`).join(''); }
  }
});
app.addEventListener('input', (event) => {
  if (event.target.matches('[data-slug-source]')) { const target=app.querySelector('[data-slug-target]'); if(target && !target.dataset.touched) target.value=slugify(event.target.value); }
  if (event.target.matches('[data-slug-target]')) event.target.dataset.touched='1';
  if (event.target.matches('[data-images-input]')) updateImagePreview(event.target);
});

function updateImagePreview(input) {
  const preview=input.closest('.admin-form-section')?.querySelector('[data-image-preview]'); if(!preview)return;
  const urls=input.value.split(/\r?\n/).map(v=>v.trim()).filter(Boolean);
  preview.innerHTML=urls.map(src=>`<div class="image-preview"><img src="${attr(safeImage(src))}" alt="Vista previa"></div>`).join('');
}

window.addEventListener('popstate', () => { state.mobileMenu = false; closeModal(); renderRoute(); });
window.addEventListener('keydown', (event) => {
  if (!modalRoot?.innerHTML) return;
  if (event.key === 'Escape') { event.preventDefault(); closeModal(); }
  if (event.key === 'ArrowLeft') { event.preventDefault(); stepGallery(-1); }
  if (event.key === 'ArrowRight') { event.preventDefault(); stepGallery(1); }
});

renderRoute();
