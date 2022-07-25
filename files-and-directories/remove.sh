#! /bin/bash

echo "Enter a filename name to check"
read filename

if [[ -f "$filename "]] # -f to check if file exists
then    
    rm $filename
    echo "$filename has been removed"
else   
    echo "$filename does not exist, making file"
    touch $filename
fi