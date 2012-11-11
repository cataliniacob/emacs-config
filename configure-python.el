(defun python-run-current-buffer (args)
  "Run python on the current buffer"
  (interactive "sRun python with arguments: ")
  (compile (concat "python " (buffer-file-name) " " args)))

(setq compilation-scroll-output t)

(add-hook 'python-mode-hook
	  (lambda ()
	    (local-set-key "\C-c\C-c" 'python-run-current-buffer)))
