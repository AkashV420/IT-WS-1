#!/bin/bash
arg="$1"
for(( i=1; i<="$arg"; i++ ))
do
echo "#$i work"
sleep 2s

if [[ $i%4 -eq 0 ]]
then	
	echo "long break"
	notify-send -u critical -i "notifications-message-IM" 'Notifications !!' 'Break time for 15 minutes'
        sleep 5s
else
	echo "#$i break time"
	notify-send -u critical -i "notifications-message-IM" 'Notifications !!' 'Break time for 5 minutes'
	sleep 3s
fi
done
echo "Finished"
notify-send -u critical -i "notifications-message-IM" 'Notifications' 'Process Finished'
