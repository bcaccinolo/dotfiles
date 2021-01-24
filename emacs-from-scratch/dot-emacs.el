(setq melpa-config-file (expand-file-name "~/dev/dotfiles/emacs-from-scratch/melpa-config.el"))
(load-file melpa-config-file)

(use-package solarized
  :init
  (load-theme 'solarized-light t))

(use-package magit
  :bind (("C-x g" . magit-status)
         ([f5] . magit-status))
  :config
  (setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1))

(use-package ediff
  :config
  (setq ediff-window-setup-function 'ediff-setup-windows-plain))

(cond ((locate-library "projectile")
      (require 'projectile)
      (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
      (global-set-key [f4] 'projectile-switch-project)
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

(cond ((locate-library "which-key")
       (require 'which-key)
       (which-key-mode)
       ))

(cond ((locate-library "evil")
       (require 'evil)
       (evil-mode 1)
       ))

(cond ((locate-library "evil-colemak-basics")
       (require 'evil-colemak-basics)
       (global-evil-colemak-basics-mode)
       ))

(cond ((locate-library "doom-modeline")
       (require 'doom-modeline)
       (doom-modeline-mode 1)
       ))

;; use ibuffer rather than list-buffer
(use-package ibuffer
  :bind (("C-x C-b" . ibuffer)
         ("s-b" . mode-line-other-buffer)))

;; Ag Silver Search - https://agel.readthedocs.io/en/latest/index.html
(use-package ag
  :ensure t)

(use-package dired
  :bind ("C-x d" . dired-jump))

(setq defaults-file (expand-file-name "~/dev/dotfiles/emacs-from-scratch/defaults.el"))
(load-file defaults-file)

(setq my-code-file (expand-file-name "~/dev/dotfiles/emacs-from-scratch/my-code.el"))
(load-file my-code-file)

(setq custom-file (expand-file-name "~/dev/dotfiles/emacs-from-scratch/custom.el"))
(load-file custom-file)
