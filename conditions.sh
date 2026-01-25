#!/bin/bash

if [ $env = PROD ]; then
   echo "PROD environment is selected. So right sizing is "t3.large""
elif [ $env = UAT ]; then
   echo "UAT environment is selected. So right sizing is "t3.medium""
elif [ $env = DEV ]; then
   echo "DEV environment is selected. So right sizing is "t3.small""
else
   echo "You have selected incorrect environment, please select PROD or UAT or DEV"
fi