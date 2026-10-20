# OVB Panel

Een los hulpmiddel voor Openbaar Vervoer Benelux. Je vult een paar velden in en krijgt kant-en-klare Discord-berichten: stortingen, trainingen, taxi-examens, sancties en rank-updates. Er is ook een Notepad om berichten te bewaren.

Alles draait in je browser en blijft daar staan. Wil je notities en stortingen delen tussen apparaten, dan koppel je optioneel Supabase (zie `SUPABASE.md`). Met een wachtwoord logt het gedeelde account in.

## Wat kan het?

- **Home:** overzicht, snelle knoppen en een check op lege instellingen.
- **Overzicht:** gelogde stortingen met totalen, het saldo met een lijngrafiek per dag, week of maand die gelijk blijft tot de volgende storting, handmatig een saldo loggen (CSV-export) en je laatst gekopieerde berichten.
- **Medewerkers:** wie welke functie heeft en hoeveel aansprekingen, strikes en schorsingen iemand heeft, met een kleur als iemand extra aandacht nodig heeft.
- **Sjablonen:** maak eigen berichten met `{velden}` en vul ze in een formulier in.
- **Stortingen:** bedrag berekenen uit uren en minuten, een hele lijst in één keer plakken of zelf een bedrag typen. Het bericht bevat het bedrag zonder belasting. Een storting is het saldo (hoeveel geld jullie hebben) en wordt bij Log of bij kopiëren vastgelegd, met de belasting (standaard 9,5%) erin verwerkt. Bedragen werken op de cent, bijvoorbeeld 110.010,55.
- **Trainingen:** soort (Bus of Taxi), datum, starttijd en duur, met een eigen verzamelpunt per soort en Discord-tijdstempels, zodat iedereen de tijd in zijn eigen tijdzone ziet.
- **Taxi-examen:** bij gezakt komt ook de datum waarop iemand opnieuw mag, als Discord-datum.
- **Sancties en Ranks:** invullen en kopiëren. Met Log telt een sanctie mee bij de medewerker en met Verwerk worden functies bijgewerkt.
- **Notepad:** opmaakknoppen, emoji, @namen uit je contacten, labels en vastpinnen. Notities importeren (`.txt`, `.md`, `.json`) en een backup maken.
- Berichten boven 2000 tekens worden automatisch in stukken gesplitst.
- **Thema's:** Nacht, Licht, OVB en Bus, met een eigen accentkleur en de mogelijkheid om animaties uit te zetten.
- **Synchronisatie:** met een wachtwoord en Supabase deel je notities, stortingen, contacten, medewerkers, sjablonen en instellingen direct tussen apparaten en mensen. Je wordt na een instelbare tijd zonder activiteit automatisch uitgelogd.
- Een pop-up met wat er nieuw is zodra er een nieuwe versie online staat.
- **Instellingen:** uurloon, ID's, naam en functie. Hiermee kun je ook alles exporteren en importeren.
- Een Discord-voorbeeld bij elk bericht, meldingen bij lege velden en een uitleg per tab.

## Op elk apparaat

Het panel past zich aan het scherm aan. Op een computer staat het menu bovenaan en past alles op één scherm. Op een telefoon of bij sterk inzoomen verschijnt een menubalk onderaan met een **Meer**-scherm voor de overige tabs, zijn knoppen en velden groter om aan te raken en blijven sneltoetsen verborgen. De terugknop van je browser of telefoon werkt tussen tabs. Geïnstalleerd als app (zie hieronder) werkt het ook op een iPhone, iPad en Android.

## Sneltoetsen

| Toets | Actie |
|---|---|
| `1` – `9`, `0` | naar een tab (Home, Stortingen, Trainingen, Taxi, Sancties, Ranks, Sjablonen, Medewerkers, Overzicht, Notepad) |
| `Ctrl` + `Enter` | het bericht kopiëren |
| `Ctrl` + `S` | notitie opslaan |

## Zelf gebruiken

1. Download alle bestanden uit deze map en laat ze samen in één map staan.
2. Open `index.html` in je browser.
3. Ga naar **Instellingen** en vul je Discord-ID, naam en functie in. Je instellingen blijven in je browser staan.

## Online zetten met GitHub Pages (gratis)

1. Maak een account op [github.com](https://github.com) en klik rechtsboven op **+ → New repository**.
2. Geef de repository een naam, bijvoorbeeld `ovb-panel`, kies **Public** en klik op **Create repository**.
3. Klik op **uploading an existing file**, sleep alle bestanden uit de map erin (`index.html`, de afbeeldingen, `manifest.webmanifest`, `sw.js`, `version.json`, `LICENSE` en de map `.github`) en klik op **Commit changes**.
4. Ga naar **Settings → Pages**. Kies bij **Branch** de optie `main` en de map `/ (root)` en klik op **Save**.
5. Na een minuut staat je panel op `https://JOUWNAAM.github.io/ovb-panel/`.

Bijwerken doe je door een bestand opnieuw te uploaden in je repository.

## Installeren als app

Open de link in Chrome of Edge en kies **Installeren** in de adresbalk of via het menu (⋮). Op een iPhone of iPad kies je **Deel → Zet op beginscherm**. De app krijgt het OVB-logo en werkt ook zonder internet. Installeren werkt alleen via een `https`-link (zoals GitHub Pages), niet vanuit een los bestand op je computer.

## Backup

Notities en instellingen horen bij je browser op dit apparaat. Maak daarom af en toe een backup met **Instellingen → Alles exporteren**. Op een andere computer zet je alles terug met **Alles importeren**.

## Supabase (optioneel)

Zie `SUPABASE.md` voor het aanmaken van de tabel en het inlogaccount. Zonder Supabase werkt het wachtwoordscherm niet. Wil je het zonder inlog gebruiken, verwijder dan de Supabase-code en het scherm `#lock`.

## Privacy

Berichten, instellingen en thema blijven in je browser. Alleen notities, gelogde stortingen, contacten, medewerkers, sancties, sjablonen en de gedeelde instellingen gaan naar jouw eigen Supabase-project, achter het wachtwoord. De standaard rol-ID's staan in `index.html` bij `DEF`. Je eigen Discord-ID, naam en functie staan standaard leeg en vul je zelf in.

## Meewerken

Zie `CONTRIBUTING.md`. Fouten melden en ideeën indienen kan via de formulieren bij **Issues**.

## Licentie

MIT, zie `LICENSE`.
