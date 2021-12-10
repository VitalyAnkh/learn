\ProvidesClass{textolivre}[2021/09/02 Texto Livre class]
% set default language
\def\tl@mainlanguage{portuguese}\def\tl@mainvariant{brazilian}%
\def\tl@secondlanguage{english}\def\tl@secondvariant{american}
\DeclareOption{portuguese}{%
  % do nothing - use default
}
\DeclareOption{english}{%
  \def\tl@mainlanguage{english}\def\tl@mainvariant{american}%
  \def\tl@secondlanguage{portuguese}\def\tl@secondvariant{brazilian}}
\DeclareOption{spanish}{%
  \def\tl@mainlanguage{spanish}\def\tl@mainvariant{spanish}%
  \def\tl@secondlanguage{portuguese}\def\tl@secondvariant{brazilian}%
  \def\tl@thirdlanguage{english}\def\tl@thirdvariant{american}}
\DeclareOption{french}{%
  \def\tl@mainlanguage{french}\def\tl@mainvariant{french}%
  \def\tl@secondlanguage{portuguese}\def\tl@secondvariant{brazilian}%
  \def\tl@thirdlanguage{english}\def\tl@thirdvariant{american}}
\DeclareOption{german}{%
  \def\tl@mainlanguage{german}\def\tl@mainvariant{german}%
  \def\tl@secondlanguage{portuguese}\def\tl@secondvariant{brazilian}%
  \def\tl@thirdlanguage{english}\def\tl@thirdvariant{american}}
\ProcessOptions\relax
\ExecuteOptions{}
\LoadClass{article}

% fonts
\RequirePackage[standard-baselineskips]{cmbright}

\RequirePackage{authblk}

\RequirePackage{polyglossia}
\setmainlanguage[variant=\tl@mainvariant]{\tl@mainlanguage}
\setotherlanguage[variant=\tl@secondvariant]{\tl@secondlanguage}
\ifdefined\tl@thirdlanguage%
  \setotherlanguage[variant=\tl@thirdvariant]{\tl@thirdlanguage}
\fi

\RequirePackage{translations}
\input{internationalization.tex}

\renewcommand\Authand{ \GetTranslation{and} }
\renewcommand\Authands{ \GetTranslation{and} }

\RequirePackage{amsmath,amsfonts,amssymb,amsthm}
\RequirePackage{csquotes}
\RequirePackage[backend=biber,style=abnt,ittitles,repeatfields]{biblatex}
\DeclareLanguageMapping{brazil}{brazil-apa}
\renewcommand{\bibfont}{\small}

\PassOptionsToPackage{hyphens}{url}
\ifdefined\HCode%
\RequirePackage[breaklinks=true,tex4ht]{hyperref}
\else
\RequirePackage[breaklinks=true]{hyperref}
\fi
\renewcommand{\UrlBreaks}{\do\/\do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j\do\k\do\l\do\m\do\n\do\o\do\p\do\q\do\r\do\s\do\t\do\u\do\v\do\w\do\x\do\y\do\z\do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L\do\M\do\N\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X\do\Y\do\Z}
\hypersetup{colorlinks,allcolors=TLDarkGreen}
\urlstyle{same}

\RequirePackage[english,french,spanish,brazilian]{cleveref}

\RequirePackage[table]{xcolor}
\RequirePackage{graphicx}

