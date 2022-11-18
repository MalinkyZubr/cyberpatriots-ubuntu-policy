#! /bin/bash

# awk is a scripting language to organize data and write reports
# its a utility to write small programs to define small patterns to be searched in a document
# its like regular expressions
# we can do 3 things: scan a file by line, split each line into different fields, perform actions on matched lines
# what is this useful for? it can transform data files and produce formatted output

# we will print a file

echo "Enter filename to search text from"
read filename

if [[ -f $filename ]]
then
    read word
    awk '/$word/ {print $2,$3}' $filename # everything we want to run will go inside the single lines. The // specifies it to search for a word. 
    # each file has columns, so the $2 specifies it to return the word in teh 2nd column for each line the word is encountered. You can print
    # several by separating htem with a comma
else
    echo "$filename doesnt exist!"
fi