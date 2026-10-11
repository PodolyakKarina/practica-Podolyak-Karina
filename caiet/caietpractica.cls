% caietpractica.cls · macheta caietului de practică de specialitate (studenți, DMI, CUNBM, UTCN)
% Aspect academic clasic: TeX Gyre Pagella (text), TeX Gyre Heros (titluri), Latin Modern Mono (cod),
% albastru închis ca singură culoare. Fonturile fac parte din orice distribuție TeX Live (și din Overleaf).
% Acest fișier nu se modifică: caietul se scrie în caiet.tex și în capitole/. Se compilează cu XeLaTeX
% (local: latexmk; în Overleaf: Menu → Compiler → XeLaTeX; în GitHub: automat, la fiecare push și la fiecare etichetă).
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{caietpractica}[2026/10/05 Caietul de practica de specialitate]
\LoadClass[11pt,a4paper,oneside,openany]{report}

\RequirePackage{iftex}
\ifPDFTeX
  \ClassError{caietpractica}{Caietul se compileaza cu XeLaTeX sau LuaLaTeX, nu cu pdfLaTeX}%
    {In Overleaf: Menu, Compiler, XeLaTeX. Local: latexmk (fisierul latexmkrc alege XeLaTeX).}
\fi

% ---------------------------------------------------------------- limbă, fonturi
\RequirePackage{babel}
\babelprovide[main,import]{romanian}
\setlocalecaption{romanian}{table}{Tabelul}
\setlocalecaption{romanian}{bib}{Bibliografie}
\RequirePackage{fontspec}
\defaultfontfeatures{Ligatures=TeX}
\setmainfont{texgyrepagella}[Extension=.otf, UprightFont=*-regular, ItalicFont=*-italic,
  BoldFont=*-bold, BoldItalicFont=*-bolditalic]
\setsansfont{texgyreheros}[Extension=.otf, UprightFont=*-regular, ItalicFont=*-italic,
  BoldFont=*-bold, BoldItalicFont=*-bolditalic, Scale=MatchLowercase]
\setmonofont{lmmono10}[Extension=.otf, UprightFont=*-regular, BoldFont=lmmonolt10-bold, Scale=MatchLowercase]

% ---------------------------------------------------------------- culori
\RequirePackage{xcolor}
\definecolor{accent}{HTML}{1F3A5F}     % albastru închis
\definecolor{gri}{HTML}{555555}
\definecolor{grideschis}{HTML}{F2F4F7}
\definecolor{linie}{HTML}{9AA5B1}

% ---------------------------------------------------------------- pagina
\RequirePackage[a4paper,top=25mm,bottom=25mm,left=30mm,right=25mm,headsep=8mm,footskip=12mm]{geometry}
\RequirePackage{microtype}
\linespread{1.12}
\setlength{\parindent}{1.2em}
\setlength{\parskip}{2pt plus 1pt}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{array}
\RequirePackage{enumitem}
\setlist{itemsep=1pt,topsep=4pt}
\RequirePackage{csquotes}
\DeclareQuoteStyle{romanian}{\quotedblbase}{\textquotedblright}{\guillemotleft}{\guillemotright}
\setquotestyle{romanian}
\RequirePackage[colorlinks=true,linkcolor=black,citecolor=accent,urlcolor=accent]{hyperref}
\RequirePackage{caption}
\captionsetup{font=small,labelfont={bf,color=accent},labelsep=period}

