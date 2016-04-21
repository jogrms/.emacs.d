;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; shell scripts
(setq-default sh-basic-offset 2)
(setq-default sh-indentation 2)

;; No need for ~ files when editing
(setq create-lockfiles nil)

;; Go straight to scratch buffer on startup
(setq inhibit-startup-message t)

;; Line length limit
(require 'whitespace)
(setq whitespace-line-column 100)
(setq whitespace-style '(face lines-tail))
(global-whitespace-mode +1)
