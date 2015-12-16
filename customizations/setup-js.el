;; javascript / html
;;(add-to-list 'auto-mode-alist '("\\.js$" . js-mode))
;;(add-hook 'js-mode-hook 'subword-mode)
;;(add-hook 'html-mode-hook 'subword-mode)
;;(setq js-indent-level 2)
;;(eval-after-load "sgml-mode"
;;  '(progn
;;     (require 'tagedit)
;;     (tagedit-add-paredit-like-keybindings)
;;     (add-hook 'html-mode-hook (lambda () (tagedit-mode 1)))))
;;
;;
;;;; coffeescript
;;(add-to-list 'auto-mode-alist '("\\.coffee.erb$" . coffee-mode))
;;(add-hook 'coffee-mode-hook 'subword-mode)
;;(add-hook 'coffee-mode-hook 'highlight-indentation-current-column-mode)
;;(add-hook 'coffee-mode-hook
;;          (defun coffee-mode-newline-and-indent ()
;;            (define-key coffee-mode-map "\C-j" 'coffee-newline-and-indent)
;;            (setq coffee-cleanup-whitespace nil)))
;;(custom-set-variables
;; '(coffee-tab-width 2))

;; JS/JSX
(add-to-list 'auto-mode-alist '("\\.js[x]?$" . web-mode))
(setq web-mode-content-types-alist
      '(("jsx" . "\\.js[x]?$")))
(add-hook 'web-mode-hook
          (lambda ()
            (setq web-mode-code-indent-offset 2)
            (setq web-mode-markup-indent-offset 2)
            (setq web-mode-css-indent-offset 2)
            (setq web-mode-attr-indent-offset 2)

            (setq web-mode-comment-style 2)))

