#! /bin/bash

echo "enter 1st string"
read st1

echo "enter string 2"
read st2

if [ "$st1" \< "$st2" ]
then 
    echo "$st1 is smaller than $st2"
elif [ "$st2" \< "$st1" ]
then 
    echo "$st2 is smaller than $st1"
else
    echo " $st1 is the same size as $st2 "
fi

c=$st1$st2 # this is a string concatenation
echo c

echo ${st1^} # make lowercase
echo ${st1^^} # make uppercase
echo ${st1^l} # capitalize the selected letter
