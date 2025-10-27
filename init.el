;;; init.el --- Emacs entry point -*- lexical-binding: t; -*-
;; Load modular config files

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-core)
(require 'init-minibuffer)
(require 'init-inbuffer)
(require 'init-embark)
(require 'init-help)
(require 'init-visual)

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("5be94f7ac96706fefc19989dd38b1517d56734fd2f5a9bb696373a9fa5b798b9"
     "2f77e78e9c093b0983b1f5fec0064f3902ee417eb645f5db72c5149cd6b5beec"
     "344d4640beeb4bf0e645a26cf0bf3738744b0af4219418ae22af91bbae47b013"
     "c29c27cad967ca27fef29e1b000afb546e1e29462393a4dda5ce107ec575bfc4"
     "2fb486770db422b168fac6f21c5f78d433078eb741da7ee4435838dd635202fe"
     "9651c4699eb39961ecf3294ad400f8ed39e9b5427b208f64a996bc2ec06ea070"
     "22e9fb6e8b5b5d461f724fdebe06a667b61e55f8d11fc56881a2e620d27bc771"
     "38c924e106b4f0f53b4c0f055f24555212b6a7d28153bee8123dfd9a3646fe5b"
     "d36e851fab767ad68cdabbae5784dbe88d090b011dd721eee8e527e21f5422af"
     "f9d423fcd4581f368b08c720f04d206ee80b37bfb314fa37e279f554b6f415e9"
     default))
 '(package-selected-packages
   '(cape catppuccin-theme consult corfu embark-consult helpful ligature
	  magit marginalia orderless ultra-scroll vertico)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
