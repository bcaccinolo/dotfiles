(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

;; Registers config
;; Access file with C-x r j e
(set-register ?e (cons 'file "~/dev/dotfiles/.emacs"))
(set-register ?n (cons 'file "~/dev/dotfiles/notes.org"))
(set-register ?l (cons 'file "~/dev/pad/logs.201811.org"))
(defun open-dot-emacs () 
  (interactive)
  (jump-to-register ?e))
(global-set-key  (kbd "C-c C-e") 'open-dot-emacs)

;; GUI config
(blink-cursor-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1) 
(setq-default indent-tabs-mode nil)
(set-face-attribute 'default nil :height 140)
(electric-pair-mode 1)
(show-paren-mode 1)
(global-set-key (kbd "C-z") nil) ;; no suspend-frame here :)

;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist  `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

;; Melpa config
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  (add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)) 
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(custom-safe-themes
   (quote
    ("bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(helm-ag-fuzzy-match t)
 '(helm-follow-mode-persistent t)
 '(package-selected-packages
   (quote
    (yasnippet helm-ag multiple-cursors diredfl helm-projectile god-mode org-bullets perspective yaml-mode solarized-theme markdown-mode company inf-ruby json-mode ivy neotree projectile which-key telephone-line monokai-theme org magit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; ag / helm-ag config
(global-set-key (kbd "s-F") 'helm-do-ag)

;; god-mode
(require 'god-mode)
;; (god-mode-all)
;;(global-set-key (kbd "<escape>") 'god-local-mode)
(global-set-key (kbd "<escape>") 'god-mode-all)
;;(setq god-exempt-major-modes nil)
;;(setq god-exempt-predicates nil)
(add-to-list 'god-exempt-major-modes 'magit-mode)

(defun my-god-mode-update-cursor ()
  (setq cursor-type (if (or god-local-mode buffer-read-only) 'box 'bar)))
(add-hook 'god-mode-enabled-hook 'my-god-mode-update-cursor)
(add-hook 'god-mode-disabled-hook 'my-god-mode-update-cursor)

(defun my-god-mode-update-mode-line ()
  (let ((limited-colors-p (> 257 (length (defined-colors)))))
    (if god-local-mode
        (progn
          (message "activated")
          (set-face-background 'mode-line "#AEFFA5")
          (set-face-background 'mode-line-inactive "#A4ABA7"))
      
        (progn 
          (message "not activated")
          (set-face-background 'mode-line "#9ACCD1")
          (set-face-background 'mode-line-inactive "#A4ABA7"))
)))
(add-hook 'god-mode-enabled-hook 'my-god-mode-update-mode-line)
(add-hook 'god-mode-disabled-hook 'my-god-mode-update-mode-line)

;; Perspective config
(persp-mode +1)
(global-set-key  (kbd "s-g") 'persp-switch)

;; Projectile config
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
;; (define-key projectile-mode-map (kbd "s-p p") 'projectile-command-map)
(global-set-key  (kbd "s-p") 'helm-projectile)

(setq projectile-completion-system 'ivy)
(setq projectile-switch-project-action 'neotree-projectile-action)
(setq projectile-project-search-path '("~/dev/" "~/valipat/"))

;; Neotree config
(global-set-key (kbd "C-x nn") 'neotree-toggle)
(setq neo-theme 'arrow)

;;Which-key config
(which-key-mode)
(which-key-enable-god-mode-support)

;; Magit config
(global-set-key (kbd "C-x C-m") 'magit-status)

;; Org Mode config
;; The following lines are always needed.  Choose your own keys.
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; Theme config
;; (load-theme 'monokai t)
(load-theme 'whiteboard t)

;; Telephone line config
;; (require 'telephone-line)
;; (telephone-line-mode 1)

;; Switch window
(when (fboundp 'windmove-default-keybindings) (windmove-default-keybindings))

;; Yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;; Dired config
(when (string= system-type "darwin")       
  (setq dired-use-ls-dired nil))
(add-hook 'dired-hook (lambda () (diredfl-global-mode)))

;; Insert current date
(defun insert-current-date ()
  (interactive)
  (insert (shell-command-to-string "echo -n $(date +'%a %d %b %Y')")))


;; To find what it does a shortcut to
;; (lookup-key (current-global-map) (kbd "C-z"))

;; Binding C-x to <ESC> 
;; (global-set-key (kbd "<ESC>") 'Control-X-prefix)

