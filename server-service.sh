#!/bin/bash

if [[ $1 = "start" ]]; then
    while true; do
        if pgrep -x "python3" > /dev/null
    then
        exit
    else
        /home/pi/pistreaming/server.py > /dev/null &
    fi
    sleep 30
    done
elif [[ $1 = "stop" ]]; then
    process=$(pgrep -x "python3")
    sudo kill $process
    process2=$(pgrep -x "server-service.sh")
    sudo kill $process2
fi