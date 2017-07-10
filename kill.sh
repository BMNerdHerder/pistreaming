#!/bin/bash

process=$(pgrep -x "python3")
sudo kill $process
process2=$(pgrep -x ".check.sh")
sudo kill $process2
