#! /bin/bash

count = 10
if [ $ count -eq 10 ] # if you wanted not equal yuou would replace -eq with -ne. -gt for greater than, -lt for less than. You could also just use angle brackets, but then you have to replace [] with (())
then 
    echo "The condition is true"

else
    echo "The condition is false"
fi # closes the if statement. ALWAYS MUST GO HERE