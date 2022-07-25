#! /bin/bash

# for substitution and text analysis in files

echo "Enter filename to substitute sed from"
read filename

if [[ -f $filename ]]
then
    sed 's/i/I/g' $filename > newfile.txt # s stands for substitution. mode/letter to replace/letter to replace with/. nly replaces first occurence
    # to replace all occurences, you have to put /g at the end
else
    echo "$filename doesnt exist!"
fi