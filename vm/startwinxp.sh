#!/bin/bash
VBoxVRDP -s "win2k12" -v on &
sleep 5
#xfreerdp -k it localhost
remmina -c $HOME/.remmina/group_rdp_win_localhost.remmina
