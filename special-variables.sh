#!/bin/bash

echo "All variables passed to this script are $@"
echo "All variables passed to this script are $*"
echo "current working directory is $PWD"
echo "who is running this script: $USER"
echo "PID of the script is $$"
sleep 10 &
echo "PID of last command in background is $!"
