#!/usr/bin/bash
choice=$(grep ^name ~/.remmina/* |cut --delimiter=: -f 2|uniq| cut --delimiter== -f 2 |dmenu -b -l 20)
file=$(grep -l $choice ~/.remmina/*)
remmina -c $file
