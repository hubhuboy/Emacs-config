;; Syntax highlighting in the document.org
(require 'org)
(setq org-src-fontify-natively t)

;; config org日程mode
(setq org-agenda-files '("~/org"))
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c c") 'org-capture)

(provide 'init-org)
