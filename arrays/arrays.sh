#! /bin/bash

car=('BWM'  'TOYOTA' 'HONDA' 'YEET')

unset car[3] # removes value at given index

set car[3]='Mercedes' # adds a new value at the index

echo "${car[@]}" # @ prints out all of the array, but you can also use indicies

echo "${!car[@]}" # the ! makes it show the index

echo "${#car[@]}" # The # is basically the length function, returns the length