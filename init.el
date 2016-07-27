;;--------------------------------------------------------------------
;; Package initializations
;;--------------------------------------------------------------------

; list the packages you want
(setq package-list '(
  py-autopep8
  yaml-mode
  zenburn-theme
  helm
  helm-projectile
  projectile
  project-explorer
  ))

; list the repositories containing them
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))


;; Show line number on left and column number on mode line
;(global-linum-mode t)
;(setq linum-format "%5d \u2502 ")
;(line-number-mode t)
;(setq line-number-display-limit-width 10000)
;(column-number-mode t)


(load-theme 'zenburn t)
