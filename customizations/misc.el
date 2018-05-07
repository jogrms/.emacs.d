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

;; eg when in a text file, (execute-shell-command-on-buffer "p4 edit %s")
;; will check out the file in perforce
(defun execute-shell-command-on-buffer (shell-command-text)
  (shell-command (format shell-command-text (shell-quote-argument buffer-file-name))))

;; Open in Chrome
(defun chrome-open ()
  (interactive)
  (execute-shell-command-on-buffer "open -a 'Google Chrome' %s"))

