-- OVB Panel: plak dit volledig in Supabase > SQL Editor en klik op Run.
-- Eén tabel voor notities, gelogde stortingen en contacten.
create table if not exists store (
  id   text primary key,
  kind text not null check (kind in ('notes','stort','contacts')),
  d    jsonb not null,
  u    bigint not null default 0
);

alter table store enable row level security;

-- Alleen het gedeelde panel-account (panel@ovb.example.com) mag erbij.
create policy "lezen"      on store for select to authenticated using ((auth.jwt()->>'email') = 'panel@ovb.example.com');
create policy "toevoegen"  on store for insert to authenticated with check ((auth.jwt()->>'email') = 'panel@ovb.example.com');
create policy "wijzigen"   on store for update to authenticated using ((auth.jwt()->>'email') = 'panel@ovb.example.com') with check ((auth.jwt()->>'email') = 'panel@ovb.example.com');
create policy "verwijderen" on store for delete to authenticated using ((auth.jwt()->>'email') = 'panel@ovb.example.com');
