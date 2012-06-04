;;
;;
;;
(unless (eq window-system nil)
  (progn
    (add-to-list 'load-path "~/.emacs.d/vendor/color-theme")
    (require 'color-theme)
    (color-theme-initialize)))