\definecolor{TLLightGreen}{RGB}{184,198,36} %#B8C624
\definecolor{TLDarkGreen}{RGB}{56,52,49}    %#383431
\definecolor{TLDarkGray}{RGB}{153,153,153}  %#999999
\ifdefined\HCode%
  \newcommand{\orcid}[1]{\href{https://orcid.org/#1}{\scriptsize orcid}}
\else % Don't execute this code with TeX4ht
  \RequirePackage[type={CC},modifier={by},version={4.0}]{doclicense}
  \RequirePackage{academicons}
  \newcommand{\orcid}[1]{\href{https://orcid.org/#1}{\textcolor{TLLightGreen}{\protect\aiOrcid}}}
\fi

\RequirePackage{setspace}
\setstretch{1.15}

\RequirePackage{geometry}
\geometry{a4paper,
  left=4.75cm,top=1.75cm,bottom=2.4cm,right=1.5cm,
  footskip=1.5\baselineskip,footnotesep=\baselineskip,headheight=21\p@,headsep=\baselineskip}

\RequirePackage{xstring}
\RequirePackage{etoolbox,xpatch}

\def\runningauthor#1{\def\@runningauthor{#1}}
\def\journalname#1{\def\@journalname{#1}}
\def\corrauthor#1{\def\@corrauthor{#1}}
\def\editorname#1{\def\@editorname{#1}}
\editorname{}
\def\sectioneditorname#1{\def\@sectioneditorname{#1}}
\sectioneditorname{}
\def\layouteditorname#1{\def\@layouteditorname{#1}}
\layouteditorname{}
\def\articledoi#1{\def\@articledoi{#1}\articleid{\articleenumber}}
\def\@articleid{}
\newcommand{\articleenumber}{\StrRight{\@articledoi}{5}}
\newcommand{\articleid}[1]{%
 \ifstrempty{#1}%
 {\def\@articleid{e\articleenumber}}% if #1 is empty
 {\def\@articleid{e#1}}% if #1 is not empty
}
\def\thevolume#1{\def\@thevolume{#1}}
\def\thenumber#1{\def\@thenumber{#1}}
\thenumber{}
\def\theyear#1{\def\@theyear{#1}}

\def\printthenumber{\setbox0=\hbox{\@thenumber\unskip}\ifdim\wd0=0pt
%
\else
|\enskip{n.\@thenumber}\enskip
\fi
}

\RequirePackage[useregional]{datetime2}
\def\langformatdate#1{%
    \iflanguage{english}{#1}{%
    \iflanguage{french}{\MakeLowercase{#1}}{%
    \iflanguage{german}{#1}{%
    \iflanguage{spanish}{\MakeLowercase{#1}}{%
    \iflanguage{portuguese}{\MakeLowercase{#1}}{#1}%
    }}}}}
\def\receiveddate#1{\def\@receiveddate{\langformatdate{#1}}}
\def\accepteddate#1{\def\@accepteddate{\langformatdate{#1}}}
\def\publisheddate#1{\def\@publisheddate{\langformatdate{#1}}}

\renewcommand{\Authfont}{\large\bfseries}
\renewcommand{\Affilfont}{\small\itshape\mdseries}
\renewcommand\AB@authnote[1]{\textsuperscript{#1}}
\renewcommand\AB@affilnote[1]{\textsuperscript{#1}}
\setlength{\affilsep}{\baselineskip}

\RequirePackage{relsize}

% polytitle BEGIN - multiple titles % requires: etoolbox, xpatch, relsize
\newcounter{cntothertitle}
\newcommand\othertitle[1]{%
  \stepcounter{cntothertitle}%
  \csdef{othertitle\thecntothertitle}{#1}}
\newcommand\getothertitle[1]{%
  \csuse{othertitle#1}}

\newcounter{ititle}
\newcommand\printothertitles[1]{%
  \setcounter{ititle}{0}%
  \whileboolexpr
    { test {\ifnumcomp{\value{ititle}}{<}{#1}} }%
    {\stepcounter{ititle}\Large\smaller[\the\numexpr\value{ititle}-1\relax]%
        \getothertitle{\theititle}\par%
    }
  }
% polytitle END

\RequirePackage[absolute]{textpos}
\RequirePackage{adjustbox}
\RequirePackage{longtable,booktabs,tabularx,colortbl}

% information box BEGIN % requires: textpos, adjustbox, doclicense
\newcommand{\@insert@metadata}{%
  \begin{textblock*}{3.3cm}[0,1](1cm,\dimexpr\paperheight-\Gm@bmargin\relax)
  \scriptsize\raggedright%
  \setlength{\parskip}{\baselineskip}%
  \setlength{\parindent}{\z@}%
  \more@metadata\par
  \end{textblock*}
}

\newcommand{\@cover@logo}{%
  \includegraphics[width=0.9\textwidth]{logo.pdf}\\
  \minsizebox{0.9\textwidth}{1ex}{Linguagem e Tecnologia}
}

\newcommand{\printifnotempty}[4]{%
  \sbox0{#3}%
  \ifdim\wd0=0pt
    {}% if #3 is empty
  \else
    {\textcolor{TLDarkGreen}{\bfseries #1: }{#2}#3#4}% if #2 is not empty
  \fi
}

\newcommand{\more@metadata}{%
  \@cover@logo\par
  \printifnotempty{DOI}{}{\@articledoi}{\par}
  \printifnotempty{\GetTranslation{correspondingauthor}}{\\}{\@corrauthor}{\par}
  \printifnotempty{\GetTranslation{editedby}}{\\}{\@editorname}{\par}
  \printifnotempty{\GetTranslation{sectioneditor}}{\\}{\@sectioneditorname}{\\}
  \printifnotempty{\GetTranslation{layouteditor}}{\\}{\@layouteditorname}{\par}
  \printifnotempty{\GetTranslation{received}}{\\}{\@receiveddate}{\\}
  \printifnotempty{\GetTranslation{accepted}}{\\}{\@accepteddate}{\\}
  \printifnotempty{\GetTranslation{published}}{\\}{\@publisheddate}{\par}
  \GetTranslation{license}
}
% information box END

% ABSTRACT
\RequirePackage[style]{abstract}
% polyabstract - BEGIN
\newenvironment{polyabstract}
{\noindent\textcolor{TLLightGreen}{\rule{\linewidth}{1.0pt}}\par}
{\vspace{-1.5ex}\noindent\textcolor{TLLightGreen}{\rule{\linewidth}{.5pt}}\par}
% polyabstract - END

\RequirePackage{mfirstuc}
% KEYWORDS % requires: mfirstuc
\def\sep{\unskip. }%
\newcommand{\capitalizekeywords}[2][\sep]{%
  \def\dolist##1{\expandafter\@dolist##1#1\@eol}%
  \def\@dolist##1#1##2\@eol{%
    \begingroup\setbox0=\hbox{##1\unskip}\ifdim\wd0=0pt\endgroup\else\endgroup\ignorespaces\makefirstuc{##1}\unskip\sep\fi%
    \ifx\@eol##2\@eol\else\@dolist##2\@eol\fi}%
  \dolist{#2}%
}

\AtBeginDocument{% BEGIN
  % TITLE
  \renewcommand{\@maketitle}{%
    \ifdefined\HCode\else% Don't execute this code with TeX4ht
      \@insert@metadata
    \fi
    \noindent\begin{minipage}{0.9\linewidth}
    \raggedright\setstretch{1.0}
    {\LARGE\bfseries{\@title}\par}
    {\printothertitles{\thecntothertitle}}
    \vskip\baselineskip
    \@author\par
    \end{minipage}\bigskip\normalfont\normalsize%
  }

  % ABSTRACT % requires: abstract, mfirstuc
  \renewcommand{\abstitlestyle}[1]{{\large\bfseries #1\par}}
  \setlength{\absleftindent}{\z@}
  \setlength{\absrightindent}{\absleftindent}
  \preto{\abstract}{%
    \setlength{\parindent}{\z@}%
    \newcommand{\keywords}[1]{%
    \emph{\GetTranslation{keywords}}: \capitalizekeywords{#1}\par
    }
  }
  \appto{\abstract}{%
    \setlength{\parindent}{\z@}%
    \setlength{\parskip}{1em}%
    \vskip-\parskip%
    \noindent\ignorespaces%
  }

}% END \AtBeginDocument


\RequirePackage{titlesec}
% SECTION STYLE % requires: titlesec
\titleformat{\section}{\large\bfseries}{\hspace*{-1em}\makebox[\z@][r]{\thesection}}{1em}{}
\titleformat{\subsection}{\large}{\hspace*{-1em}\makebox[\z@][r]{\thesubsection}}{1em}{}
\titleformat{\subsubsection}{\normalsize}{\hspace*{-1em}\makebox[\z@][r]{\thesubsubsection}}{1em}{}
\titlespacing*{\section}{\z@}{\baselineskip}{\z@}
\titlespacing*{\subsection}{\z@}{\baselineskip}{\z@}
\titlespacing*{\subsubsection}{\z@}{\baselineskip}{\z@}
\setcounter{secnumdepth}{3}

\RequirePackage[inline]{enumitem}
% LISTS % requires: enumitem
\setlist{leftmargin=*,nosep}

\RequirePackage[marginal]{footmisc}
% FOOTNOTE % requires: footmisc
\setlength{\footnotemargin}{-1em}
\pretocmd{\@makefntext}{%
  \renewcommand{\@makefnmark}{\thefootnote}
}{}{}

\RequirePackage{totpages}
\RequirePackage{fancyhdr}
% HEADERS and FOOTERS % requires: fancyhdr, totpages
\fancyhf{}
\renewcommand{\footrulewidth}{1.5\p@}
\renewcommand{\headrule}{}
\preto{\footrule}{\begingroup\color{TLLightGreen}}
\appto{\footrule}{\endgroup}
\fancyfootoffset[L]{3.25cm}
\fancyfoot[R]{\small\thepage/\pageref*{TotPages}}
\fancyfoot[L]{\small\emph{\@runningauthor}\enskip|\enskip\@journalname\enskip|\enskip{Belo Horizonte}\enskip|\enskip{v.\@thevolume}\enskip\printthenumber|\enskip\@articleid\enskip|\enskip\@theyear}
\pagestyle{fancy}
\fancypagestyle{plain}{%
  \fancyhf{}
  \renewcommand{\footrule}{}
  \fancyfoot[R]{\small\thepage/\pageref*{TotPages}}
}

% LISTING
\crefname{lstlisting}{lista}{listas}
\Crefname{lstlisting}{Lista}{Listas}
\RequirePackage{listings}
\renewcommand\lstlistingname{Lista}
\input{listingconfig}

\RequirePackage{caption,subcaption}
\captionsetup*{singlelinecheck=false,font={small},labelfont={bf,color=TLDarkGreen},labelsep=period}
\captionsetup*[table]{position=top}
\captionsetup*[sub]{labelfont=small,justification=centering}
\newcommand{\headrow}{\rowcolor{TLDarkGray}}
\newcommand{\thead}[1]{\bfseries #1\rule[-1.2ex]{0pt}{2em}}
\renewcommand{\arraystretch}{1.2}

% SOURCE - requires: caption
\newcommand{\source}[1]{
 \captionsetup{skip=0.5ex,position=b}%
 \caption*{\textcolor{TLDarkGreen}{\textit{\GetTranslation{source}}} {#1}}
}

% NOTE - requires: caption
\newcommand{\notes}[1]{
 \captionsetup{skip=0ex,position=b}%
 \caption*{\textcolor{TLDarkGreen}{\textit{\GetTranslation{note}} {#1}}}
}

% ADD SOURCE TO LISTING - BEGIN
\lst@Key{source}{}{\def\lst@source{#1}}
\let\orig@lst@MakeCaption=\lst@MakeCaption
\def\lst@MakeCaption#1{%
    \orig@lst@MakeCaption#1%
    \ifx b#1%
        \ifx\lst@source\@empty\else
            \noindent
            \hspace{-13pt}\normalfont\textcolor{TLDarkGreen}{\textit{\GetTranslation{source}}}\lst@source\expandafter%
            \vskip\belowcaptionskip
        \fi
    \fi
}
% ADD SOURCE TO LISTING - END


% CITATIONS

% BEGIN \citefirstlastauthor
% reference: https://tex.stackexchange.com/questions/581792/how-to-write-the-authors-full-name-and-avoid-style-formatting-given-by-biblatex/581838#581838
\DeclareCiteCommand{\citefirstlastauthor}
  {\DeclareNameAlias{labelname}{given-family}%
   \let\multinamedelim\multinamedelimorig
   \let\finalnamedelim\finalnamedelimorig
   \let\mkbibnamefamily\origmkbibnamefamily
   \let\mkbibnamegiven\origmkbibnamegiven
   \let\mkbibnameprefix\origmkbibnameprefix
   \let\mkbibnamesuffix\origmkbibnamesuffix
   \boolfalse{citetracker}%
   \boolfalse{pagetracker}%
   \usebibmacro{prenote}}%
  {\ifciteindex%
     {\indexnames{labelname}}%
     {}%
   \printtext[bibhyperref]{\printnames{labelname}}}%
  {\multicitedelim}%
  {\usebibmacro{postnote}}%
% END \citefirstlastauthor

% BEGIN \posscite
% reference: https://tex.stackexchange.com/questions/592713/how-to-make-author-name-appear-in-small-caps-when-using-biblatex-abnt/592726#592726
\DeclareNameWrapperFormat{textlabelname:poss}{#1's}
\DeclareFieldFormat{shorthand:poss}{%
  \ifnameundef{labelname}{#1's}{#1}}
\DeclareFieldFormat{citetitle:poss}{\mkbibemph{#1}'s}
\DeclareFieldFormat{label:poss}{#1's}
\newrobustcmd*{\posscitealias}{%
  \AtNextCite{%
    \DeclareNameWrapperAlias{labelname}{textlabelname:poss}%
    \DeclareFieldAlias{shorthand}{shorthand:poss}%
    \DeclareFieldAlias{citetitle}{citetitle:poss}%
    \DeclareFieldAlias{label}{label:poss}}}
\newrobustcmd*{\posscite}{%
  \posscitealias%
  \textcite}
\newrobustcmd*{\Posscite}{\bibsentence\posscite}
\newrobustcmd*{\posscites}{%
  \posscitealias%
  \textcites}
% END \posscite


% BEGIN contributors environment - requires: xparse, enumitem
\newenvironment{contributors}[1][]{%
\section*{\fontsize{10}{12}\selectfont \GetTranslation{authorcontributions}}\ifx#1\@empty\else\label{#1}\fi
\begin{singlespace}
\fontsize{8}{10}\selectfont\noindent
\begin{itemize*}[before=\unskip{\hspace{-1ex}},itemjoin={\unskip{;}},after={\unskip{.}},mode=unboxed,label={}]
}
{
\end{itemize*}
\normalsize
\end{singlespace}
}

\newcommand\acitem[1]{\IfValueT{#1}{\GetTranslation{#1}\let\acitem\acitema}}
\newcommand\acitema[1]{\IfValueT{#1}{, \GetTranslation{#1}}}

\NewDocumentCommand{\authorcontribution}{m >{\SplitArgument{13}{,}}o}{%
  \item \textbf{#1}: {\ProcessList {#2} {\acitem}}
}
% END contributors environment

% 'Tabla' instead of 'Cuadro'
\IfStrEq{\languagename}{spanish}{%
 \gappto\captionsspanish{\renewcommand{\tablename}{Tabla}}%
 \AfterEndPreamble{%
  \crefname{table}{tabla}{tablas}\Crefname{table}{Tabla}{Tablas}}%
}{}
