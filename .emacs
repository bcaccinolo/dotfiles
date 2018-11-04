;; Access file with C-x r j e
(set-register ?e (cons 'file "~/dev/dotfiles/.emacs"))
(set-register ?n (cons 'file "~/dev/dotfiles/notes.org"))

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
 '(package-selected-packages
   (quote
    (ivy neotree projectile which-key telephone-line monokai-theme org magit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)

;; GUI cognfig
(tool-bar-mode -1)

;; Projectile
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(setq projectile-completion-system 'ivy)
(setq projectile-switch-project-action 'neotree-projectile-action)


;; Neotree config
(global-set-key (kbd "C-x nn") 'neotree-toggle)
(setq neo-theme 'arrow)

;;Which-key config
(which-key-mode)

;; Magit config
(global-set-key (kbd "C-x g") 'magit-status)

;; Org Mode config
;; The following lines are always needed.  Choose your own keys.
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-switchb)

;; Theme config
(load-theme 'monokai t)

;; Telephone line config
(require 'telephone-line)
(telephone-line-mode 1)

;; Switch window
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))
