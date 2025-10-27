;;; init-visual.el --- Visual setup -*- lexical-binding: t; -*-

;; Theme
(setq custom-safe-themes t)   ; Treat all themes as safe
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'afterglow)
;; (load-theme 'modus-vivendi)
;; (load-theme 'catppuccin :no-confirm)
;; (setq catppuccin-flavor 'mocha) ;; or 'latte, 'macchiato, or 'mocha
;; (catppuccin-reload)

;; Ultrascroll
(use-package ultra-scroll
  ;:vc (:url "https://github.com/jdtsmith/ultra-scroll") ; if desired (emacs>=v30)
  :init
  (setq scroll-conservatively 3 ; or whatever value you prefer, since v0.4
        scroll-margin 0)        ; important: scroll-margin>0 not yet supported
  :config
  (ultra-scroll-mode 1))

(setq default-frame-alist
      '((font . "Fira Mono-11")))

(add-to-list 'default-frame-alist '(alpha-background . 85))

;; Remove menu and tool bars
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq truncate-lines 'f)

(provide 'init-visual)
;;; init-visual.el ends here
