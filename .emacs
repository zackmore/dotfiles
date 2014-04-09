;; ibus input method
;; (require 'ibus)
;; (add-hook 'after-init-hook 'ibus-mode-on)

;; mode hook
;; (add-hook 'text-mode-hook 'turn-on-auto-fill)
;; (add-hook 'markdown-mode-hook 'turn-on-auto-fill)

(add-hook 'dired-mode-hook 'auto-revert-mode)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(global-set-key "\C-c1" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; indent
(global-set-key (kbd "RET") 'newline-and-indent)
;; (setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; custome gui
(set-face-attribute 'default nil :height 100)
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

;; horizontal split window
;; (setq split-height-threshold nil)
;; (setq split-width-threshold 0)


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(show-paren-mode 1)
 '(display-time-mode t)
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; plugins
(add-to-list 'load-path "~/.emacs.d")

;; color theme
;; http://www.emacswiki.org/emacs/ColorTheme
(require 'color-theme)
(eval-after-load "color-theme"
    '(progn
       (color-theme-initialize)
       (color-theme-clarity)))

;; auto-complete
;; http://www.emacswiki.org/emacs/AutoComplete
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(put 'scroll-left 'disabled nil)
