#!/bin/bash
downloadfile=https://launchpad.net/veracrypt/trunk/1.26.7/+download/veracrypt-1.26.7-Debian-12-amd64.deb
downloadfileName=veracrypt-1.26.7-Debian-12-amd64.deb
gpgkeyFileName=~/kali-setup/tools/veracrypt-1.26.7-Debian-12-amd64.deb.sig

publicKeyId=0x680D16DE
publicKeyFingerprint=5069A233D55A0EEB174A5FC3821ACD02680D16DE

echo "[+] Downloading veracrypt"
if [ -f "/tmp/$downloadfileName" ]; then
	echo "[-] Download found"
else
	cd /tmp/
	wget $downloadfile
	cd -
fi

echo "[+] Checking download validity"
echo "[-] Download gpg public key"
gpg --keyserver hkps://keyserver.ubuntu.com --recv-keys $publicKeyId
echo "[-] Checking public key validity"
if [[ $(gpg --fingerprint 0x680D16DE | grep 5069 | tr -d " \t\n\r")  = $publicKeyFingerprint ]]; then
	echo "[+] Key valid, checking signature"
	gpg --verify $gpgkeyFileName /tmp/$downloadfileName
	if [ $? -eq 0 ] ; then
		echo "[+] Download verified, installing"
		sudo apt install /tmp/$downloadfileName --yes
		sudo apt --fix-broken install --yes
	else
		echo "[!] Problem with signature, Skipping veracrypt installation"
	fi
else
	echo "[!] Unexpected key, Skipping veracrypt installation"
fi