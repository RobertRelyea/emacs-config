;;; init-inbuffer.el --- In-buffer completion setup -*- lexical-binding: t; -*-

(use-package corfu
  :init
  (global-corfu-mode)
  (setq corfu-auto t
        corfu-auto-delay 0.1
        corfu-auto-prefix 1
        corfu-cycle t
        corfu-preview-current nil)
  :config
  ;; Popup info is now build in:
  (corfu-popupinfo-mode 1)
  (setq corfu-popupinfo-delay 0.5)
  :bind
  (:map corfu-map
        ("TAB" . corfu-next)
        ([tab] . corfu-next)
        ("S-TAB" . corfu-previous)
        ([backtab] . corfu-previous)))

(use-package cape
  :init
  (add-to-list 'completion-at-point-functions #'cape-file)
  (add-to-list 'completion-at-point-functions #'cape-dabbrev)
  (add-to-list 'completion-at-point-functions #'cape-keyword)
  (add-to-list 'completion-at-point-functions #'cape-elisp-block)
  (global-set-key (kbd "M-/") #'cape-dabbrev))

(provide 'init-inbuffer)
;;; init-inbuffer.el ends here
