;;(require 'hideshow)
;;(setq hs-minor-mode-hook nil)

(dynamic-completion-mode t)

;; hide scroll bar
(when window-system
 (scroll-bar-mode -1))

;; hide splash screen
(setq inhibit-splash-screen t)

(setq next-line-add-newlinex nil)
(setq track-eol nil)

;; mouse scroll
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)
(setq hscroll-step 1)
(setq scroll-step 1)
(setq scroll-conservatively 10000)

;;(setq sentence-end-double-space nil)

;; Ask yes or no when you quit emacs
(setq confirm-kill-emacs 'y-or-n-p)

;; no backup
(setq make-backup-files nil)
(setq delete-auto-save-files t)

;; tab configuration
(setq tab-width 4)
(setq-default indent-tabs-mode nil)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80))

;; bell sound
(setq visible-bell nil)
(setq ring-bell-function 'ignore)
        
;; minibuffer's history length
(setq history-length 1000)
(savehist-mode t)

(setq recentf-max-saved-items 1000)

;; 
(setq ediff-window-setup-function 'ediff-setup-windows-plain)
(setq diff-switches '("-u" "-p" "-N"))

;;
(setq-default case-fold-search t)

;;
(auto-image-file-mode t)

;;
(delete-selection-mode nil)

;; display current function name
(which-function-mode t)

;;
(global-font-lock-mode t)

;;
(transient-mark-mode t)

;; show parenthesis
(show-paren-mode t)
(setq show-paren-style 'parenthesis)

;; configuration status bar
(line-number-mode 1)
(column-number-mode 1)
(global-visual-line-mode t)

;; highlight current line
;(global-hl-line-mode t)

;(fset 'yes-or-no-p 'y-or-n-p)

;; auto reload opened file
;(global-auto-revert-mode t)


