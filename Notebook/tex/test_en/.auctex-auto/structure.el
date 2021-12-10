(TeX-add-style-hook
 "structure"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("classicthesis" "nochapters" "beramono" "eulermath" "pdfspacing" "dottedtoc") ("fontenc" "T1") ("inputenc" "utf8")))
   (TeX-run-style-hooks
    "classicthesis"
    "arsclassica"
    "fontenc"
    "inputenc"
    "graphicx"
    "enumitem"
    "lipsum"
    "subfig"
    "amsmath"
    "amssymb"
    "amsthm"
    "varioref")
   (LaTeX-add-environments
    '("contributors" LaTeX-env-args ["argument"] 0)
    "definition"
    "theorem"))
 :latex)

