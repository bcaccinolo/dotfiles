
;; ELPA config

(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
            
(package-initialize)

;; use-package 
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
 
(setq use-package-always-defer t)

