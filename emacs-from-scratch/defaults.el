

;; Defaults settings

(message "### Loading defaults")

(global-set-key (kbd "C-e") 'previous-line)

;; word wrapping
(setq visual-line-mode t)

;; GUI config
(blink-cursor-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(toggle-scroll-bar -1) 
(setq-default indent-tabs-mode nil)
(set-face-attribute 'default nil :height 100)
(electric-pair-mode 1)
(show-paren-mode 1)

(global-set-key (kbd "C-z") nil) ;; no suspend-frame here :)

;; font
(add-to-list 'default-frame-alist '(font . "Hack 14" ))
(set-face-attribute 'default t :font "Hack 14" )

;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist  `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
