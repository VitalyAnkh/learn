(TeX-add-style-hook
 "try_latex"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("ctexart" "UTF8")))
   (TeX-run-style-hooks
    "latex2e"
    "ctexart"
    "ctexart10")
   (LaTeX-add-labels
    "eq:2"))
 :latex)

