(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
(global-set-key "\C-cr" 'remember)

;; GTD
(setq org-default-notes-file (concat "~/gtd/gtd.org"))
(global-set-key "\C-cc" 'org-capture)

(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/gtd/gtd.org" "Tasks")
         "* TODO %?")
        ("n" "Note" entry (file+olp+datetree "~/.notes.org")
         "* %?\nEntered on %U\n  %i\n  %a")))

(provide 'init-local)
