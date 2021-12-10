(TeX-add-style-hook
 "test_lualatex"
 (lambda ()
   (setq TeX-command-extra-options
         "-shell-escape")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "fontspec"
    "ctex"))
 :latex)

