;; Custome gui
(set-face-attribute 'default nil :height 100)
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

;; Runtime dir
(add-hook 'dired-mode-hook 'auto-revert-mode)

;; Markdown-mode hook
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; Org-mode
(global-set-key "\C-c1" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; indent
(setq-default tab-width 4)
;; region indent
(defun my-indent-region (N)
  (interactive "p")
  (if (use-region-p)
      (progn (indent-rigidly (region-beginning) (region-end) (* N 4))
             (setq deactivate-mark nil))
    (self-insert-command N)))
(defun my-unindent-region (N)
  (interactive "p")
  (if (use-region-p)
      (progn (indent-rigidly (region-beginning) (region-end) (* N -4))
             (setq deactivate-mark nil))
    (self-insert-command N)))
(global-set-key (kbd "C->") 'my-indent-region)
(global-set-key (kbd "C-<") 'my-unindent-region)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(display-time-mode t)
 '(inhibit-startup-screen t)
 '(show-paren-mode 1)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ))







(setq package-user-dir "~/.emacs.d/elpa/")
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

;; HTML MODE
;; html-mode-indent
(add-hook 'html-mode-hook
          (lambda ()
            ;; Default indentation is usually 2 spaces, changing to 4.
            ;; And guess the open file indent as well.
            (set (make-local-variable 'sgml-basic-offset) 4)
            (sgml-guess-indent)))

;; AUTO COMPLETE
;; (auto-complete-mode 1)
(require 'auto-complete-config)
(setq auto-complate-directory
      (if load-file-name
          (file-name-directory load-file-name)
        (expand-file-name "~/.emacs.d/elpa/auto-complete-1.4")))
(add-to-list 'ac-dictionary-directories (concat auto-complate-directory "/dict"))
(global-auto-complete-mode 1)

;; YASNIPPET
(yas-global-mode 1)
;; Change Yasnippet keymap to shift+tab,
;; or it will collapse with the auto-complete
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "C-'") 'yas-expand)

;; Multiple Cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-x w e") 'mc/edit-lines)
(global-set-key (kbd "C-x w n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-x w p") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-x w a") 'mc/mark-all-in-region)
(global-set-key (kbd "C-x w C-a") 'mc/mark-all-like-this)
(global-set-key (kbd "C-x w h") 'mc/mark-sgml-tag-pair)
(global-set-key (kbd "C-x w C-w") 'mc/mark-all-words-like-this)
(global-set-key (kbd "C-x w w") 'mc/mark-all-words-like-this-in-defun)

;; Expand Region
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)
