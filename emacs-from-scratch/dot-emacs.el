
(setq melpa-config-file (expand-file-name "~/dev/dotfiles/emacs-from-scratch/melpa-config.el"))
(load-file melpa-config-file)

(cond ((locate-library "projectile")
      (require 'projectile)
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

(cond ((locate-library "which-key")
       (require 'which-key)
       (which-key-mode)
       ))

(cond ((locate-library "doom-modeline")
       (require 'doom-modeline)
       (doom-modeline-mode 1)
       ))

(cond ((locate-library "solarized-theme")
       (load-theme 'solarized-dark t)
      ))

(setq defaults-file (expand-file-name "~/dev/dotfiles/emacs-from-scratch/defaults.el"))
(load-file defaults-file)

(setq my-code-file (expand-file-name "~/dev/dotfiles/emacs-from-scratch/my-code.el"))
(load-file my-code-file)

(setq custom-file (expand-file-name "~/dev/dotfiles/emacs-from-scratch/custom.el"))
(load-file custom-file)
