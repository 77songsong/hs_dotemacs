;;
;; Configurations for Mac OS X
;;
 
;; Command key is meta key
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;; Encodings
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;;(setq inhibit-startup-echo-area-message t)

;;
;; Window style emacs
;;
(unless (eq window-system nil)
 (set-face-font 'default "Monaco-12")

 ;; Nanum Gothic font for Korean
 (set-fontset-font "fontset-default" '(#x1100 . #xffdc)
		   '("NanumGothic" . "iso10646-1"))
 ;; Unicode User Area
 (set-fontset-font "fontset-default" '(#xe0bc . #xf66e)
		   '("NanumGothic" . "iso10646-1"))

 ;; Chinese
 (set-fontset-font "fontset-default" 'kana
		   '("AppleGothic" . "unicode-bmp"))
 (set-fontset-font "fontset-default" 'han
		   '("AppleGothic" . "unicode-bmp"))

 ;; Options for scales each font
 (setq face-font-rescale-alist
       '((".*nanum.*" . 1.2)))
 )

;;
;; Termianl style emacs
;;
;;(when (eq window-system nil)
;; (defun mac-copy()
;;  (shell-command-to-string "pbpaste"))

;; (defun mac-paste (text &optional push)
;;  (let ((process-connection-type nil))
;;   (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
;;    (process-send-string proc text)
;;    (process-send-eof proc))))

;; (setq interprogram-cut-function 'mac-paste)
;; (setq interprogram-paste-function 'mac-copy))