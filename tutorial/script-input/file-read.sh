#! /bin/bash

while read line # takes the first argument as a filename
do 
    echo "$line"

done < "${1:-/dev/stdin}" # if the file is not specified then it will take input from the command line