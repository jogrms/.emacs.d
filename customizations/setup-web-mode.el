;; JS/JSX
(add-to-list 'auto-mode-alist '("\\.\\(js[x]?\\|json\\|html\\)\\'" . web-mode))
(setq web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'")))

(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
      (let ((web-mode-enable-part-face nil))
        ad-do-it)
    ad-do-it))

(defun set-indent-offset (offset)
  (setq web-mode-code-indent-offset offset)
  (setq web-mode-markup-indent-offset offset)
  (setq web-mode-css-indent-offset offset)
  (setq web-mode-attr-indent-offset offset))

(defun hook-common ()
  (add-to-list 'web-mode-indentation-params '("lineup-calls" . nil))
  (setq web-mode-comment-style 2)
  (set-face-attribute 'web-mode-html-tag-face nil :foreground "Pink3"))

(defun hook-default ()
  (hook-common)
  (set-indent-offset 2))

(defun hook-tt ()
  (hook-common)
  (set-indent-offset 4))

(defun hook-root ()
  (let ((file-name (buffer-file-name)))
    (cond
     ((string-match "/tt/website/" file-name) (hook-tt))
     (t (hook-default)))))

(add-hook 'web-mode-hook 'hook-root)

;; JSON
(add-to-list 'auto-mode-alist '("\\.eslintrc\\'" . web-mode))
(setq web-mode-content-types-alist '(("json" . "\\.eslintrc\\'")))

;; PHP
(add-to-list 'auto-mode-alist '("\\.\\(php\\|tpl\\|phtml\\)\\'" . web-mode))
