;;; custom.el --- Customization to prelude defaults
;;
;; Copyright © 2015 Sebastien Beal
;;

;;; Commentary:



;;; Code:

;; rebind C-x p to C-c p p
(global-set-key (kbd "C-x p") 'helm-projectile-switch-project)

;; change command to meta
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)

;; backup directory
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; mac friendly font
(set-face-attribute 'default nil :font "Monaco-12")

;; no scroll bars
(scroll-bar-mode -1)

;; JS
(setq-default js-indent-level 2)

;; add line numbers on the left
;; (global-linum-mode 1)

;; display human friendly info in dired
(setq dired-listing-switches "-alsh")

;; cask
(require 'cask "/usr/local/share/emacs/site-lisp/cask.el")

;; pull in some packages
(prelude-require-packages '(jade-mode
                            virtualenvwrapper
                            ag
                            magit-gitflow
                            dash-at-point
                            markdown-toc
                            helm-projectile
                            helm-ag
                            helm-descbinds
                            helm-cider
                            rainbow-delimiters
                            color-theme-solarized
                            color-theme-sanityinc-tomorrow
                            pyenv-mode
                            nvm
                            paredit
                            clj-refactor))

(add-hook 'cider-repl-mode-hook #'paredit-mode)
(add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode)

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

;; jade
;; Install it globally: npm install -g html2jade
;; M-x html2jade, on the current line or region.
(defun html2jade-line ()
  "Converts the given html snippet to jade and insert it at point."
  (let ((html (current-line)))
    (kill-whole-line)
    (insert (shell-command-to-string (format "echo '%s' | html2jade --bodyless -" html)))
    (previous-line)
    (indent-according-to-mode)))

(defun html2jade-region (beg end)
  "Converts the html of the region to jade."
  (let ((html (buffer-substring-no-properties beg end)))
    (kill-region beg end)
    (insert (shell-command-to-string (format "echo '%s' | html2jade --bodyless -" html)))
    (indent-region beg end)))

(defun html2jade (beg end)
  "Converts the line or the region from html to jade."
  (interactive "r")
  (if (region-active-p)
      (html2jade-region beg end)
    (html2jade-line)))

(provide 'custom)
