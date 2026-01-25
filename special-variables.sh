#!/bin/bash

echo "All variables passed to this script are $@"
echo "All variables passed to this script are $*"
echo "current working directory is $pwd"
echo "who is running this script: $user"
echo "PID of the script is $$"
sleep 10 &
echo "PID of last command in background is $!"
