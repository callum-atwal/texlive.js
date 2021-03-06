%%
%% This is file `schuleab.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% schule.dtx  (with options: `schuleab.cls,package')
%% Copyright (C)
%% 2010, 2011, 2012, 2013, 2014, 2015
%% Johannes Pieper (johannes_pieper@yahoo.de)
%% Johannes Kuhaupt (kujohann@seminar.ham.nw.schule.de)
%% Daniel Spittank (kontakt@daniel.spittank.net)
%% André Hilbig (mail@andrehilbig.de)
%% Adrian Salamon (adriansalamon@gmail.com)
%% 
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is Johannes Pieper.
%% 
%% This work consists of the files schule.dtx and schule.ins, readme
%% and the derived files schule.sty, schulinf.sty, syntaxdi.sty,
%% relaycircuit.sty, schulphy.sty, schulekl.cls, schuleub.cls,
%% schullzk.cls, schuleab.cls, schulein.cls, schuleue.cls,
%% schullsg.cls, schulit.cls, schulekl.sty, schulelzk.sty.
%% 
%% Dies ist der dokumentierte Makrocode zur Erzeugung und Dokumentation
%% des LaTeX-Paket `schule'.
%% 
%% This is the documented Macrocode to build the LaTeX-Package `schule'
%% and its documentation.
%% 
%% Some of the examples in the documentation have different copyright
%% notes.
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%% Der folgende kenntlich gemachte Abschnitt ist in der Zusammenarbeit
%% von Informatikreferendaren und ehemaligen Informatikreferendaren
%% der Studienseminare (heute ZfsL) Arnsberg, Hamm und Solingen
%% entstanden.
%%
%% Der Abschnitt steht unter der Lizenz: Creative Commons by-nc-sa
%% Version 4.0
%% http://creativecommons.org/licenses/by-nc-sa/4.0/deed.de
%%
%% Nach dieser Lizenz darf der Abschnitt beliebig kopiert und
%% bearbeitet werden, sofern das Folgeprodukt wiederum unter
%% gleichen Lizenzbedingungen vertrieben und auf die ursprünglichen
%% Urheber verwiesen wird.  Eine kommerzielle Nutzung ist
%% ausdrücklich ausgeschlossen.
%%
%% Die Namensnennung durch einen Verweis und die Lizenzangabe der
%% ursprünglichen Urheber auf den Materialien für Schülerinnen und
%% Schüler ist erforderlich.
%%
%% Die vollständige Sammlung der Dokumente steht unter
%% http://ddi.uni-wuppertal.de/material/materialsammlung/ zur
%% Verfügung.
%%
%% Das LaTeX-Paket zum Setzen der Dokumente der Sammlung steht unter
%% http://www.ctan.org/pkg/ zur Verfügung.
%%
%% ----- BEGIN ------------------------------------------------------
%%
%% ----- END ---------------------------------------------------------
%% Der folgende kenntlich gemachte Abschnitt ist in der Zusammenarbeit
%% von Informatikreferendaren und ehemaligen Informatikreferendaren
%% der Studienseminare (heute ZfsL) Arnsberg, Hamm und Solingen
%% entstanden.
%%
%% Der Abschnitt steht unter der Lizenz: Creative Commons by-nc-sa
%% Version 4.0
%% http://creativecommons.org/licenses/by-nc-sa/4.0/deed.de
%%
%% Nach dieser Lizenz darf der Abschnitt beliebig kopiert und
%% bearbeitet werden, sofern das Folgeprodukt wiederum unter
%% gleichen Lizenzbedingungen vertrieben und auf die ursprünglichen
%% Urheber verwiesen wird.  Eine kommerzielle Nutzung ist
%% ausdrücklich ausgeschlossen.
%%
%% Die Namensnennung durch einen Verweis und die Lizenzangabe der
%% ursprünglichen Urheber auf den Materialien für Schülerinnen und
%% Schüler ist erforderlich.
%%
%% Die vollständige Sammlung der Dokumente steht unter
%% http://ddi.uni-wuppertal.de/material/materialsammlung/ zur
%% Verfügung.
%%
%% Das LaTeX-Paket zum Setzen der Dokumente der Sammlung steht unter
%% http://www.ctan.org/pkg/ zur Verfügung.
%%
%% ----- BEGIN ------------------------------------------------------
%% Der String Version: Version: 0.6 respektive 2015-05-07 wird beim Aufruf
%% des build-scripts durch die passende Nummer bzw. das passende
%% Datum ersetzt.
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{schuleab}[2015/05/07 v0.6 %
                         Vorlage für ein Arbeitsblatt]
