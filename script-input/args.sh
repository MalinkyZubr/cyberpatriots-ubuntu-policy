#! /bin/bash

args=("$@") # specify unlimited arguments

echo ${args[0]} ${args[1]} ${$args[2]} # each argument will have an index

echo $@ # the arguments are all in an array

echo $#