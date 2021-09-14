; (setq org-agenda-start-on-weekday nil) ;; Current date at top of agenda
; (setq org-agenda-span 'fortnight) ;; How much to show. Can be day, week, month, year, or any number of days.
; (setq org-icalendar-exclude-tags '("noexport")) ;; Exclude headlines with these tags from iCal export
(setq org-icalendar-use-scheduled 'event-if-todo)
(setq org-agenda-files '("~/Org/Personal.org" "~/Org/Work.org"))
(setq agenda-html-file "~/agenda.html")
(setq agenda-text-file nil)
(setq agenda-ics-file "~/agenda.ics")
(setq agenda-ics-span 'month)
(setq agenda-arrows t)
(setq agenda-arrow-left "== ")
(setq agenda-arrow-right " =============================")
