(require 'package)


(require 'cl)



(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ;("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(defun install (required-pkgs)
  (setq pkgs-to-install
      (let ((uninstalled-pkgs (remove-if 'package-installed-p required-pkgs)))
        (remove-if-not '(lambda (pkg) (y-or-n-p (format "Package %s is missing. Install it? " pkg))) uninstalled-pkgs)))

  (when (> (length pkgs-to-install) 0)
    (package-refresh-contents)
   (dolist (pkg pkgs-to-install)
    (package-install pkg))))



(defun add-to-path-with-subdirs (dir)
  (add-to-list 'load-path dir)
  (--each (f-directories dir) (add-to-list 'load-path it)))



(defun kaido-load-context (ctx)
  (require ctx))

(defun kaido-initialize ()
  ;; highlight matching params
  (show-paren-mode 1)
  ;; set kaido font
  (set-face-attribute 'default nil
		    :family kaido-font
                    :height 110
                    :weight 'normal
                    :width 'normal)

  ;; initialize doom-modeline
  
  ;; enable line numbers globally
  (global-linum-mode t) 
  ;; check if new package was added to list
 
  ;;
  ;; install missing packages
  (install pkgs)
  (require 'doom-modeline)
  (doom-modeline-init)
  (load-theme kaido-theme t)
  (add-to-path-with-subdirs kaido-contexts)

  )

;; Enabling CuaMode
(cua-mode t)
(setq cua-auto-tabify-rectangles nil)
(transient-mark-mode 1)
(setq cua-keep-region-after-copy t)


(provide 'kaido)
