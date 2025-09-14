(add-to-list 'load-path "/nix/store/gpq72i2gzyib12r8apqbvhq47m5nbgfd-emacs-magit-20250826.651/share/emacs/site-lisp/elpa/magit-20250826.651/")
(add-to-list 'load-path "/nix/store/zgllzmv6djlsyn150ysh9sglfbaykrg1-emacs-color-theme-sanityinc-tomorrow-20250401.1320/share/emacs/site-lisp/elpa/color-theme-sanityinc-tomorrow-20250401.1320/")

;; Configure package.el to use packages installed by Nix
;; (require 'package)
(setq package-archives nil)
(package-initialize)

;; Load Magit
(require 'magit)

;; Set up theme
;; (require 'color-theme-sanityinc-tomorrow)
(load-theme 'sanityinc-tomorrow-night t)

;; Start magit-status
(setq magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1)
