;;; init-minibuffer.el --- Modern minibuffer completion -*- lexical-binding: t; -*-

(use-package vertico
  :init
  (vertico-mode)
  (setq vertico-cycle t))

(use-package orderless
  :init
  (setq completion-styles '(orderless)
        completion-category-defaults nil
        completion-category-overrides '((file (styles partial-completion)))))

(use-package marginalia
  :init
  (marginalia-mode))

(use-package consult
  :ensure t
  :bind (("C-x b" . consult-buffer)
         ;;("C-x C-f" . consult-find)
         ("M-y" . consult-yank-pop)
         ("M-g g" . consult-goto-line)
         ("M-g i" . consult-imenu)
         ("C-s" . consult-line)
         ("C-M-l" . consult-imenu))
  :hook (completion-list-mode . consult-preview-at-point-mode))

(provide 'init-minibuffer)
;;; init-minibuffer.el ends here
