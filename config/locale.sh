echo "[+] Keyboard layout to Belgium"
setxkbmap be
sudo cp keyboard.conf /etc/default/keyboard

echo "[+] Setting timezone"
sudo timedatectl set-timezone Europe/Brussels

# https://serverfault.com/questions/362903/how-do-you-set-a-locale-non-interactively-on-debian-ubuntu
