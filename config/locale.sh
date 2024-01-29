echo "[+] Keyboard layout to Belgium"
setxkbmap be
sudo cp /home/kali/kali-setup/config/keyboard.conf /etc/default/keyboard
sudo service keyboard-setup restart

echo "[+] Setting timezone"
sudo timedatectl set-timezone Europe/Brussels

# https://serverfault.com/questions/362903/how-do-you-set-a-locale-non-interactively-on-debian-ubuntu
