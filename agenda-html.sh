#!/bin/sh

echo $CWD
TERM=xterm emacs -Q -nw -l ./agenda-html.el --eval '(kill-emacs)'