\RequirePackage{ifthen}
\DeclareOption{loesung}{\PassOptionsToPackage{loesung}{schule}}
\DeclareOption{loesungseite}{
\PassOptionsToPackage{loesungseite}{schule}
}
\DeclareOption{loesungsseite}{
\PassOptionsToPackage{loesungsseite}{schule}
}
\newboolean{@kopfSuSName}
\setboolean{@kopfSuSName}{false}
\DeclareOption{kopfSuSName}{\setboolean{@kopfSuSName}{true}}
\newcommand{\kopfSuSName}{Name: \luecke{\@kopfSuSNameLaenge}}
\newboolean{@kopfDatum}
\setboolean{@kopfDatum}{false}
\DeclareOption{kopfDatum}{\setboolean{@kopfDatum}{true}}
\newcommand{\KopfDatum}{Datum: \luecke{\@kopfDatumLaenge}}
\DeclareOption{kopfDatumAktuell}{
\setboolean{@kopfDatum}{true}
\renewcommand{\KopfDatum}{Datum: \@kopfDatum}
}
\newboolean{@onesitepages}
\setboolean{@onesitepages}{false}
\DeclareOption{onesitepages}{\setboolean{@onesitepages}{true}}
\newboolean{@showlastpage}
\setboolean{@showlastpage}{false}
\DeclareOption{showlastpage}{\setboolean{@showlastpage}{true}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\ProcessOptions\relax
\LoadClass[parskip=half,DIV12]{scrartcl}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{schule}
\RequirePackage[headsepline]{scrpage2}
\pagestyle{scrheadings}

\def\dokName#1{\gdef\@dokName{#1}}
\def\dokNummer#1{\gdef\@dokNummer{#1}}
\def\jahrgang#1{\gdef\@jahrgang{#1}}
\def\fach#1{\gdef\@fach{#1}}
\def\kopfDatum#1{\gdef\@kopfDatum{#1}}
\def\kopfDatumLaenge#1{\gdef\@kopfDatumLaenge{#1}}
\kopfDatumLaenge{3cm}
\def\kopfSuSNameLaenge#1{\gdef\@kopfSuSNameLaenge{#1}}
\kopfSuSNameLaenge{5cm}
\ihead{%
\ifthenelse{\boolean{@kopfSuSName}}{\kopfSuSName\\}{%
    \ifthenelse{\boolean{@kopfDatum}}{\\}{}%
  }%
  \ifthenelse{\isundefined{\@fach}}%
    {?? \@latex@warning@no@line{Das Fach ist nicht angegeben}}%
    {\@fach}%
  \ifthenelse{\isundefined{\@jahrgang}}%
    {}%
    { \@jahrgang}%
}
\chead{%
  \ifthenelse{\boolean{@kopfSuSName}\or\boolean{@kopfDatum}}{\\}{}%
  \ifthenelse{\isundefined{\@dokName}}%
  {?? \@latex@warning@no@line{Der Name des Dokuments ist nicht%
    angegeben}}%
  {\@dokName}%
}
\ohead{%
  \ifthenelse{\boolean{@kopfDatum}}{\KopfDatum\\}{%
   \ifthenelse{\boolean{@kopfSuSName}}{\\}{}%
  }%
  Arbeitsblatt%
  \ifthenelse{\isundefined{\@dokNummer}}
  {}
  { Nr. \@dokNummer}
}
\footerQRLink{}
\cfoot{
\ifthenelse{\boolean{@showlastpage}}{
Seite \thepage\ von \pageref*{letzteseite}
}{
\thepage
}
}
\AtEndDocument{
\label{letzteseite}
\ifthenelse{\not\boolean{@onesitepages}\and\value{page}=1}{
\cfoot{}
}{}
}
\endinput
%%
%% End of file `schuleab.cls'.
