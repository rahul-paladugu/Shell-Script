#!/bin/bash

red="\e[31m"
green="\e[32m"
yellow="\e[33m"
reset="\e[0m"
user=$(id -u)

#Verify if the user has root access to run the script

if [ "$user" -ne 0 ]; then
  echo -e "$red Please run the script using root access. $reset" | tee -a $log
  exit 1
fi

#Create a logs directory to store the log

logs_folder="/var/logs/shell"
script_name="$(echo $0 | cut -d "." -f1)"
mkdir -p $logs_folder 
log="$logs_folder/$script_name .log"
#Requesting user to provide package details

echo -e "$green Please enter the package to be installed $reset" | tee -a $log
read package

#Validation Function

validation() {
    if [ "$?" -ne 0 ]; then
      dnf install $package -y &>>$log
    else
      echo -e "$yellow The given package was already installed in the server $reset" | tee -a $log
    fi
}

validation
