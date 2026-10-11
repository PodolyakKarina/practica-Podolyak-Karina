# Practică de specialitate: <titlul temei>

| | |
|---|---|
| **Student** | Podolyak Karina Iulia, anul II, programul Matematică informatică / Informatică, grupa ..Informatică. |
| **Traseul** | a) în departament / b) la partener: <numele partenerului> / c) în unitatea de învățământ: <numele școlii> |b)
| **Coordonator** | conf. univ. dr. Cosmin Nicolae SABO (Universitatea Tehnică din Cluj-Napoca, Centrul Universitar Nord din Baia Mare) |
| **Tutore** (traseele b și c) | Nume Prenume, funcția | Pop Radu,programator
| **Data alegerii temei** | zz.ll.aaaa | 09.10.2026

## Tema

Scrierea și execuția cazurilor de test manuale pe o aplicație internă
Automatizarea testelor

## Structura depozitului

| Dosar / fișier | Conținut |
|---|---|
| `produs/` | codul aplicației, scripturile sau resursele didactice realizate |
| `date/` | datele utilizate (doar date publice sau proprii, fără date personale ale altor persoane) |
| `caiet/` | caietul de practică, în LaTeX: `caiet.tex` și `capitole/` (le completați dumneavoastră), `bibliografie.bib`, `figuri/`; macheta `caietpractica.cls` (nu se modifică) |
| `.github/workflows/caiet.yml` | compilarea automată a caietului în GitHub (nu se modifică) |
| `JURNAL.md` | jurnalul săptămânal de activitate |
| `CITATION.cff` | cum se citează lucrarea |

## Caietul de practică

Caietul se scrie în LaTeX, pe macheta cursului (`caiet/caietpractica.cls`): datele dumneavoastră în `caiet/caiet.tex`, textul în
`caiet/capitole/` (câte un fișier pe capitol; marginea arată etapa în care se scrie fiecare capitol). Macheta și fișierul de compilare
nu se modifică.

- **În GitHub, automat:** la fiecare push care modifică `caiet/`, GitHub compilează caietul (tab-ul Actions → rularea → Artifacts).
  La fiecare etichetă de etapă (`S1-E1` … `S2-E7`), PDF-ul se publică la **Releases**, ca `caiet-S1-E3.pdf`, cu eticheta pe copertă.
- **Local:** `cd caiet` și `latexmk` (XeLaTeX, ales de `latexmkrc`).
- **În Overleaf** (varianta recomandată dacă nu lucrați local): detaliile sunt mai jos.

### Lucrul în Overleaf

1. În Overleaf: **New Project → Upload Project** și alegeți arhiva „Caietul pentru Overleaf” din Campus Virtual
   (sau o arhivă cu conținutul dosarului `caiet/`). Compilatorul XeLaTeX e ales automat de `latexmkrc`;
   dacă nu, Menu → Compiler → **XeLaTeX**.
2. Scrieți caietul în Overleaf, ori de câte ori doriți.
3. **La fiecare etapă** (o dată la două săptămâni, până la termen), îl aduceți în depozit:
   - în Overleaf: **Menu → Download → Source** (o arhivă .zip);
   - în depozit, înlocuiți conținutul dosarului `caiet/` cu fișierele din arhivă: cu git
     (`git add caiet`, `git commit -m "Caietul pentru etapa S1-E3"`, `git push`) sau din pagina depozitului,
     **Add file → Upload files**, în dosarul `caiet/`;
   - creați eticheta etapei: cu git (`git tag -a S1-E3 -m "Etapa 3"`, `git push origin S1-E3`) sau din pagina depozitului,
     **Releases → Draft a new release**, cu eticheta nouă `S1-E3`, apoi **Publish release**;
   - după un minut sau două, PDF-ul `caiet-S1-E3.pdf` apare la release-ul etapei; îl încărcați la predarea din Campus Virtual.
     Dacă nu apare, încărcați PDF-ul compilat în Overleaf (Menu → Download → PDF) și semnalați la ore eroarea afișată la Actions.

Overleaf are și sincronizare directă cu GitHub, dar numai în variantele plătite; nu e necesară.

Dacă rularea din Actions eșuează (semnul roșu), deschideți-o: ultima eroare LaTeX arată fișierul și rândul.

Pentru cod în caiet utilizați mediul `cod` (diacriticele merg; rândurile discutate se evidențiază):

```latex
\begin{cod}[highlightlines={2}]
def suma(n):
    return sum(range(n))
\end{cod}
```

## Etapele

La fiecare două săptămâni marcați versiunea curentă cu o etichetă și predați etapa în Campus Virtual, cu linkul către etichetă și PDF-ul caietului (din Releases sau, dacă nu a apărut, compilat în Overleaf sau local):

```bash
git tag -a S1-E1 -m "Etapa 1: tema, traseul, README"
git push origin S1-E1
```

Etichetele: `S1-E1` ... `S1-E7` în semestrul 1 și `S2-E1` ... `S2-E7` în semestrul 2.

## Recunoașterea contribuțiilor

Codul și caietul sunt ale studentului, ca autor. Ideea și cadrul temei, precum și îndrumarea aparțin coordonatorului. Dacă tema sau rezultatele sunt continuate (inclusiv în lucrarea de licență), se declară originea temei și se citează caietul de practică publicat.

La final, după verificarea de similitudine, depozitul devine public, sub licențele stabilite prin acordul de coordonare (de regulă CC BY 4.0 pentru caiet și MIT pentru cod).
