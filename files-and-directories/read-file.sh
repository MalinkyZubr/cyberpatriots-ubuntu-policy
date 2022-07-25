#! /bin/bash

echo "Enter a filename name to check"
read filename

if [[ -f "$filename "]] # -f to check if file exists
then    
    while IFS='' read -r line
    do
        echo "$line"
    done
    done < $filename 
else   
    echo "$filename does not exist, making file"
    touch $filename
fi