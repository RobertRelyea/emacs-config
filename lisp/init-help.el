;;; init-help.el --- Enhanced help and docs -*- lexical-binding: t; -*-

(use-package helpful
  :bind
  ([remap describe-function] . helpful-function)
  ([remap describe-command] . helpful-command)
  ([remap describe-variable] . helpful-variable)
  ([remap describe-key] . helpful-key))

(provide 'init-help)
;;; init-help.el ends here
