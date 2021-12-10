(TeX-add-style-hook
 "sample"
 (lambda ()
   (LaTeX-add-bibitems
    "Figueredo:2009dg")
   (LaTeX-add-environments
    '("contributors" LaTeX-env-args ["argument"] 0)))
 :bibtex)

