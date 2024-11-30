#!/usr/bin/bash
choice=$( grep ^ssh ~/.bash_history |uniq | dmenu -b -l 20)
eval  xterm  -e $choice 

