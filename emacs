;; remove the text that appears on startup
(setq inhibit-startup-screen t)

;; disable the first extras
(scroll-bar-mode -1)
(tooltip-mode -1)

(set-fringe-mode 10) ;breathing room ?

;; builtin theme that don't hurt
(load-theme 'tango-dark)

;; make ESC quit prompt (as in C-g)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
;; initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("melpa-stable" . "https://stable.melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)

;; one package to rule them all
;; all hail vim 
(unless (package-installed-p 'evil)
  (package-install 'evil))
(require 'evil)
(evil-mode 1)
