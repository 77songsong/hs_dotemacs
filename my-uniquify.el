;;
;; It makes unique file name for same file name.
;;
(require 'uniquify)

(setq uniquify-buffer-name-style 'post-forward
      uniquify-separator ":"
      uniquify-after-kill-buffer-p t)