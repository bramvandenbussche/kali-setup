echo "[+] Initial setup started"
echo "[+] Setup keyboardmap (temporary)"
setxkbmap be
echo "[+] Setup link with Github"
echo "[*] Check if key exists"
if [ -f "/home/kali/.ssh/id_rsa" ]; then
        echo "[+] id_rsa exists"
else
        echo "[-] id_rsa missing, creating now"
        ssh-keygen -f /home/kali/.ssh/id_rsa
fi
echo "------------------------------------------------"
cat /home/kali/.ssh/id_rsa.pub
echo "------------------------------------------------"
echo "[?] Please upload the public key above to the github server, press enter to continue"
echo "[i] https://github.com/settings/keys"
read tempvar
cd /home/kali/
if [ -d "/home/kali/kali-setup" ]; then
        echo "[+] Pulling latest changes to setup scripts"
        cd kali-setup
        git pull
else
        echo "[+] Cloning the setup scripts"
        git clone git@github.com:bramvandenbussche/kali-setup.git
fi 
echo "[+] Starting real setup script..."
bash /home/kali/kali-setup/setup.sh
