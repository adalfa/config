#!/usr/bin/bash
choice=$( grep ^ssh ~/.bash_history | dmenu -b -l 20)
eval  xterm  -e $choice 

