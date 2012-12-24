(add-to-list 'load-path "~/.emacs.d/vendor/markdown-mode")

(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)

(setq auto-mode-alist 
      (cons '("\\.text" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist 
      (cons '("\\.md" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist 
      (cons '("\\.mdt" . markdown-mode) auto-mode-alist))

(defun markdown-preview-file ()
  "run Marked on the current file and revert the buffer"
  (interactive)
  (shell-command 
   (format "open -a /Applications/Marked.app %s" 
           (shell-quote-argument (buffer-file-name))))
  )
(global-set-key "\C-cm" 'markdown-preview-file)
