#!/bin/sh

HOSTS=`cat ~/.ssh/known_hosts | awk '{ print $1 }' | awk  -F , '{ print $1 }'`

echo "<openbox_pipe_menu>"
for host in $HOSTS; do
	echo "<item label=\"$host\">"
	echo "<action name=\"Execute\"><execute>xterm -e ssh $host</execute></action>"
	echo "</item>"
done
echo "</openbox_pipe_menu>"
