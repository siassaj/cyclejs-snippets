(defvar cyclejs-snippets-root
  (file-name-directory (or load-file-name (buffer-file-name))))

(defun cyclejs-snippets-init ()
  "Load cyclejs-snippets."
  (let ((dir (expand-file-name "snippets" cyclejs-snippets-root)))
    (when (boundp 'yas-snippet-dirs)
      (add-to-list 'yas-snippet-dirs dir t))
    (yas-load-directory dir)))

(eval-after-load 'yasnippet '(cyclejs-snippets-init))

(provide 'cyclejs-snippets)
