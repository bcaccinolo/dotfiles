
;; ELPA config

(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)

            
(package-initialize)

(custom-set-variables
 '(package-selected-packages (quote (counsel ivy cider treemacs markdown-mode magit))))

(cond ((locate-library "projectile")
      (require 'projectile)
      ;(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
      (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
      (projectile-mode +1)
      (setq projectile-completion-system 'ivy)
      ))

(cond ((locate-library "ivy")
       (ivy-mode 1)
       (setq ivy-use-virtual-buffers t)
       (setq ivy-count-format "(%d/%d) ")
       (global-set-key (kbd "M-x") 'counsel-M-x)
       ))

(cond ((locate-library "lsp-java")
       (require 'lsp-java)
       (add-hook 'java-mode-hook #'lsp)
       ))

;; (which-key-mode 1)
;; (powerline-default-theme)
;; (load-theme 'monokai t)

(setq defaults-file (expand-file-name "~/dev/dotfiles/emacs-from-scratch/defaults.el"))
(load-file defaults-file)

(setq custom-file (expand-file-name "~/dev/dotfiles/emacs-from-scratch/custom.el"))
(load-file custom-file)

;; To find what it does a shortcut to
;; (lookup-key (current-global-map) (kbd "C-z"))

;; Binding C-x to <ESC> 
;; (global-set-key (kbd "<ESC>") 'Control-X-prefix)
