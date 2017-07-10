#!/bin/bash
while true; do
if pgrep -x "python3" > /dev/null
    then
    echo "Running"
else
    echo "Stopped"
    /home/pi/pistreaming/server.py &
fi
sleep 30
done
