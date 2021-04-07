(use-package! org
  :init
  (setq
   org-directory "~/Dropbox/org"
   diary-file (concat org-directory "/diary")))

(use-package! org-agenda
  :init
  (setq
    org-agenda-include-diary              nil
    org-agenda-file-regexp                "\\`[^.].*\\.org'\\|[0-9]+\\.org$"
    org-agenda-timegrid-use-ampm          t
    org-journal-dir                       (concat org-directory "/journal")
    org-journal-enable-agenda-integration t
    org-journal-file-format               "%Y%m%d.org"
    org-journal-time-format               "%l:%M%p")
  (appendq! org-agenda-files (list org-journal-dir)))
