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
sudo rkhunter --propupd
sudo rkhunter -sk --checkall

# managing libpam-cracklib
sudo sed '34 i password		required	pam_cracklib.so 	retry=3 minlen=6 difok=3' /etc/pam.d/common-password
sudo sed '35 i password required pam_unix.so md5 use_authtok' /etc/pam.d/common-password
