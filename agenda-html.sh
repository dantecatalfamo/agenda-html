#!/bin/sh

cd $(dirname "$0")
tmux new-session -d -s agendahtml
tmux send-keys -t agendahtml.0 "TERM=xterm emacs -Q -nw -l ./agenda-html.el --eval '(kill-emacs)'" C-m
tmux send-keys -t agendahtml.0 "exit" C-m
