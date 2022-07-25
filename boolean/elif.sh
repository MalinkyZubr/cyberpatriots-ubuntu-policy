#! /bin/bash

count = 10
if (( $ count == 10 )) # if you wanted not equal yuou would replace -eq with -ne. -gt for greater than, -lt for less than. You could also just use angle brackets, but then you have to replace [] with (())
then  # actually boolean operators arer basically the same as python
    echo "The condition is true"

elif (( $ count >= 10 ))
then 
    echo "The count is greater than 10"
else
    echo "The condition is false"
fi # closes the if statement. ALWAYS MUST GO HERE
