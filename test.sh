#!/bin/bash

function ufw_access()
{
	local -n array=$1
	for i in "${array[@]}"
	do 
		echo "$i $2"
	done
}

deny=(1 2 3) 
ufw_access deny "deny"

function funky()
{
	local -n string=$1
	local -n operation=$2
	echo $operation
	if [ -z $operation string ]
	then
		echo "true"
	fi
}
funky "hi" "z"


service="ufw"
which $service << service_path
service_path

echo $service_path

