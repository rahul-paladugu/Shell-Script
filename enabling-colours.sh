#!/bin/bash

red="\e[31m"
green="\e[32m"
yellow="\e[33m"
bold="\e[1;33m"
reset="\e[0m"
user=$(id -u)
if [ "$user" -ne 0 ]; then
  echo -e "$bold To install any packages you need root access $reset"
  echo -e "$red Please run the script using root access $reset"
  exit 1
fi

echo "Please type the package to be installed"
read package

validation() {
    if [ "$?" -ne 0 ]; then
      dnf install $package -y
      echo -e "$green Successfully installed $package . $reset"
    else
      echo -e "$yellow Given package $package was already installed in the server. $reset"
    fi

}
dnf list installed $package
validation $package

