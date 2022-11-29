#!/bin/bash
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install auditd && auditctl -e 1


function check_service()
{	
	which $1 << service_path
service_path
	
	echo "[+] proceeding to $2 $1 at $service_path"
	
	if [ $2 == "install" ] && [ -z $service_path ]; then
		sudo apt -y install $service
	elif [ $2 == "delete" ] && [ -n $service_path ]; then
		sudo apt -y autoremove $service
	else
		echo "[-] program $1 does not exist"
	fi	
}

#service checks
blacklisted=("nmap" "zenmap" "apache2" "nginx" "lighttpd" "wireshark" "tcpdump" "netcat-traditional" "nikto" "ophcrack" "libpam-pwquality" "telnet")
whitelisted=("chkrootkit" "rkhunter" "ufw" "libpam-cracklib" "fail2ban")

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

#remove all samba, music, mp4, targz, tgz, zip, and deb files
sudo apt-get remove .*samba.* .*smb.* .*mp4.* .*tar.gz.* .*tgz.* .*zip.* .*deb.*
sudo apt-get autoremove --purge samba

echo "[+] all installs and uninstalls complete. Ready to restart.\n"
read -n 1 -r -s -p "Press any key to continue..." 
