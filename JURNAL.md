# Jurnalul de practică

O intrare pe săptămână, completată la sfârșitul săptămânii. Scrieți concret și pe scurt.

## Săptămâna 1 (08.10.2026)

- **Ce am făcut:** Identificarea și stabilirea colaborării cu o firmă parteneră pentru efectuarea stagiului de practică. Alegerea temei de practică și stabilirea obiectivelor principale împreună cu coordonatorul. Configurarea mediului de lucru și a repository-ului de pe GitHub pentru caietul de practică în LaTeX.
- **Ce am învățat:** Înțelegerea cerințelor administrative și a pașilor necesari pentru demararea stagiului de practică de specialitate.
- **Ce urmează:** Documentarea inițială pe marginea temei alese și stabilirea planului de lucru pentru săptămânile următoare.
- **Blocaje, întrebări pentru coordonator sau tutore:** Niciun blocaj momentan; urmează să stabilesc detaliile tehnice specifice temei cu tutorele de practică.
- **Instrumente de asistență utilizate (inclusiv AI) și pentru ce:** Git/GitHub (pentru gestionarea proiectului și a documentației). Asistent AI (pentru structurarea documentației inițiale).

## Săptămâna 2 (15.10.2026)

- **Ce am făcut:** Am realizat documentarea inițială pentru etapa E2 privind conceptele fundamentale de Asigurare a Calității (QA) conform standardelor ISTQB. Am structurat planul individual de lucru pe etape (E1–E7) pentru ambele semestre de practică la Ensemble Software SRL. Am actualizat documentația în depozitul de lucru de pe GitHub și am pregătit versiunea de etapă S1-E2.
- **Ce am învățat:** Am aprofundat rolul testării manuale și automatizate (UI/API) în ciclul de viață al dezvoltării software. Am înțeles importanța utilizării instrumentelor moderne de testare și a tehnicilor de prompt engineering asistate de AI pentru optimizarea cazurilor de testare.
- **Ce urmează:** Începerea activității onsite la sediul partenerului Ensemble Software SRL și explorarea inițială a aplicației interne împreună cu tutorele. Trecerea la etapa E3: analiza cerințelor (user stories) și proiectarea șabloanelor pentru cazurile de test.
- **Blocaje, întrebări pentru coordonator sau tutore:** Nu există blocaje tehnice. Urmează să stabilesc detaliile operaționale și setările de acces la aplicația internă odată cu începerea activității la sediul firmei.
- **Instrumente de asistență utilizate (inclusiv AI) și pentru ce:** Asistent AI utilizat pentru revizuirea gramaticală, structurarea textului în format LaTeX și clarificarea exprimării tehnice în documentație.

## Săptămâna 3 (28.10.2026)

- **Ce am făcut:** Am parcurs documentația introductivă de testare software primită în cadrul stagiului („Software testing - Introduction”)[cite: 1]. Am studiat conceptele fundamentale: ciclul de viață al dezvoltării software (SDLC)[cite: 3], metodologiile Agile/Scrum/Kanban[cite: 3, 4], principiile de testare[cite: 5], tipurile și nivelurile de testare (Black-box, Functional, Non-functional, Regresie, Smoke)[cite: 9, 10, 16], precum și structura unui defect (bug) și a cazurilor de testare[cite: 18, 24].
- **Ce am învățat:** Am înțeles diferența dintre testarea statică și cea dinamică[cite: 17], importanța detectării timpurii a defectelor[cite: 5] și modul corect în care se definesc componentele unui bug (pași de reproducere, comportament actual vs. așteptat)[cite: 18].
- **Ce urmează:** Trecerea la partea practică de interacțiune cu aplicația/site-ul web pus la dispoziție pentru testare.
- **Blocaje, întrebări pentru coordonator sau tutore:** Niciun blocaj; concepte teoretice asimilate cu succes.
- **Instrumente de asistență utilizate (inclusiv AI) și pentru ce:** Asistent AI utilizat pentru clarificarea unor termeni tehnici din documentația de referință și structurarea notițelor de curs.

## Săptămâna 4 (04.11.2026)

