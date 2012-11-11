(defun django-rename-buffer ()
  "Rename current buffer based on the current file name and its directory.
Suitable for Django.
If we're editing plugins/sense/models.py the file will be named models_sense."
  (interactive)
  (rename-buffer (concat (file-name-sans-extension ; strip .py to get models
			  (file-name-nondirectory ;from full path to models.py
			   (buffer-file-name)))
			 "_"
			 (file-name-nondirectory ; strip /
			  (directory-file-name ; get directory name ending with /
			   (file-name-directory (buffer-file-name)))))))
  
