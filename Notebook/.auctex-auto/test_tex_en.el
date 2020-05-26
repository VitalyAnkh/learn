(TeX-add-style-hook
 "test_tex_en"
 (lambda ()
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"))
 :latex)

