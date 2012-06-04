;;
;; encoding configuration
;;

(defun set-encoding-utf-8 ( )
  "set encoding as utf-8"
  (prefer-coding-system 'utf-8)

  (setq-default coding-system 'utf-8)
  (setq-default buffer-coding-system 'utf-8)
  (setq-default buffer-file-coding-system 'utf-8)
  (setq-default file-name-coding-system 'utf-8)

  (setq file-coding-system 'utf-8)
  (setq terminal-coding-system 'utf-8)
  (setq keyboard-coding-system 'utf-8)
  (setq coding-system-for-read 'utf-8)
  (setq coding-system-for-write 'utf-8))


(defun set-encoding-euc-kr ( )
  "set encoding as euc-kr"
  (prefer-coding-system 'euc-kr)

  (setq-default coding-system 'euc-kr)
  (setq-default buffer-coding-system 'euc-kr)
  (setq-default buffer-file-coding-system 'euc-kr)
  (setq-default file-name-coding-system 'euc-kr)

  (setq file-coding-system 'euc-kr)
  (setq terminal-coding-system 'euc-kr)
  (setq keyboard-coding-system 'euc-kr)
  (setq coding-system-for-read 'euc-kr)
  (setq coding-system-for-write 'euc-kr))

(set-encoding-utf-8)

(provide 'my-encoding)
