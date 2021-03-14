#!/bin/bash
HOSTS=`cat ~/.bash_history | grep rdesktop | sort |uniq  | awk '{ print $3 }' | sort | uniq | grep -v '&' | grep -v '-'`
echo "<openbox_pipe_menu>"
for host in $HOSTS; do
	echo "<item label=\"$host\">"
	echo "<action name=\"Execute\"><execute>rdesktop $host</execute></action>"
	echo "</item>"
done
echo "</openbox_pipe_menu>"
touch ~/stop.file
