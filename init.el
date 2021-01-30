;; Emacs async
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/emacs-async/")
;; Helm
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/helm/") ; facultative when installed with make install
(require 'helm-config)
(helm-mode 1)
(setq helm-ff-skip-boring-files t)

(define-key global-map [remap find-file] 'helm-find-files)
(define-key global-map [remap execute-extended-command] 'helm-M-x)

;; MELPA
;; https://melpa.org/#/getting-started
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Gui Setup
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(setq inhibit-startup-screen t) ;; disable startup screen

;; Themes
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("5a27cbf4736a5f9be00c35f4961efd29ea72f7e959f856e0ab31051547ce4f29" default)))
 '(package-selected-packages (quote (magit inkpot-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(load-theme 'inkpot t)
