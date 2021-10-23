(TeX-add-style-hook
 "unknoting_number_paper"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "inputenc"
    "fontenc"
    "graphicx"
    "grffile"
    "longtable"
    "wrapfig"
    "rotating"
    "ulem"
    "amsmath"
    "textcomp"
    "amssymb"
    "capt-of"
    "hyperref"
    "breakcites"
    "mathscr"
    "apacite"
    "paralist")
   (TeX-add-symbols
    "itemize"
    "description"
    "enumerate")
   (LaTeX-add-labels
    "sec:orga3d8449"
    "sec:org74f135a"
    "sec:orgb28444b"
    "sec:org6a6736a"
    "sec:org0b25654"
    "sec:org337781f"
    "sec:orgee58db9"
    "sec:org3fd543e"
    "sec:orgc905e5b"
    "sec:orgcbb1999"
    "sec:org6883a35"
    "sec:org0c11008"
    "sec:org465d285"
    "sec:orgf8eb15a"
    "sec:org49f5b9d"
    "sec:org5da9430"
    "sec:orgd462e8e"
    "sec:orgc36748b"
    "sec:org34ea201"
    "sec:orgb95a5be"
    "sec:org1a4a929"
    "sec:org95d6b71"
    "sec:org10387a8"
    "sec:orga1ff992"
    "sec:org586677e"
    "sec:org67db6df"
    "sec:orgd40950c"
    "sec:org953d8e2"
    "sec:org8269e40"
    "sec:org238c3e9"
    "sec:org49facd5"
    "sec:org8559573"
    "sec:orgefaff49"
    "sec:org005be85"
    "sec:org4c039a6"
    "sec:org0cd5f11"
    "sec:orgaef9ae0"
    "sec:org12adf63"
    "sec:orgd600c18"
    "sec:orge9551ce"
    "sec:org68b4c78"
    "sec:org6aeaa2e"
    "sec:orgc1c00f9"
    "sec:org495eaf6"
    "sec:org40f3425"
    "sec:org567caae")
   (LaTeX-add-bibliographies
    "library"))
 :latex)

