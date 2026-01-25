#!/bin/bash

#Variables in shell, name=value(num or text)

course=devops
hours=60
echo "we found a free $course learning videos of duration $hours hours"

#Passing variables as arguments

# project=$1
# env=$2
# echo "Deployment will be performed on $project in $env environment."

#Read the input into vaibales

# echo "Please enter the PIN number"
# read pinnumber
# echo "entered $pinnumber is incorrect"

#Read the input into variables by masking

echo "Please enter valid password for user: ec2-user"
read -s password
echo "entered password $password is incorrect"