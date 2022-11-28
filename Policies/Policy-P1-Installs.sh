#!/bin/bash
#sudo apt-get update
#sudo apt-get upgrade
#sudo apt-get install auditd && auditctl -e 1

function ufw_access()
{
	local -n array=$1
	for i in "${array[@]}"
	do 
		sudo ufw $2 $i
	done
}

function check_service()
{	
	which $1 << service_path
service_path
	
	echo "[+] proceeding to $2 $1 at $service_path"
	
	if [ $2 == "install" ] && [ -z $service_path ]; then
		sudo apt install $service
	elif [ $2 == "delete" ] && [ -n $service_path ]; then
		sudo apt autoremove $service
	else
		echo "[-] program $1 does not exist"
	fi	
}

#service checks
blacklisted=("nmap" "zenmap" "apache2" "nginx" "lighttpd" "wireshark" "tcpdump" "netcat-traditional" "nikto" "ophcrack" "libpam-pwquality" "telnet")
whitelisted=("chkrootkit" "rkhunter" "ufw" "libpam-cracklib" "auditd" "auditctl")

for service in "${blacklisted[@]}"
do 
	echo $service
	check_service "$service" "delete"
done

for service in "${whitelisted[@]}"
do
	echo $service
	check_service "$service" "install"
done

#run rootkit scans
sudo chkrootkit
sudo rkhunter --update
sudo rkhunter --check

#remove all samba, music, mp4, targz, tgz, zip, and deb files
sudo apt-get remove .*samba.* .*smb.* .*mp4.* .*tar.gz.* .*tgz.* .*zip.* .*deb.*

#ufw management
sudo ufw default allow outgoing
sudo ufw default deny incoming
sudo ufw logging on

deny=(19 23 123 139 161 162 445 1434 41170)
allow=(22 443)

ufw_access deny "deny"
ufw_access allow "allow"

sudo ufw enable
