# OVB Panel

Een los hulpmiddel voor Openbaar Vervoer Benelux. Je vult een paar velden in en krijgt kant-en-klare Discord-berichten: stortingen, trainingen, taxi-examens, sancties en rank-updates. Er is ook een Notepad om berichten te bewaren.

Geen account, geen database en geen server. Alles draait in je eigen browser en blijft daar staan.

## Wat kan het?

- **Home:** overzicht, snelle knoppen en een check op lege instellingen.
- **Stortingen:** bedrag berekenen uit uren en minuten, of een hele lijst in één keer plakken.
- **Trainingen:** soort (Bus, Taxi, Trident), datum, starttijd en duur, met een eigen verzamelpunt per soort.
- **Taxi-examen, Sancties, Ranks:** invullen en kopiëren.
- **Notepad:** berichten bewaren, importeren (`.txt`, `.md`, `.json`) en een backup maken.
- **Instellingen:** uurloon, ID's, naam en functie. Hiermee kun je ook alles exporteren en importeren.
- Een Discord-voorbeeld bij elk bericht, meldingen bij lege velden en een uitleg per tab.

## Sneltoetsen

| Toets | Actie |
|---|---|
| `1` – `8` | naar een tab (Home, Stortingen, Trainingen, Taxi, Sancties, Ranks, Notepad, Instellingen) |
| `Ctrl` + `Enter` | het bericht kopiëren |
| `Ctrl` + `S` | notitie opslaan |

## Zelf gebruiken

1. Download alle bestanden uit deze map en laat ze samen in één map staan.
2. Open `index.html` in je browser.
3. Ga naar **Instellingen** en vul je Discord-ID, naam en functie in. Je instellingen blijven in je browser staan.

## Online zetten met GitHub Pages (gratis)

1. Maak een account op [github.com](https://github.com) en klik rechtsboven op **+ → New repository**.
2. Geef de repository een naam, bijvoorbeeld `ovb-panel`, kies **Public** en klik op **Create repository**.
3. Klik op **uploading an existing file**, sleep alle bestanden uit de map erin (`index.html`, de afbeeldingen, `manifest.webmanifest`, `sw.js`, `LICENSE` en dit bestand) en klik op **Commit changes**.
4. Ga naar **Settings → Pages**. Kies bij **Branch** de optie `main` en de map `/ (root)` en klik op **Save**.
5. Na een minuut staat je panel op `https://JOUWNAAM.github.io/ovb-panel/`.

Bijwerken doe je door een bestand opnieuw te uploaden in je repository.

## Installeren als app

Open de link in Chrome of Edge en kies **Installeren** in de adresbalk of via het menu (⋮). Op een iPhone of iPad kies je **Deel → Zet op beginscherm**. De app krijgt het OVB-logo en werkt ook zonder internet. Installeren werkt alleen via een `https`-link (zoals GitHub Pages), niet vanuit een los bestand op je computer.

## Backup

Notities en instellingen horen bij je browser op dit apparaat. Maak daarom af en toe een backup met **Instellingen → Alles exporteren**. Op een andere computer zet je alles terug met **Alles importeren**.

## Privacy

Er wordt niets verstuurd of verzameld. De standaard rol-ID's staan in `index.html` bij `DEF`. Je eigen Discord-ID, naam en functie staan standaard leeg en vul je zelf in.

## Licentie

MIT, zie `LICENSE`.
