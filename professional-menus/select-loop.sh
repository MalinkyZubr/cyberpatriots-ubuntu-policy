#! /bin/bash

cars=(BMW MERCEDES TESLA ROVER TOYOTA)
select car in $cars # waits for you to select one of these on command line
do # select by index
    case $car in $cars 
        echo "$car SELECTED";; 
    *) # default option
        echo "ERROR! Please select between the options 1..5"
    esac
done