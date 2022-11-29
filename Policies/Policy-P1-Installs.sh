#!/bin/bash
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install auditd && auditctl -e 1


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

function check_service()
{	
	service_path=$(which $service)
	installed=$(isinstalled $service)
	
	if [ $2 == "install" ] && [ $installed == 0 ]; then
		echo "[+] $1 not found, installing now"
		sudo apt -y install $service
	elif [ $2 == "install" ] && [ $installed == 1 ]; then
		echo "[-] $1 already installed"
	elif [ $2 == "delete" ] && [ $installed == 0 ]; then
		echo "[-] Tried to remove $1 but $1 could not be found."
	elif [ $2 == "delete" ] && [ $installed == 1 ]; then
		echo "[+] Illegal program $1 found, deleting now"
		sudo apt -y autoremove --purge $service
	else
		echo "[-] UNKNOWN ERROR"
	fi	
}

#service checks
blacklisted=("nmap" "zenmap" "apache2" "nginx" "lighttpd" "wireshark" "tcpdump" "netcat-traditional" "nikto" "ophcrack" "libpam-pwquality" "telnet" "samba")
whitelisted=("chkrootkit" "rkhunter" "ufw" "libpam-cracklib" "fail2ban" "openssh-server")

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

echo "[+] all installs and uninstalls complete. Ready to restart.\n"
read -n 1 -r -s -p "Press any key to continue..." 

sudo reboot now
