# Supabase koppelen (eenmalig)

De Project URL en de Publishable key staan al in `index.html` (zoek naar `CFG`). Je hoeft alleen nog de database en het inlogaccount aan te maken.

## 1. Tabel aanmaken
1. Ga naar [supabase.com](https://supabase.com) en open je project.
2. Klik links op **SQL Editor** (icoon `>_`) en dan op **New query**.
3. Open `supabase.sql`, kopieer alles, plak het in de editor en klik rechtsonder op **Run**.
4. Je ziet "Success". Controle: **Table Editor** toont nu de tabel `store`.

## 2. Inlogaccount aanmaken
1. Klik links op **Authentication** en dan op **Users**.
2. Klik rechtsboven op **Add user** en kies **Create new user**.
3. Vul in:
   - **Email:** `panel@ovb.example.com`
   - **Password:** kies zelf een sterk wachtwoord (minimaal 6 tekens)
   - Vink **Auto Confirm User** aan.
4. Klik op **Create user**.

Schrijf het wachtwoord nergens in een bestand, ook niet in deze uitleg en niet op GitHub. Deel het alleen met mensen die erbij mogen. Iedereen die het wachtwoord kent, logt in op dit ene account en ziet dezelfde notities, stortingen en contacten.

## 3. Zelf registreren uitzetten (belangrijk)
1. Ga naar **Authentication → Sign In / Providers** (soms **Providers** of **Settings**).
2. Zet **Allow new users to sign up** uit en klik op **Save**.

## 4. Testen
Open het panel, vul het wachtwoord in en kijk of rechtsboven **☁ Gesynchroniseerd** verschijnt. Maak een notitie en open het panel op een ander apparaat: de notitie staat er na een paar seconden ook.

## Wachtwoord wijzigen
Ga naar **Authentication → Users**, verwijder het account `panel@ovb.example.com` (drie puntjes → **Delete user**) en maak het opnieuw aan met een nieuw wachtwoord, zoals bij stap 2. De opgeslagen notities en stortingen blijven bestaan.

## Veiligheid
- De Publishable key mag in `index.html` staan. De beveiliging zit in de rechten uit `supabase.sql`: alleen het account `panel@ovb.example.com` kan lezen of schrijven.
- Gebruik nooit een `secret`- of `service_role`-key in `index.html`.
- Het wachtwoord staat nergens in de code of in dit project. Het wordt alleen ingevoerd op het inlogscherm en gecontroleerd door Supabase, dat vaak herhaalde pogingen zelf afremt.
- Iedereen die het wachtwoord weet, heeft toegang tot alles. Wijzig het als iemand er niet meer bij hoort.
