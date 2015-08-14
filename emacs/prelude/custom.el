;;; custom.el --- Customization to prelude defaults
;;
;; Copyright © 2015 Sebastien Beal
;;

;;; Commentary:



;;; Code:

;; change command to meta
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)

;; mac friendly font
(set-face-attribute 'default nil :font "Monaco-12")

;; no scroll bars
(scroll-bar-mode -1)

;; add line numbers on the left
;; (global-linum-mode 1)

;; display human friendly info in dired
(setq dired-listing-switches "-alsh")

;; cask
(require 'cask "/usr/local/share/emacs/site-lisp/cask.el")

;; pull in some packages
(prelude-require-packages '(jade-mode virtualenvwrapper ag ein
                                      magit-gitflow dash-at-point
                                      markdown-toc color-theme-solarized
                                      color-theme-sanityinc-tomorrow
                                      pyenv-mode nvm))

;; init magit-gitflow
(require 'magit-gitflow)
(add-hook 'magit-mode-hook 'turn-on-magit-gitflow)
(define-key magit-gitflow-mode-map (kbd "C-z") (kbd "C-f"))

;; pyenv
(pyenv-mode)

;; virtualenvwrapper
(setq venv-location "~/Dev")

;; iPython Notebook Support
(require 'ein)

(provide 'custom)
