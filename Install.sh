#!/bin/bash

git pull https://github.com/BMNerdHerder/pistreaming.git

sudo apt-get install python-picamera libav-tools git python3-picamera python3-ws4py -y

sudo chmod +x server.py
sudo chmod +x server-service.sh

sudo cp pistreaming.service /lib/systemd/system/pistreaming.service

sudo systemctl enable pistreaming.service
sudo systemctl start pistreaming.service
sudo systemctl status pistreaming.service
