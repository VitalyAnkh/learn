(TeX-add-style-hook
 "cover"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("hyperref" "hidelinks")))
   (TeX-run-style-hooks
    "latex2e"
    "ctexart"
    "ctexart10"
    "tikz"
    "ean13isbn"
    "etoolbox"
    "hyperref"))
 :latex)

