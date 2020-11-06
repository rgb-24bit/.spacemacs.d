;;; funcs.el --- my-org layer funcs file for Spacemacs.

;; (defun clocktable-by-tag/shift-cell (n)
;;   (let ((str ""))
;;     (dotimes (i n)
;;       (setq str (concat str "| ")))
;;     str))

;; (defun clocktable-by-tag/insert-tag (params)
;;   (let ((tag (plist-get params :tags)))
;;     (insert "|--\n")
;;     (insert (format "| %s | *Tag time* |\n" tag))
;;     (insert "|--\n")
;;     (let ((total 0))
;;       ;;      (mapcar
;;       (mapc
;;        (lambda (file)
;;          (let ((clock-data (with-current-buffer (find-file-noselect file)
;;                              (org-clock-get-table-data (buffer-name) params))))
;;            (when (> (nth 1 clock-data) 0)
;;              (setq total (+ total (nth 1 clock-data)))
;;              ;; (insert (format "| | File *%s* | %.2f |\n"
;;              ;;                 (file-name-nondirectory file)
;;              ;;                 (/ (nth 1 clock-data) 60.0)))
;;              (dolist (entry (nth 2 clock-data))
;;                (insert (format "| | %s%s | %s %.2f |\n"
;;                                (org-clocktable-indent-string (nth 0 entry))
;;                                (nth 1 entry)
;;                                (clocktable-by-tag/shift-cell (nth 0 entry))
;;                                (/ (nth 3 entry) 60.0)))))))
;;        `(,buffer-file-name))
;;       (save-excursion
;;         (re-search-backward "*Tag time*")
;;         (org-table-next-field)
;;         (org-table-blank-field)
;;         (insert (format "*%.2f*" (/ total 60.0)))))
;;     (org-table-align)))

;; (defun org-dblock-write:clocktable-by-tag (params)
;;   (insert "| Tag | Headline | Time (h) |\n")
;;   ;; (insert "|     |          | <r>  |\n")
;;   (let ((tags (plist-get params :tags)))
;;     (mapcar (lambda (tag)
;;               (setq params (plist-put params :tags tag))
;;               (clocktable-by-tag/insert-tag params))
;;             tags)))

(defun org-delete-element ()
  "Delete org element."
  (interactive)
  (org-mark-element)
  (kill-region (region-beginning) (region-end)))
