#! /bin/bash

echo "Enter a directory name to check"
read direct

if [ -d "$direct" ] # -d is to check if its a directory
then 
    echo "$direct exists"
else
    echo "not exist, making it"
    mkdir -p $direct
fi