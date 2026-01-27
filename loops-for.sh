#!/bin/bash

red="\e[31m"
green="\e[32m"
bold="\e[1;33m"
reset="\e[0m"
user=$(id -u)

#verify to run script using root

if [ $user -ne 0 ]; then
  echo -e "$red Please run the script using root access. $reset"
  exit 1
fi

#Create logs path
logs_folder="/var/logs/shell"
script_name="$(echo $0 | cut -d "." -f1)"
log="$logs_folder/$script_name.log"
mkdir -p $logs_folder

#Installing multiple packages

echo -e "$bold Please enter the packages to be installed, separated by spaces. $reset"
read packages
start_time=$(date +%s)
for package in $packages
do
 rpm -q $package
 if [ $? -ne 0 ]; then
  dnf install $package -y &>>$log
  echo -e "$green $package has been installed successfully. $reset"
  end_time=$(date +%s)
  echo -e "$bold Time taken for the installation is $(($start_time - $end_time))"
 else
  echo -e "$bold $package was already installed. Please verify manually. Thanks. $reset"
  fi
done