(require 'sql)

;; Default to PostgreSQL
(sql-set-product "postgres")

(add-hook 'sql-interactive-mode-hook
  (lambda () (sql-set-sqli-buffer-generally)))
