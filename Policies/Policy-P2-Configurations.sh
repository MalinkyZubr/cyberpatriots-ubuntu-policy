#!/bin/bash

function ufw_access()
{
	local -n array=$1
	for i in "${array[@]}"
	do 
		sudo ufw $2 $i
	done
}

#ufw management
sudo ufw default allow outgoing
sudo ufw default deny incoming
sudo ufw logging on

deny=(19 23 123 139 161 162 445 1434 41170)
allow=(22 443)

ufw_access deny "deny"
ufw_access allow "allow"

sudo ufw enable

#run rootkit scans
sudo chkrootkit
sudo rkhunter --update
sudo rkhunter --check


