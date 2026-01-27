#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]; then
  echo "Please use root access to install any softwares"
  # exit 1 # This will notify shell script to stop execution.
fi

# Below is the function to re-use block of code when required

Validate() {
    rpm -q ansible
    if [ "$1" -ne 0 ]; then
     dnf install $2 -y
     echo "Installation of $2 is successful."
    else
     echo "Installation of $2 is failed. Please check the logs"
    fi
}

Validate $? ansible