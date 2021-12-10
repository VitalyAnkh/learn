(TeX-add-style-hook
 "test_en"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("scrartcl" "10pt" "a4paper" "oneside" "headinclude" "footinclude" "BCOR5mm" "")))
   (TeX-run-style-hooks
    "latex2e"
    "structure"
    "scrartcl"
    "scrartcl10")
   (TeX-add-symbols
    "thefootnote")
   (LaTeX-add-labels
    "eq:refname2"
    "fig:gallery"
    "tab:label"
    "fig:ipsum"
    "fig:esempio")
   (LaTeX-add-environments
    '("contributors" LaTeX-env-args ["argument"] 0))
   (LaTeX-add-bibliographies
    "sample.bib")
   (LaTeX-add-index-entries
    "Escher, M.~C."))
 :latex)

