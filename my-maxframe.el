(require 'maxframe)
(defvar my-fullscreen-p t
  "check if fullscreen is on or off")

(defun my-toggle-fullscreen()
  (interactive)
  (setq my-fullscreen-p (not my-fullscreen-p))
  (if my-fullscreen-p
      (restore-frame)
    (maximize-frame)))

(global-set-key (kbd "M-RET") 'my-toggle-fullscreen)