;; renn-devel.el
;; This files set the Environment for Software Develomentation to Emacs

``;; flymake mode
;;(require 'flymake)
;;(require 'flymake-cursor)

;; dot-mode.el
;; "C-." dot-mode-excute
;; "C-M-." dot-mode-override
;; "C-c-." dot-mode-copy-to-last-kbd-macro
;;(require 'dot-mode)
;;(add-hook 'find-file-hooks 'dot-mode-on)

;; ----- C

(setq-default c-basic-offset 4
              indent-tabs-mode nil)

(defun my-c-mode-common-hook ()
  (c-set-style "stroustrup")
  (c-set-offset 'case-label '+)
  (c-set-offset 'statement-case-open '+)
  (c-set-offset 'inline-open 0)
  (set-variable 'c-backslash-max-column 100)
  (define-key c-mode-base-map "\C-m" 'c-context-line-break)
  (define-key c-mode-base-map "\C-c\C-c" 'comment-or-uncomment-region)
  )
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

;; ----- Objective-C

(setq auto-mode-alist (cons '("\\.m$" . objc-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.mm$" . objc-mode) auto-mode-alist))

;; Refered from:
;; https://github.com/jmjeong/jmjeong-emacs/blob/master/jmjeong-objc.el
(defun my-header-file-mode-hook ()
  (if (string-equal (file-name-extension buffer-file-name) "h")
	  (let ((filebase (file-name-sans-extension buffer-file-name)))
		(cond
		 ((file-exists-p (concat filebase ".c"))
		  (c-mode))
		 ((file-exists-p (concat filebase ".cpp"))
		  (c++-mode))
		 ((file-exists-p (concat filebase ".cc"))
		  (c++-mode))
		 ((file-exists-p (concat filebase ".m"))
		  (objc-mode))
		 ((file-exists-p (concat filebase ".mm"))
		  (objc-mode))
		 (t
		  (objc-mode))))))

(add-hook 'find-file-hook 'my-header-file-mode-hook)

;; subversion
(require 'psvn)

;; git
(require 'git)
(require 'git-blame)
;;(add-to-list 'load-path "~/.emacs.d/vendor/git-emacs")
;;(require 'git-emacs)

;; cscope
(require 'xcscope)


;; default color theme
(unless (eq window-system nil)
  (progn 
    ;; (zenburn)
    (load-theme 'solarized-light t)))
