#!/bin/bash

#While loop keeps running as long as the condition is true.

echo "Please enter a number between 1 to 10"
read i

while [ $i -ge 10 ];
 do 
   echo "Print current value is $i"
 done