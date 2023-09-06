#!/usr/bin/env bash

emacs -Q --batch --eval " \
    (progn \
      (require 'org) \
      (dolist (file command-line-args-left) \
        (with-current-buffer (find-file-noselect file) \
          (progn
            (org-table-iterate-buffer-tables)
            (org-save-all-org-buffers)
          )
        )
      )
    )" README.org
