;;; init.el --- Minimal Snappy Emacs Config with Vim and Org -*- lexical-binding: t; -*-

;; Speed up startup
(setq gc-cons-threshold most-positive-fixnum
      file-name-handler-alist nil)

(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold 16777216
                  file-name-handler-alist (default-value 'file-name-handler-alist))))

;; UI settings
(setq inhibit-startup-screen t
      initial-scratch-message ""
      initial-major-mode 'text-mode
      ring-bell-function 'ignore
      use-dialog-box nil
      make-backup-files nil
      auto-save-default nil)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 0)
(blink-cursor-mode 0)

;; Font
(set-face-attribute 'default nil :font "Iosevka Nerd Font Mono-15")

;; Default directory
(setq default-directory "~/")

;; y/n instead of yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; Line numbers
(global-display-line-numbers-mode 1)

;; Native compilation silence (Emacs 29+)
(setq native-comp-async-report-warnings-errors nil)

;; Package setup
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu"   . "https://elpa.gnu.org/packages/")))
(package-initialize)

;; Bootstrap use-package if needed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; Theme (standard load)
(load-theme 'wombat t)

;; Vim keybindings
(use-package evil
  :init
  (setq evil-want-integration t
        evil-want-keybinding nil
        evil-want-C-u-scroll t)
  :config
  (evil-mode 1))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

;; Helpful keybinding hints
(use-package which-key
  :config
  (which-key-mode))

;; Git integration
(use-package magit
  :commands (magit-status))

;; Org-mode enhancements
(use-package org
  :mode ("\\.org\\'" . org-mode)
  :custom
  (org-hide-emphasis-markers t)
  (org-startup-indented t)
  (org-directory "~/org")
  (org-default-notes-file (expand-file-name "inbox.org" org-directory)))

;; Save minibuffer history
(savehist-mode 1)

(provide 'init)
;;; init.el ends here

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
