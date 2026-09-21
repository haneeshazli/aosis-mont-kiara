-- Leads table for the AOSIS @ Mont Kiara registration form.
-- Run once in Supabase: Dashboard -> SQL Editor -> New query -> paste -> Run.

create table if not exists public.leads (
  id           bigint generated always as identity primary key,
  created_at   timestamptz not null default now(),
  name         text not null check (char_length(name) between 1 and 200),
  phone        text not null check (char_length(phone) between 3 and 40),
  layout       text check (char_length(layout) <= 200),
  message      text check (char_length(message) <= 5000),
  consent      boolean not null default false,
  page_url     text check (char_length(page_url) <= 2000),
  referrer     text check (char_length(referrer) <= 2000),
  utm_source   text check (char_length(utm_source) <= 200),
  utm_medium   text check (char_length(utm_medium) <= 200),
  utm_campaign text check (char_length(utm_campaign) <= 200)
);

alter table public.leads enable row level security;

-- The public site may only INSERT. Nobody using the public key can read,
-- update or delete leads; view them in the Supabase dashboard (Table Editor).
drop policy if exists "public can submit leads" on public.leads;
create policy "public can submit leads"
  on public.leads for insert
  to anon
  with check (consent = true);

grant insert on public.leads to anon;
