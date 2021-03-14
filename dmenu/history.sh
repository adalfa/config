#!/usr/bin/bash
choice=$( tac ~/.bash_history | dmenu -b -l 20 )
eval  xterm  -e $choice

