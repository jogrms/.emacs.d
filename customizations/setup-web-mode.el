;; JS/JSX
(add-to-list 'auto-mode-alist '("\\.\\(js[x]?\\|json\\|html\\)\\'" . web-mode))
(setq web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'")))

(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
      (let ((web-mode-enable-part-face nil))
        ad-do-it)
    ad-do-it))

(add-hook 'web-mode-hook
          (lambda ()
            (setq web-mode-code-indent-offset 4)
            (setq web-mode-markup-indent-offset 4)
            (setq web-mode-css-indent-offset 4)
            (setq web-mode-attr-indent-offset 4)
            (add-to-list 'web-mode-indentation-params '("lineup-calls" . nil))

            (setq web-mode-comment-style 2)

            (set-face-attribute 'web-mode-html-tag-face nil :foreground "Pink3")))

;; JSON
(add-to-list 'auto-mode-alist '("\\.eslintrc\\'" . web-mode))
(setq web-mode-content-types-alist '(("json" . "\\.eslintrc\\'")))

;; PHP
(add-to-list 'auto-mode-alist '("\\.\\(php\\|tpl\\|phtml\\)\\'" . web-mode))
