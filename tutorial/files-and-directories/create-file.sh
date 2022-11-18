#! /bin/bash

echo "Enter a filename name to check"
read filename

if [[ -f "$filename "]] # -f to check if file exists
then    
    echo "$filename exists, enter the text you want to append"
    read fileText 
    echo "$fileText" >> $file 
    
else   
    echo "$filename does not exist, making file"
    touch $filename
fi