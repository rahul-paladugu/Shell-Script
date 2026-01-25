#!/bin/bash

# output of commands executed are feeded as input for the variables

# EX - date command gives us current date. So, we can extract time taken to execute the commands

start_time=$(date +%s)
sudo dnf install ansible -y
end_time=$(date +%s)
total_time=$(($end_time-$start_time))
echo "time taken to install Ansible is $total_time"