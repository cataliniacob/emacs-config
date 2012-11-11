; get the Pymacs directory from the location of the currently executing file
(setq this-dir (file-name-directory load-file-name))

(setq pymacs-dir (concat this-dir "Pymacs"))
(setq rope-dir (concat this-dir "rope"))
(setq ropemode-dir (concat this-dir "ropemode"))
(setq ropemacs-dir (concat this-dir "ropemacs"))

; prepend directories to PYTHONPATH to make the spawned interprer find Pymacs and rope
(setenv "PYTHONPATH" (concat
		      pymacs-dir
		      path-separator
		      rope-dir
		      path-separator
		      ropemode-dir
		      path-separator
		      ropemacs-dir
		      path-separator
		      (getenv "PYTHONPATH")))

; make path to pymacs.el known to Emacs
(add-to-list 'load-path pymacs-dir)

(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)

; load ropemacs
(pymacs-load "ropemacs" "rope-")
