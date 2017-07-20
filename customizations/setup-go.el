(setenv "PATH" (concat (getenv "PATH") ":/usr/local/go/bin"))
(setq exec-path (append exec-path '("/usr/local/go/bin")))

(add-hook 'go-mode-hook
          (lambda ()
            (add-hook 'before-save-hook #'gofmt-before-save)
            (setq tab-width 4)
            (setq indent-tabs-mode 1)))
