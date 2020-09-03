#!/bin/sh

cd $(dirname "$0")
git clone https://github.com/hniksic/emacs-htmlize
tmux new-session -d -s agendahtml
tmux send-keys -t agendahtml.0 "TERM=xterm emacs -Q -nw -l ./agenda-html.el --eval '(kill-emacs)'" C-m
sleep 4
tmux send-keys -t agendahtml.0 "exit" C-m
