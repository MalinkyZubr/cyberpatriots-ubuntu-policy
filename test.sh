#!/bin/bash




#!/bin/bash

function isinstalled()
{
	dpkg -s $1 &> $1

	if [ $? -eq 0 ]; then
	   	val=1
	else
		val=0
	fi
	echo $val
}

val=$(isinstalled "wireshark")
echo $val

