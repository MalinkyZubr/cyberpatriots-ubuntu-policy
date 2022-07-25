#! /bin/bash

# grep searches in a file

echo "Enter filename to search text from"
read filename

if [[ -f $filename ]]
then
    echo "Enter the text to search"
    read grepvar
    grep -i -n $grepvar $filename # search for the term in the file. -i removes the case sensitivity. It wuill display all lines with the word
    # -n tells it to show the line number. -c tells it to tell us just how many times the word occurs. -v shows all lines that are without the word
else
    echo "$filename doesnt exist!"
fi