;;
;; common functions are here
;;

(defun load-my-library (fname)
 "load-library if file(fname) exists..."
 (if (file-exists-p (concat (concat "~/.emacs.d/" fname) ".el"))
     (progn (load-library fname))))
