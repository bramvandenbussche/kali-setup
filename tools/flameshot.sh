echo "[+] Installing Flameshot"
sudo apt install flameshot --yes
if [ -f "/usr/share/kali-themes/xfce4-screenshooter.bak" ]; then
	echo "[+] Backup already taken"
else
	echo "[+] Taking backup of screenshooter"
	sudo cp /usr/share/kali-themes/xfce4-screenshooter /usr/share/kali-themes/xfce4-screenshooter.bak
fi
sudo bash -c 'echo "/usr/bin/flameshot gui" > /usr/share/kali-themes/xfce4-screenshooter'
