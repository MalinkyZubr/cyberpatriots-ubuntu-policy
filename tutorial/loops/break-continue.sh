#! /bin/bash

for (( i=0; i<=50; i++))
do  
    if (( $i > 5))
    then
        break
    elif (( ( $i % 2 ) == 0 ))
        continue
    else
        echo $i
    fi
done