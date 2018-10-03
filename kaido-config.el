(setq user-init-file (or load-file-name (buffer-file-name)))
(setq user-emacs-directory (file-name-directory user-init-file))


(package-initialize)

      
;; list of packages
(setq pkgs '
      (       
       cider
       elpy
       dash
       f
       go-mode
       go-imports
       dashboard
       doom-modeline
       all-the-icons
       neotree
       doom-themes
       use-package
       spacemacs-theme
       spaceline-all-the-icons
       page-break-lines
       exec-path-from-shell
       projectile
       dracula-theme))

;; set-font, well basically set's the font
(setq kaido-font "Hack")

;;Kaido vars
(setq kaido-home (getenv "KAIDO_HOME"))
(setq kaido-lib (concat kaido-home "/lib"))
(setq kaido-contexts (concat kaido-home "/contexts"))
(setq kaido-theme 'doom-one)

;; loading up
(add-to-list 'load-path kaido-lib)
(require 'kaido)
;;initialize kaido editor


(kaido-initialize)

(kaido-load-context 'python/core) ;;python context load
