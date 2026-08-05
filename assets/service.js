import { DEMO_PROPERTIES } from './data.js';

const SESSION_KEY = 'noguera-session';
const DEMO_PROPERTIES_KEY = 'noguera-demo-properties';
const DEMO_LEADS_KEY = 'noguera-demo-leads';

const clone = (value) => JSON.parse(JSON.stringify(value));

export class DataService {
  constructor() {
    this.config = { supabaseUrl: '', supabaseAnonKey: '', siteUrl: '', gaMeasurementId: '', demo: true };
    this.session = this.readSession();
    this.initialized = false;
  }

  async init() {
    if (this.initialized) return this.config;
    try {
      const response = await fetch('/api/config', { headers: { Accept: 'application/json' } });
      if (response.ok) {
        const data = await response.json();
        this.config = {
          supabaseUrl: String(data.supabaseUrl || '').replace(/\/$/, ''),
          supabaseAnonKey: data.supabaseAnonKey || '',
          siteUrl: data.siteUrl || window.location.origin,
          gaMeasurementId: data.gaMeasurementId || '',
          demo: !(data.supabaseUrl && data.supabaseAnonKey),
        };
      }
    } catch (_) {
      this.config.demo = true;
    }
    this.initialized = true;
    if (!this.config.demo && this.session?.refresh_token && this.isExpired(this.session)) {
      try { await this.refreshSession(); } catch (_) { this.clearSession(); }
    }
    return this.config;
  }

  isDemo() { return this.config.demo; }
  isAuthenticated() { return Boolean(this.session?.access_token); }
  getSession() { return this.session; }

  readSession() {
    try { return JSON.parse(localStorage.getItem(SESSION_KEY) || 'null'); }
    catch (_) { return null; }
  }

  saveSession(session) {
    this.session = session;
    localStorage.setItem(SESSION_KEY, JSON.stringify(session));
  }

  clearSession() {
    this.session = null;
    localStorage.removeItem(SESSION_KEY);
  }

  isExpired(session) {
    if (!session?.expires_at) return false;
    return Date.now() / 1000 > Number(session.expires_at) - 60;
  }

  headers({ auth = false, prefer = '' } = {}) {
    const headers = {
      apikey: this.config.supabaseAnonKey,
      'Content-Type': 'application/json',
      Accept: 'application/json',
    };
    if (auth && this.session?.access_token) headers.Authorization = `Bearer ${this.session.access_token}`;
    if (prefer) headers.Prefer = prefer;
    return headers;
  }

  async request(path, options = {}, { auth = false, prefer = '' } = {}) {
    if (!this.config.supabaseUrl) throw new Error('Supabase no está configurado.');
    if (auth && this.session?.refresh_token && this.isExpired(this.session)) await this.refreshSession();
    const response = await fetch(`${this.config.supabaseUrl}${path}`, {
      ...options,
      headers: { ...this.headers({ auth, prefer }), ...(options.headers || {}) },
    });
    const text = await response.text();
    let data = null;
    try { data = text ? JSON.parse(text) : null; } catch (_) { data = text; }
    if (!response.ok) {
      const message = data?.message || data?.error_description || data?.hint || data?.details || `Error ${response.status}`;
      throw new Error(message);
    }
    return data;
  }

  getDemoProperties() {
    try {
      const stored = JSON.parse(localStorage.getItem(DEMO_PROPERTIES_KEY) || 'null');
      return Array.isArray(stored) && stored.length ? stored : clone(DEMO_PROPERTIES);
    } catch (_) { return clone(DEMO_PROPERTIES); }
  }

  saveDemoProperties(properties) {
    localStorage.setItem(DEMO_PROPERTIES_KEY, JSON.stringify(properties));
  }

  async getProperties({ admin = false } = {}) {
    await this.init();
    if (this.isDemo()) {
      const all = this.getDemoProperties();
      return admin ? all : all.filter((item) => item.status === 'published');
    }
    const query = admin
      ? '/rest/v1/properties?select=*&order=created_at.desc'
      : '/rest/v1/properties?select=*&status=eq.published&order=featured.desc,created_at.desc';
    return this.request(query, {}, { auth: admin });
  }

  async getPropertyBySlug(slug) {
    await this.init();
    if (this.isDemo()) return this.getDemoProperties().find((item) => item.slug === slug) || null;
    const data = await this.request(`/rest/v1/properties?select=*&slug=eq.${encodeURIComponent(slug)}&limit=1`);
    return data?.[0] || null;
  }

  async getPropertyById(id) {
    await this.init();
    if (this.isDemo()) return this.getDemoProperties().find((item) => item.id === id) || null;
    const data = await this.request(`/rest/v1/properties?select=*&id=eq.${encodeURIComponent(id)}&limit=1`, {}, { auth: true });
    return data?.[0] || null;
  }

  normalizeProperty(payload) {
    const numeric = ['price', 'previous_price', 'bedrooms', 'bathrooms', 'area', 'plot_area', 'year_built', 'latitude', 'longitude'];
    const result = { ...payload };
    numeric.forEach((key) => {
      if (result[key] === '' || result[key] === undefined) result[key] = null;
      else if (result[key] !== null) result[key] = Number(result[key]);
    });
    result.features = Array.isArray(result.features) ? result.features.filter(Boolean) : [];
    result.images = Array.isArray(result.images) ? result.images.filter(Boolean) : [];
    result.updated_at = new Date().toISOString();
    return result;
  }