- **Ce am făcut:** Am realizat o sesiune completă de testare exploratorie și black-box pe site-ul/aplicația alocată[cite: 9, 12, 16]. Am interacționat cu toate elementele interfeței (butoane, formulare, meniuri și linkuri) pentru a verifica comportamentul aplicației în scenarii reale de utilizare. Am identificat, izolat și documentat bug-urile găsite, respectând structura standard a unui tichet (titlu, pași de reproducere, severitate și rezultate observate)[cite: 18].
- **Ce am învățat:** Am aplicat practic tehnicile de testare black-box[cite: 9, 13], am exersat gândirea critică specifică unui tester (pesticide paradox, defect clustering)[cite: 5, 6] și am învățat cum se raportează corect o eroare de software pentru a fi ușor de reprodus de către programatori.
- **Ce urmează:** Finalizarea documentației aferente acestei etape în raportul de practică și pregătirea pentru următoarele sarcini din stagiu.
- **Blocaje, întrebări pentru coordonator sau tutore:** Fără blocaje majore; eventuale clarificări privind prioritatea anumitor bug-uri identificate.
- **Instrumente de asistență utilizate (inclusiv AI) și pentru ce:** Asistent AI utilizat pentru validarea modului de redactare a pașilor de reproducere a defectelor și actualizarea jurnalului în LaTeX.
## Săptămâna 5 (11.11.2026)

- **Ce am făcut:** Am rulat suita de teste a colegei pas cu pas în Google Sheets, am completat rezultatele observate și statusurile alături de rularea inițială, am adăugat un caz de test suplimentar (`TC30`), am documentat diferențele identificate (inclusiv cele generate de modificări în baza de date) și am raportat defectele găsite (`BUG01`–`BUG05`) cu dovezi video în Google Drive.
- **Ce am învățat:** Am înțeles importanța reproductibilității cazurilor de test rulate de o altă persoană, modul în care se separă diferențele cauzate de starea datelor/bazei de date de defectele reale ale aplicației și cum se clasifică severitatea bug-urilor în funcție de impact.
- **Ce urmează:** Continuarea parcurgerii etapelor de practică și trecerea spre înțelegerea nivelului API din spatele aplicației.
- **Blocaje, întrebări pentru coordonator sau tutore:** Fără blocaje; am clarificat clasificarea severității defectelor și modul de evidențiere a diferențelor dintre rulări.
- **Instrumente de asistență utilizate (inclusiv AI) și pentru ce:** Google Sheets și Google Drive (pentru completarea suitei, raportarea bug-urilor și stocarea dovezilor video). Asistent AI (pentru structurarea sintezei diferențelor, verificarea severității bug-urilor și redactarea secțiunilor din jurnal).

## Săptămâna 6 (18.11.2026)

- **Ce am făcut:** Am urmărit și analizat videoclipul tutorial *Postman Beginner's Course - API Testing* (http://www.youtube.com/watch?v=VywxIQ2ZXw4) primit de la colaborator, parcurgând conceptele de bază privind API-urile, comunicarea client–server și lucrul cu cereri/răspunsuri HTTP în Postman.
- **Ce am învățat:** Am înțeles modul în care funcționează metodele HTTP (`GET`, `POST`, `PATCH`, `DELETE`), parametrii (`query` și `path`), antetele de autentificare (`Bearer Token`), formatul JSON, codurile de status (`200`, `201`, `204`, `400`, `401`, `404`), variabilele, aserțiunile de test (`pm.test`, `pm.expect`) și rularea automatizată a colecțiilor.
- **Ce urmează:** Aplicarea practică a noțiunilor de testare API în etapele următoare ale stagiului de practică și actualizarea documentației aferente.
- **Blocaje, întrebări pentru coordonator sau tutore:** Niciun blocaj; conceptele introductive din tutorial sunt clare.
- **Instrumente de asistență utilizate (inclusiv AI) și pentru ce:** YouTube / Postman (pentru parcurgerea tutorialului video și familiarizarea cu fluxurile de testare API). Asistent AI (pentru sinteza conceptelor cheie din tutorial și redactarea intrării în jurnal).