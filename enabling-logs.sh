#!/bin/bash

red="\e[31m"
yellow="\e[33m"
reset="\e[0m"
user=$(id -u)

logs_folder="/var/logs/shell"
script_name="$(echo $0 | cut -d "." -f1)"
log="$logs_folder/$script_name .log"
mkdir -p $logs_folder &>>$log
if [ "$user" -ne 0 ]; then
  echo -e "$red Please run the script using root access. $reset" | tee -a $log
  exit 1
fi

echo "Please enter the package to be installed" | tee -a $log
read package

validation() {
    if [ "$?" -ne 0 ]; then
      dnf install $package -y &>>$log
    else
      echo "$yellow The given package was already installed in the server $reset" | tee -a $log
    fi
}

validation
