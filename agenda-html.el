;; -*- mode: lisp-interaction-mode -*-

(require 'org)

(load-file "./config.el")
(load-file "./emacs-htmlize/htmlize.el")

;; Taken from https://emacs.stackexchange.com/a/10714
;; Slightly modified
(defun afs/org-replace-link-by-link-description ()
    "Replace an org link by its description or if empty its address."
  (interactive)
  (if (org-in-regexp org-bracket-link-regexp 1)
      (save-excursion
        (let ((remove (list (match-beginning 0) (match-end 0)))
              (description
               (if (match-end 2)
                   (match-string-no-properties 2)
                 (match-string-no-properties 1))))
          (apply 'delete-region remove)
          (insert description)))))


(org-agenda-list)
(org-agenda-goto-today)
(let ((inhibit-read-only t))
  (when agenda-arrows
    (insert agenda-arrow-left)
    (move-end-of-line nil)
    (insert agenda-arrow-right))
  (goto-char (point-min))
  (insert "Generated on "
          (current-time-string) " "
          (cadr (current-time-zone))
          "\n\n"))
(when agenda-html-file
  (org-agenda-write agenda-html-file))
(when agenda-text-file
  (let ((inhibit-read-only t))
    (goto-char (point-min))
    (while (search-forward-regexp org-bracket-link-regexp nil 'noerror)
      (afs/org-replace-link-by-link-description))
    (org-agenda-write agenda-text-file)))
(kill-buffer-and-window)
