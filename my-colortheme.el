;;
;;
;;
(unless (eq window-system nil)
  (progn
    (add-to-list 'load-path "~/.emacs.d/vendor/color-theme")
    (require 'color-theme)
    (color-theme-initialize)))

;; zenburn color theme
(require 'zenburn)

;; solarized color theme
(add-to-list 'load-path "~/.emacs.d/vendor/emacs-color-theme-solarized")
(require 'color-theme-solarized)
