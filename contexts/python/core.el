(require 'py-autopep8)
(require 'elpy)


(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

(elpy-enable) ;; enabling elpy

(provide 'python/core)
