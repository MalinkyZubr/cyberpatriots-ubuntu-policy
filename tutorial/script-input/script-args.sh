#! /bin/bash

echo $1 $2 $3 # what this does is when you run the same command line you run the script on through the shell, you type something. That input will be turned into these varibales after the 
# script is run. You must use 1 2 and 3, or beyond to get the argukments. If you use $0, it will return the script name
# so if you rant he script as ./script.sh BMW TOYOTA MERCEDES, those values would be inputted as arguments and then variables