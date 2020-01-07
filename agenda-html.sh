#!/bin/sh

cd $(dirname "$0")
TERM=xterm emacs -Q -nw -l ./agenda-html.el --eval '(kill-emacs)'
