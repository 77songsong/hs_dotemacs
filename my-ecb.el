;;
;; cedet
;;
(load-file "~/.emacs.d/vendor/cedet/common/cedet.el")
(global-ede-mode 1)                      ; Enable the Project management system
(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
(global-srecode-minor-mode 1)            ; Enable template insertion menu


;;
;; ecb
;;
(load-file "~/.emacs.d/vendor/ecb/ecb.el")
(require 'ecb)
(require 'ecb-autoloads)
