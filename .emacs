;; ibus input method
(require 'ibus)
(add-hook 'after-init-hook 'ibus-mode-on)

;; indent
(global-set-key (kbd "RET") 'newline-and-indent)

;; customize gui
(set-face-attribute 'default nil :height 120)
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; Plugins
(add-to-list 'load-path "~/.emacs.d")

;; color theme
;; http://www.emacswiki.org/emacs/ColorTheme
(require 'color-theme)
(eval-after-load "color-theme"
    '(progn
       (color-theme-initialize)
       (color-theme-hober)))

;; auto-complete
;; http://www.emacswiki.org/emacs/AutoComplete
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
