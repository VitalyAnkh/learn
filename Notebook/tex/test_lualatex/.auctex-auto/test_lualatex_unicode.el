(TeX-add-style-hook
 "test_lualatex_unicode"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("scrbook" "12pt" "a4paper" "oneside")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("luatexja-fontspec" "match")))
   (TeX-run-style-hooks
    "latex2e"
    "scrbook"
    "scrbook12"
    "luatexja-fontspec"
    "polyglossia"
    "csquotes"
    "xstring"))
 :latex)

