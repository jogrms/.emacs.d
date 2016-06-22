(require 'sql)

;; Default to PostgreSQL
(sql-set-product "postgres")

(add-hook 'sql-interactive-mode-hook
  (lambda () (sql-set-sqli-buffer-generally)))

(defun upcase-sql-keywords ()
  (interactive)
  (save-excursion
    (dolist (keywords sql-mode-postgres-font-lock-keywords)
      (goto-char (point-min))
      (while (re-search-forward (car keywords) nil t)
        (goto-char (+ 1 (match-beginning 0)))
        (when (eql font-lock-keyword-face (face-at-point))
          (backward-char)
          (upcase-word 1)
          (forward-char))))))
