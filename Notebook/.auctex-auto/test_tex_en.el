(TeX-add-style-hook
 "test_tex_en"
 (lambda ()
   (setq TeX-command-extra-options
         "-shell-escape")
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("ctexart" "utf8")))
   (TeX-run-style-hooks
    "latex2e"
    "ctexart"
    "ctexart10"
    "ctex"))
 :latex)

