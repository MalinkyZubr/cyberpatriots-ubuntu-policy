#! /bin/bash

echo "press any key to continue..."

while [ true ]
do 
    read -t 3 -n 1 # after every 3 seconds its going to print a statmenet. This operates on a separate thread? This does not block following
    # statements

if [ $? = 0 ]
then 
    echo "you have terminated the script"
    exit;
else
    echo "waiting for you to press the key"
fi