#!/bin/sh

cd $(dirname "$0")
[ ! -d "emacs-htmlize" ] && git clone https://github.com/hniksic/emacs-htmlize
PIPENAME=$(mktemp -ut agenda.XXXXXXXXXX)
mkfifo $PIPENAME
tmux new-session -d -s agendahtml
tmux send-keys -t agendahtml.0 "TERM=xterm-256color emacs -Q -nw -l ./agenda-html.el --eval '(kill-emacs)' && echo done > $PIPENAME" C-m
cat $PIPENAME > /dev/null
rm $PIPENAME
tmux send-keys -t agendahtml.0 "exit" C-m
