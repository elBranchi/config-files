;; -*- coding: utf-8 -*-

;; Needed at work:

(setq url-proxy-services
   '(("no_proxy" . "^\\(localhost\\|10.*\\)")
     ("http" . "10.49.1.1:8080")
     ("https" . "10.49.1.1:8080")))

(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))



(setq package-enable-at-startup nil)
(package-initialize)




(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'scroll-left 'disabled nil)
(setq-default tab-width 4)
(cd "~")
(add-to-list 'load-path "~/.emacs.d/lisp")
(if (boundp 'custom-theme-load-path)
    (add-to-list 'custom-theme-load-path "~/.emacs.d/lisp/themes")
    (add-to-list 'load-path "~/.emacs.d/lisp/themes")
)

(setq ediff-window-setup-function 'ediff-setup-windows-plain)
(setq inhibit-splash-screen t)
(setq redisplay-dont-pause t)
(toggle-truncate-lines)

(desktop-save-mode 1)
(defalias 'yes-or-no-p 'y-or-n-p)
(setq version-control 'never)
(tool-bar-mode 0)
(menu-bar-mode 0)
(column-number-mode)
(show-paren-mode)

;; (setq read-quoted-char-radix 16)
;; (require 'fill-column-indicator)
;; ;; Per activar-ho : fci-mode
;; ;; Es té en compte la variable fill-column i fci-rule-column
;; (setq fci-always-use-textual-rule t)
;; (setq fci-rule-character 9618)
;; ;; (require 'dired+)

;; (require 'color-theme)
;; (require 'zenburn)
;; (color-theme-zenburn)
;; (require 'color-theme-tomorrow)
;; (color-theme-tomorrow--define-theme night-eighties)
(if 
	(fboundp 'load-theme)
	(load-theme 'solarized-dark t)
  (progn (require 'color-theme-solarized)
		 (color-theme-solarized-dark))
)

;(require 'color-theme-solarized)
;(color-theme-solarized-dark)
;(load-theme 'solarized-dark t)

;;CONFIGURACIÓ MODE PL/SQL
(setq auto-mode-alist
	  (append
	   '(("\\.\\(p\\(?:k[bg]\\|ls\\)\\|sql\\)\\'" . plsql-mode))
	   auto-mode-alist))

;; (add-hook 'sql-mode-hook 
;; 		  '(lambda () (setq indent-tabs-mode nil)))
;; (autoload 'plsql-mode "plsql" nil t)


;; ;; CONFIGURACIÓ MODE JAVASCRIPT
;; (add-to-list 'auto-mode-alist '("\\.js\\'" . javascript-mode))
;; (autoload 'javascript-mode "javascript" nil t)

;(iswitchb-mode) ;Selecció de buffer escrivint qualsevol part del nom

(require 'windmove)
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings));; Activació de navegació entre finestres mitjançant shift-fletxes



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("27470eddcaeb3507eca2760710cc7c43f1b53854372592a3afa008268bcf7a75" default)))
 '(make-backup-files nil)
 '(package-selected-packages (quote (powershell)))
 '(safe-local-variable-values (quote ((encoding . utf-8))))
 '(savehist-mode t nil (savehist))
 '(tab-width 4)
 '(version-control (quote never)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#002b36" :foreground "#839496" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 110 :width normal :foundry "outline" :family "Source Code Pro")))))


(setq default-frame-alist
      '((width . 129) (height . 38)
		(left . 0) (top . 0))
      )
;; (setq initial-frame-alist
;; 	  '((width . 135) (height . 36)
;; 		(left . 0) (top . 24))
;;       )


;; (require 'helm-config)
;; (helm-mode 1)


(defun recarrega-buffer ()
  "Recarrega buffer sense demanar confirmació"
  (interactive)
  (progn 
	(revert-buffer nil 't)
	(redraw-display)
	)
  )
(global-set-key [f5] 'recarrega-buffer)
(global-set-key [\C-tab] 'completion-at-point)
(global-set-key [\C-\+] 'completion-at-point)
(global-set-key [\C-\M-tab] 'indent-region)
(global-set-key (kbd "C-.") 'other-window)
(global-set-key (kbd "M-DEL") 'undo)

;; Coses a mirar/recordar
;; which-function-mode
;; (require 'url-util)
;; (url-unhex-string "ENC%20-%20PORTO%20VELHO")
;; "ENC - PORTO VELHO"
;; (url-hexify-string "ENC - PORTO VELHO")
;; "ENC%20-%20PORTO%20VELHO"
