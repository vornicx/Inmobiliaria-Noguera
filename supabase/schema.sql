-- Inmobiliaria Noguera · Esquema de producción para Supabase
-- Ejecuta este archivo en Supabase > SQL Editor.

create extension if not exists pgcrypto;

create table if not exists public.profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  full_name text,
  role text not null default 'agent' check (role in ('admin', 'agent')),
  created_at timestamptz not null default now()
);

create table if not exists public.properties (
  id uuid primary key default gen_random_uuid(),
  reference text not null unique,
  slug text not null unique,
  title text not null,
  short_description text,
  description text not null default '',
  operation text not null default 'venta' check (operation in ('venta', 'alquiler', 'alquiler_opcion', 'vacacional')),
  property_type text not null default 'piso',
  price numeric(12,2) not null default 0,
  previous_price numeric(12,2),
  price_unit text,
  location text not null default 'Écija',
  province text not null default 'Sevilla',
  zone text,
  address text,
  latitude numeric(10,7),
  longitude numeric(10,7),
  bedrooms integer,
  bathrooms integer,
  area numeric(10,2),
  plot_area numeric(10,2),
  floor text,
  year_built integer,
  energy_rating text,
  features text[] not null default '{}',
  images text[] not null default '{}',
  image_fallback text,
  source_url text,
  seo_title text,
  seo_description text,
  featured boolean not null default false,
  exclusive boolean not null default false,
  status text not null default 'draft' check (status in ('draft', 'published', 'archived')),
  availability text not null default 'available' check (availability in ('available', 'reserved', 'sold', 'rented')),
  agent_name text,
  agent_phone text,
  published_at timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

-- Permite volver a ejecutar el esquema sobre una base creada con una versión anterior.
alter table public.properties add column if not exists seo_title text;
alter table public.properties add column if not exists seo_description text;
alter table public.properties add column if not exists source_url text;

create table if not exists public.leads (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  phone text not null,
  email text,
  interest text,
  message text,
  source text not null default 'web',
  property_id uuid references public.properties(id) on delete set null,
  property_ref text,
  status text not null default 'new' check (status in ('new', 'managed', 'archived')),
  created_at timestamptz not null default now()
);

-- search_path fijo: sin él la función es secuestrable creando objetos en un
-- esquema que preceda en la ruta de búsqueda (aviso del linter de Supabase).
create or replace function public.set_updated_at()
returns trigger language plpgsql
security invoker
set search_path = ''
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

drop trigger if exists properties_set_updated_at on public.properties;
create trigger properties_set_updated_at before update on public.properties
for each row execute function public.set_updated_at();

create or replace function public.is_admin()
returns boolean language sql stable security definer set search_path = public as $$
  select exists (
    select 1 from public.profiles
    where id = auth.uid() and role in ('admin', 'agent')
  );
$$;

alter table public.profiles enable row level security;
alter table public.properties enable row level security;
alter table public.leads enable row level security;

-- Perfiles: cada usuario ve su propio perfil; los administradores gestionan perfiles.
drop policy if exists "profiles_self_read" on public.profiles;
create policy "profiles_self_read" on public.profiles for select to authenticated
using (id = auth.uid() or public.is_admin());

drop policy if exists "profiles_admin_write" on public.profiles;
create policy "profiles_admin_write" on public.profiles for all to authenticated
using (public.is_admin()) with check (public.is_admin());

-- Cualquier visitante puede leer únicamente inmuebles publicados.
-- Se separa por rol a propósito: así el visitante anónimo no necesita
-- is_admin(), y se le puede retirar el permiso de ejecución (abajo) para no
-- exponer la función en /rest/v1/rpc/is_admin.
drop policy if exists "properties_public_read" on public.properties;
drop policy if exists "properties_anon_read" on public.properties;
create policy "properties_anon_read" on public.properties for select to anon
using (status = 'published');

drop policy if exists "properties_auth_read" on public.properties;
create policy "properties_auth_read" on public.properties for select to authenticated
using (status = 'published' or public.is_admin());

-- Postgres concede EXECUTE a PUBLIC por defecto, así que revocar sólo a anon
-- no cierra nada: hay que revocar la concesión general primero.
revoke execute on function public.is_admin() from public;
revoke execute on function public.is_admin() from anon;
grant execute on function public.is_admin() to authenticated;
grant execute on function public.is_admin() to service_role;

-- Solo personal autorizado puede crear, actualizar o borrar inmuebles.
drop policy if exists "properties_admin_insert" on public.properties;
create policy "properties_admin_insert" on public.properties for insert to authenticated
with check (public.is_admin());

drop policy if exists "properties_admin_update" on public.properties;
create policy "properties_admin_update" on public.properties for update to authenticated
using (public.is_admin()) with check (public.is_admin());

drop policy if exists "properties_admin_delete" on public.properties;
create policy "properties_admin_delete" on public.properties for delete to authenticated
using (public.is_admin());

-- Los visitantes pueden enviar solicitudes, pero no leerlas.
drop policy if exists "leads_public_insert" on public.leads;
create policy "leads_public_insert" on public.leads for insert to anon, authenticated
with check (
  char_length(name) between 2 and 120
  and char_length(phone) between 6 and 30
  and char_length(coalesce(message, '')) <= 3000
  and status = 'new'
);

drop policy if exists "leads_admin_read" on public.leads;
create policy "leads_admin_read" on public.leads for select to authenticated
using (public.is_admin());

drop policy if exists "leads_admin_update" on public.leads;
create policy "leads_admin_update" on public.leads for update to authenticated
using (public.is_admin()) with check (public.is_admin());

drop policy if exists "leads_admin_delete" on public.leads;
create policy "leads_admin_delete" on public.leads for delete to authenticated
using (public.is_admin());

-- Almacenamiento de imágenes públicas.
insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
values ('property-images', 'property-images', true, 10485760, array['image/jpeg','image/png','image/webp'])
on conflict (id) do update set public = true, file_size_limit = 10485760,
  allowed_mime_types = array['image/jpeg','image/png','image/webp'];

drop policy if exists "property_images_public_read" on storage.objects;
create policy "property_images_public_read" on storage.objects for select to public
using (bucket_id = 'property-images');

drop policy if exists "property_images_admin_insert" on storage.objects;
create policy "property_images_admin_insert" on storage.objects for insert to authenticated
with check (bucket_id = 'property-images' and public.is_admin());

drop policy if exists "property_images_admin_update" on storage.objects;
create policy "property_images_admin_update" on storage.objects for update to authenticated
using (bucket_id = 'property-images' and public.is_admin());

drop policy if exists "property_images_admin_delete" on storage.objects;
create policy "property_images_admin_delete" on storage.objects for delete to authenticated
using (bucket_id = 'property-images' and public.is_admin());

-- Después de crear el usuario administrador en Authentication > Users,
-- sustituye el UUID y ejecuta esta línea:
-- insert into public.profiles (id, full_name, role)
-- values ('UUID-DEL-USUARIO', 'Administrador Noguera', 'admin')
-- on conflict (id) do update set role = 'admin';
