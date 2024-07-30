(progn
  (require 'org)
  (dolist (file command-line-args-left)
    (with-current-buffer (find-file-noselect file)
      (progn
        ;; TODO: org-evaluate-time-range for all lines
        (org-table-iterate-buffer-tables)
        (org-update-all-dblocks)
        (org-save-all-org-buffers)
        )
      )
    )
  )
