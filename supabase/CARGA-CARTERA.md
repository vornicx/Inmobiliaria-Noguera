# Carga de la cartera en Supabase

Proceso para dejar los 200 inmuebles de Noguera con sus 1.879 fotos servidas
desde Supabase. Los pasos con clave los ejecutas tú: la `service_role` no debe
pasar por un chat, una captura ni un commit.

## 1. Esquema

En **SQL Editor**, ejecuta `supabase/schema.sql`. Crea las tablas `properties`,
`leads` y `profiles`, el bucket `property-images` y sus políticas.

Verificación:

```sql
select count(*) from public.properties;              -- 0
select id, public from storage.buckets;              -- property-images | true
```

## 2. Usuario administrador

En **Authentication > Users**, crea tu usuario. Copia su UUID y ejecuta:

```sql
insert into public.profiles (id, full_name, role)
values ('UUID-DEL-USUARIO', 'Administrador Noguera', 'admin');
```

Sin esto el panel no deja editar: las políticas exigen `is_admin()`.

## 3. Inmuebles

Ejecuta `supabase/seed-properties.sql`. Son 200 `insert` con
`on conflict (reference) do update`, así que puedes relanzarlo sin duplicar.

Verificación:

```sql
select count(*) from public.properties;                                  -- 200
select operation, count(*) from public.properties group by operation;    -- venta 177, alquiler 23
select count(*) - count(distinct slug) from public.properties;           -- 0
```

Validado previamente contra PostgreSQL 16: se aplica sin errores y es
idempotente.

## 4. Fotos

En este punto las URLs apuntan todavía a `inmobiliarianoguera.com`. La web
funciona, pero depende de su servidor.

Las fotos ya están descargadas en `fotos/`, una carpeta por referencia.

```bash
export SUPABASE_URL="https://oclgrnwkovkaiscpmxri.supabase.co"
export SUPABASE_SERVICE_ROLE_KEY="..."      # Settings > API > service_role

# Prueba en seco primero: no sube nada, solo informa
node scripts/subir-fotos-supabase.mjs --fotos ./fotos --dry

# Subida real (reanudable: usa x-upsert, puedes relanzarlo)
node scripts/subir-fotos-supabase.mjs --fotos ./fotos
```

Al terminar escribe `supabase/update-image-urls.sql`. Ejecútalo en el SQL Editor
para reapuntar las URLs al bucket.

Verificación:

```sql
select count(*) from public.properties where images[1] like '%supabase.co%';   -- 200
```

Y limpia la variable de la sesión cuando acabes:

```bash
unset SUPABASE_SERVICE_ROLE_KEY
```

## 5. Conectar la web

En `.env` (y en las variables de entorno de Vercel):

```
SUPABASE_URL=https://oclgrnwkovkaiscpmxri.supabase.co
SUPABASE_ANON_KEY=...          # Settings > API > anon public
```

La `anon` sí es pública por diseño: viaja al navegador. `service_role` **no**.

Sin estas dos variables la web arranca en modo demo con los 8 inmuebles de
ejemplo de `assets/data.js` (ver `assets/service.js`).

## Origen de los datos

Extraídos de `inmobiliarianoguera.com`, el sitio de la propia agencia, cuyo
`robots.txt` permite el rastreo sin restricciones. No del portal yaencontre:
ese está tras DataDome y su `robots.txt` responde con un CAPTCHA.

Los scripts que generaron todo esto están en `scripts/`:

- `extraer-cartera.mjs` — recorre las fichas (1 petición cada 8 s; su WAF
  devuelve 403 por encima de ese ritmo)
- `transformar-cartera.mjs` — normaliza al modelo de la web y genera el SQL
- `subir-fotos-supabase.mjs` — sube al bucket y reescribe las URLs

## Pendiente de decidir

El sitemap de Noguera publica 200 fichas; el portal muestra 95 activas. Sus
fichas no llevan marca de estado, así que no hay forma de distinguir las
vendidas automáticamente. Se han cargado las 200 como disponibles: conviene que
Noguera depure las obsoletas desde el panel.
