#! /bin/bash

number=0

until (( $number == 100 )) # just the same as a while loop. will run until the condition is false
do
    echo $number
    number=$(( number + 1 ))

done