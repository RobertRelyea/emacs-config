;;; init-core.el --- Core setup -*- lexical-binding: t; -*-

(require 'package)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu"   . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

;; Save minibuffer and completion history
(use-package savehist
  :init
  (savehist-mode))

(setq inhibit-startup-screen t)
(global-display-line-numbers-mode)

(provide 'init-core)
;;; init-core.el ends here
