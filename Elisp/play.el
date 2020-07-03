(setq my-string
"为天地立心，为生民立命。
为往圣继绝学，为万世开太平。
fuck you")
(setq my-string2
      "")
(when (posframe-workable-p)
  (posframe-show
   "test"
   :string my-string2
   :background-color "black"
   :foreground-color "yellow"
   :internal-border-width 2
   :internal-border-color "red"
   ))
