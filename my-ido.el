(require 'ido)

(global-set-key (kbd "C-x b") 'ido-switch-buffer)
(global-set-key [(ctrl tab)] 'ido-switch-buffer)
(global-set-key [(ctrl shift tab)] 'ido-switch-buffer)

(add-hook 'ido-setup-hook
          (lambda()
           (define-key ido-buffer-completion-map [(ctrl tab)] 'ido-next-match)
           (define-key ido-buffer-completion-map [(ctrl shift tab)] 'ido-prev-match)))

(setq ido-confirm-unique-completion t)
(setq ido-enable-flex-matching t)
(setq ido-max-work-file-list 30)
(setq ido-max-work-directory-list 50)

(ido-mode t)
(ido-everywhere t)
(icomplete-mode t)
