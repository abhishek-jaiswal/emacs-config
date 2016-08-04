;; path where settings files are kept
(add-to-list 'load-path "~/.emacs.d/settings")

;; path to where plugins are kept
(setq plugin-path "~/.emacs.d/el-get/")

; define various custom functions
(require 'custom-functions)

;; install dependencies with el-get
(require 'el-get-settings)

; color theme
(add-to-list 'custom-theme-load-path (make-plugin-path "color-theme-solarized"))
(load-theme 'solarized 1)
(setq solarized-termcolors 256)

(require 'faces)
(if (system-is-mac)
    (set-face-attribute 'default nil
            :foundry "apple"
:family "DejaVu_Sans_Mono"))





;---------------------------------------------------------------------
;; Put auto 'custom' changes in a separate file (this is stuff like
;; custom-set-faces and custom-set-variables)
(load
 (setq custom-file (expand-file-name "settings/custom.el" user-emacs-directory))
'noerror)