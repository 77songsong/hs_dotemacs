(add-to-list 'load-path "~/.emacs.d/vendor/markdown-mode")

(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)
(setq auto-mode-alist 
      (cons '("\\.text" . markdown-mode) auto-mode-alist))
