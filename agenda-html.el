;; -*- mode: lisp-interaction-mode -*-

(require 'org)

(load-file "./config.el")
(load-file "./emacs-htmlize/htmlize.el")

(org-agenda-list)
(org-agenda-goto-today)
(let ((inhibit-read-only t))
  (insert "--> ")
  (move-end-of-line nil)
  (insert " <--"))
(org-agenda-write agenda-html-file)
(kill-buffer-and-window)