  async saveProperty(payload) {
    await this.init();
    const property = this.normalizeProperty(payload);
    if (this.isDemo()) {
      const all = this.getDemoProperties();
      if (property.id) {
        const index = all.findIndex((item) => item.id === property.id);
        if (index >= 0) all[index] = { ...all[index], ...property };
        else all.unshift(property);
      } else {
        property.id = `demo-${Date.now()}`;
        property.created_at = new Date().toISOString();
        all.unshift(property);
      }
      this.saveDemoProperties(all);
      return property;
    }
    const isUpdate = Boolean(property.id);
    if (!property.created_at && !isUpdate) property.created_at = new Date().toISOString();
    const path = isUpdate
      ? `/rest/v1/properties?id=eq.${encodeURIComponent(property.id)}`
      : '/rest/v1/properties';
    const method = isUpdate ? 'PATCH' : 'POST';
    const data = await this.request(path, { method, body: JSON.stringify(property) }, { auth: true, prefer: 'return=representation' });
    return data?.[0] || property;
  }

  async deleteProperty(id) {
    await this.init();
    if (this.isDemo()) {
      this.saveDemoProperties(this.getDemoProperties().filter((item) => item.id !== id));
      return true;
    }
    await this.request(`/rest/v1/properties?id=eq.${encodeURIComponent(id)}`, { method: 'DELETE' }, { auth: true });
    return true;
  }

  async createLead(payload) {
    await this.init();
    const lead = {
      ...payload,
      status: payload.status || 'new',
      created_at: payload.created_at || new Date().toISOString(),
    };
    if (this.isDemo()) {
      lead.id = payload.id || `lead-${Date.now()}`;
      let leads = [];
      try { leads = JSON.parse(localStorage.getItem(DEMO_LEADS_KEY) || '[]'); } catch (_) {}
      leads.unshift(lead);
      localStorage.setItem(DEMO_LEADS_KEY, JSON.stringify(leads));
      return lead;
    }
    const { id: _ignoredId, ...record } = lead;
    const data = await this.request('/rest/v1/leads', { method: 'POST', body: JSON.stringify(record) }, { prefer: 'return=representation' });
    return data?.[0] || lead;
  }

  async getLeads() {
    await this.init();
    if (this.isDemo()) {
      try { return JSON.parse(localStorage.getItem(DEMO_LEADS_KEY) || '[]'); }
      catch (_) { return []; }
    }
    return this.request('/rest/v1/leads?select=*&order=created_at.desc', {}, { auth: true });
  }

  async updateLead(id, patch) {
    await this.init();
    if (this.isDemo()) {
      const leads = await this.getLeads();
      const index = leads.findIndex((item) => item.id === id);
      if (index >= 0) leads[index] = { ...leads[index], ...patch };
      localStorage.setItem(DEMO_LEADS_KEY, JSON.stringify(leads));
      return leads[index] || null;
    }
    const data = await this.request(`/rest/v1/leads?id=eq.${encodeURIComponent(id)}`, { method: 'PATCH', body: JSON.stringify(patch) }, { auth: true, prefer: 'return=representation' });
    return data?.[0] || null;
  }

  async signIn(email, password) {
    await this.init();
    if (this.isDemo()) {
      if (email !== 'admin@noguera.demo' || password !== 'demo1234') throw new Error('Credenciales incorrectas.');
      const session = { access_token: 'demo-token', refresh_token: 'demo-refresh', expires_at: Math.floor(Date.now()/1000) + 86400, user: { email, id: 'demo-admin' } };
      this.saveSession(session);
      return session;
    }
    const data = await this.request('/auth/v1/token?grant_type=password', {
      method: 'POST', body: JSON.stringify({ email, password }),
    });
    this.saveSession(data);
    return data;
  }

  async refreshSession() {
    if (this.isDemo() || !this.session?.refresh_token) return this.session;
    const data = await this.request('/auth/v1/token?grant_type=refresh_token', {
      method: 'POST', body: JSON.stringify({ refresh_token: this.session.refresh_token }),
    });
    this.saveSession(data);
    return data;
  }

  async signOut() {
    await this.init();
    if (!this.isDemo() && this.session?.access_token) {
      try { await this.request('/auth/v1/logout', { method: 'POST' }, { auth: true }); } catch (_) {}
    }
    this.clearSession();
  }

  async uploadImages(files) {
    await this.init();
    if (!files?.length) return [];
    if (this.isDemo()) throw new Error('La subida real de archivos requiere configurar Supabase. Puedes pegar URLs de imágenes en modo demo.');
    if (!this.isAuthenticated()) throw new Error('Debes iniciar sesión.');
    if (this.session?.refresh_token && this.isExpired(this.session)) await this.refreshSession();

    const urls = [];
    for (const file of files) {
      const ext = (file.name.split('.').pop() || 'jpg').toLowerCase();
      const safeName = `${Date.now()}-${crypto.randomUUID()}.${ext}`;
      const response = await fetch(`${this.config.supabaseUrl}/storage/v1/object/property-images/${safeName}`, {
        method: 'POST',
        headers: {
          apikey: this.config.supabaseAnonKey,
          Authorization: `Bearer ${this.session.access_token}`,
          'Content-Type': file.type || 'application/octet-stream',
          'x-upsert': 'false',
        },
        body: file,
      });
      if (!response.ok) {
        let message = `No se pudo subir ${file.name}.`;
        try { const data = await response.json(); message = data.message || data.error || message; } catch (_) {}
        throw new Error(message);
      }
      urls.push(`${this.config.supabaseUrl}/storage/v1/object/public/property-images/${safeName}`);
    }
    return urls;
  }
  async notifyIndexNow(paths = []) {
    try {
      const clean = [...new Set((paths || []).filter(Boolean))];
      if (!clean.length || this.isDemo()) return false;
      const response = await fetch('/api/indexnow', { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify({ paths: clean }) });
      return response.ok;
    } catch (_) { return false; }
  }

}

export const service = new DataService();