% ---------------------------------------------------------------- datele caietului (din caiet.tex)
\newcommand{\titlutema}[1]{\def\@titlutema{#1}}
\newcommand{\student}[1]{\def\@student{#1}}
\newcommand{\program}[1]{\def\@program{#1}}
\newcommand{\traseu}[1]{\def\@traseu{#1}}
\newcommand{\tutore}[1]{\def\@tutore{#1}}
\newcommand{\semestrul}[1]{\def\@semestrul{#1}}
\newcommand{\coordonator}[1]{\def\@coordonator{#1}}
\newcommand{\etichetaetapa}[1]{\def\@etichetaetapa{#1}}
\titlutema{Titlul temei}\student{Nume Prenume}\program{Matematică informatică}\traseu{a) în departament}
\tutore{}\semestrul{1}\coordonator{conf.~univ.~dr.~Cosmin Nicolae Sabo}\etichetaetapa{}

% ---------------------------------------------------------------- coperta (pagina de titlu clasică, centrată)
\renewcommand{\maketitle}{%
  \begin{titlepage}
    \centering
    {\sffamily\large UNIVERSITATEA TEHNICĂ DIN CLUJ-NAPOCA\par}
    \vspace{1mm}
    {\sffamily Centrul Universitar Nord din Baia Mare\par
     Facultatea de Științe\par
     Departamentul de Matematică și Informatică\par}
    \vspace{2mm}{\color{accent}\rule{\linewidth}{0.6pt}}\par
    \vspace{45mm}
    {\sffamily\bfseries\Large\color{accent} CAIET DE PRACTICĂ DE SPECIALITATE\par}
    \vspace{10mm}
    {\LARGE\@titlutema\par}
    \vspace{6mm}
    {\large\@program{}, anul II\par}
    \vfill
    \begin{tabular}{@{}r@{\hspace{1.2em}}l@{}}
      \textsc{Student} & \@student \\
      \textsc{Traseul} & \@traseu \\
      \textsc{Coordonator} & \@coordonator \\
      \ifx\@tutore\@empty\else\textsc{Tutore} & \@tutore \\\fi
      \ifx\@etichetaetapa\@empty\else\textsc{Versiunea} & \@etichetaetapa \\\fi
    \end{tabular}\par
    \vspace{20mm}
    {\sffamily Baia Mare\par}
  \end{titlepage}}

% ---------------------------------------------------------------- titluri
\RequirePackage{titlesec}
\titleformat{\chapter}[hang]
  {\sffamily\bfseries\LARGE\color{accent}}
  {\thechapter.}{0.6em}{}
  [\vspace{1mm}{\color{linie}\titlerule[0.6pt]}]
\titleformat{name=\chapter,numberless}[hang]
  {\sffamily\bfseries\LARGE\color{accent}}{}{0pt}{}[\vspace{1mm}{\color{linie}\titlerule[0.6pt]}]
\titlespacing*{\chapter}{0pt}{0pt}{10mm}
\titleformat{\section}{\sffamily\bfseries\large\color{accent}}{\thesection}{0.7em}{}
\titleformat{\subsection}{\sffamily\bfseries\normalsize}{\thesubsection}{0.6em}{}
\titlespacing*{\section}{0pt}{14pt}{5pt}
\titlespacing*{\subsection}{0pt}{10pt}{3pt}
\setcounter{secnumdepth}{2}
\setcounter{tocdepth}{1}

% ---------------------------------------------------------------- antet și subsol
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\headrule}{{\color{linie}\hrule height\headrulewidth width\headwidth}}
\fancyhead[L]{\small\sffamily\color{gri}Caiet de practică de specialitate}
\fancyhead[R]{\small\sffamily\color{gri}\leftmark}
\fancyfoot[L]{\footnotesize\sffamily\color{gri}\@student\ifx\@etichetaetapa\@empty\else{} · versiunea \@etichetaetapa\fi}
\fancyfoot[R]{\small\sffamily\thepage}
\renewcommand{\chaptermark}[1]{\markboth{\ifnum\value{chapter}>0\thechapter. \fi#1}{}}
\fancypagestyle{plain}{\fancyhf{}\renewcommand{\headrulewidth}{0pt}\fancyfoot[R]{\small\sffamily\thepage}}

% ---------------------------------------------------------------- cuprins
\RequirePackage{tocloft}
\renewcommand{\cftchapfont}{\sffamily\bfseries}
\renewcommand{\cftchappagefont}{\sffamily\bfseries}
\renewcommand{\contentsname}{Cuprins}
\renewcommand{\cfttoctitlefont}{\sffamily\bfseries\LARGE\color{accent}}
\setlength{\cftbeforetoctitleskip}{0pt}

% ---------------------------------------------------------------- caseta de idee principală (fundal deschis)
\RequirePackage{mdframed}
\newmdenv[linecolor=linie,linewidth=0.5pt,backgroundcolor=grideschis,innerleftmargin=10pt,innerrightmargin=10pt,
  innertopmargin=6pt,innerbottommargin=6pt,skipabove=8pt,skipbelow=8pt]{ideecadru}
\newenvironment{ideeprincipala}{\begin{ideecadru}\textsf{\textbf{\color{accent}Ideea principală.}} }{\end{ideecadru}}

% ---------------------------------------------------------------- cod
% Mediul cod (fvextra): diacriticele funcționează; \begin{cod}[highlightlines={2-3}] evidențiază rânduri.
\RequirePackage{fvextra}
\definecolor{evidentiere}{HTML}{FFF3C4}
\fvset{fontsize=\small,numbers=left,numbersep=6pt,breaklines=true,tabsize=4,highlightcolor=evidentiere,
  frame=lines,framesep=2mm,rulecolor=\color{linie}}
\renewcommand{\theFancyVerbLine}{\textcolor{gri}{\ttfamily\scriptsize\arabic{FancyVerbLine}}}
\DefineVerbatimEnvironment{cod}{Verbatim}{}

% ---------------------------------------------------------------- etapa în care se scrie un capitol (notă pe margine)
\newcommand{\etapa}[1]{\marginpar{\raggedright\scriptsize\sffamily\color{gri}etapa #1}}
\setlength{\marginparwidth}{18mm}
\setlength{\marginparsep}{3mm}
\endinput
