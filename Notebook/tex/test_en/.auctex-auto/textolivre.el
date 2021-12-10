(TeX-add-style-hook
 "textolivre"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("cmbright" "standard-baselineskips") ("biblatex" "backend=biber" "style=abnt" "ittitles" "repeatfields") ("hyperref" "breaklinks=true" "tex4ht") ("cleveref" "english" "french" "spanish" "brazilian") ("xcolor" "table") ("doclicense" "type={CC}" "modifier={by}" "version={4.0}") ("datetime2" "useregional") ("textpos" "absolute") ("abstract" "style") ("enumitem" "inline") ("footmisc" "marginal")))
   (TeX-run-style-hooks
    "latex2e"
    "internationalization"
    "listingconfig"
    "article"
    "art10"
    "cmbright"
    "authblk"
    "polyglossia"
    "translations"
    "amsmath"
    "amsfonts"
    "amssymb"
    "amsthm"
    "csquotes"
    "biblatex"
    "hyperref"
    "cleveref"
    "xcolor"
    "graphicx"
    "doclicense"
    "academicons"
    "setspace"
    "geometry"
    "xstring"
    "etoolbox"
    "xpatch"
    "datetime2"
    "relsize"
    "textpos"
    "adjustbox"
    "longtable"
    "booktabs"
    "tabularx"
    "colortbl"
    "abstract"
    "mfirstuc"
    "titlesec"
    "enumitem"
    "footmisc"
    "totpages"
    "fancyhdr"
    "listings"
    "caption"
    "subcaption")
   (TeX-add-symbols
    '("capitalizekeywords" ["argument"] 1)
    '("acitema" 1)
    '("acitem" 1)
    '("notes" 1)
    '("source" 1)
    '("thead" 1)
    '("keywords" 1)
    '("printifnotempty" 4)
    '("printothertitles" 1)
    '("getothertitle" 1)
    '("othertitle" 1)
    '("articleid" 1)
    '("orcid" 1)
    "articleenumber"
    "more"
    "headrow"
    "runningauthor"
    "journalname"
    "corrauthor"
    "editorname"
    "sectioneditorname"
    "layouteditorname"
    "articledoi"
    "thevolume"
    "thenumber"
    "theyear"
    "printthenumber"
    "langformatdate"
    "receiveddate"
    "accepteddate"
    "publisheddate"
    "sep"
    "dolist"
    "multinamedelim"
    "finalnamedelim"
    "mkbibnamefamily"
    "mkbibnamegiven"
    "mkbibnameprefix"
    "mkbibnamesuffix"
    "acitem")
   (LaTeX-add-labels
    "#1")
   (LaTeX-add-environments
    '("contributors" LaTeX-env-args ["argument"] 0)
    "polyabstract")
   (LaTeX-add-counters
    "cntothertitle"
    "ititle"))
 :latex)

