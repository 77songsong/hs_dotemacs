;; USAGE
;; 1) Create ~/.emacs, write these:
;;    (add-to-list 'load-path "~/.emacs.d")
;;    (load-library "dotemacs")

(add-to-list 'load-path "~/.emacs.d/vendor")
(add-to-list 'load-path "~/.emacs.d/autoinstall")

;; system-type: gnu, gnu/linux, darwin, ms-dos, windows-nt, cygwin, ...
(cond
 ((eq system-type 'darwin) (load-library "my-osx"))
 ((eq system-type 'windows-nt) (load-library "my-win32"))
 ((eq system-type 'gnu/linux) (load-library "my-linux")))

;; load default functions
(load-library "my-func")

;; load configurations :)
(load-my-library "my-encoding")
(load-my-library "my-korean")
(load-my-library "my-common")
(load-my-library "my-autopair")
(load-my-library "my-uniquify")
(load-my-library "my-gui")
(load-my-library "my-ido")
(load-my-library "my-autoinstall")
;;(load-my-library "renn-shell")
;;(load-my-library "renn-css")
;;(load-my-library "renn-python")
;;(load-my-library "renn-html")
;;(load-my-library "renn-js")
;;(load-my-library "renn-magit")
(load-my-library "my-autocomplete")
(load-my-library "my-maxframe")
(load-my-library "my-colortheme")
;;(load-my-library "my-ecb")
(load-my-library "my-devel")

(cd "~/")
