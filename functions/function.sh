#! /bin/bash

function funName()
{
    echo "this is a function"
}

function print()
{
    echo $1
    returningValue="using function right now"
    echo "$returningValue"
}

funName
print "Hello!"
echo $returningValue