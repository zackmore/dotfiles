;; ibus input method
(require 'ibus)
(add-hook 'after-init-hook 'ibus-mode-on)

;; indent
(global-set-key (kbd "RET") 'newline-and-indent)

(menu-bar-mode -1)
(tool-bar-mode -1)
(set-scroll-bar-mode nil)
