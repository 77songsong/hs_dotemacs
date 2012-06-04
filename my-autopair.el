(require 'autopair)

;;(autopair-global-mode 1)
(defun turn-on-autopair() (autopair-mode 1))
(add-hook 'lisp-mode-hook 'turn-on-autopair)
(add-hook 'emacs-list-mode-hook 'turn-on-autopair)
(add-hook 'c-mode-hook 'turn-on-autopair)
(add-hook 'c++-mode-hook 'turn-on-autopair)
(add-hook 'python-mode-hook 'turn-on-autopair)
(add-hook 'java-mode-hook 'turn-on-autopair)

(setq autopair-autowrap t)

(provide 'my-autopair)