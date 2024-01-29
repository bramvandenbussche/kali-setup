#!/bin/bash
dir="/home/kali/kali-setup/"
echo "[*] Bram's Mega Kali Setup Script Preparing..."
echo "[*] Performing Git Update..."
cd $dir
git pull
cd -
echo "[*] Starting script..."

bash $dir/config/bootstrapper.sh

bash $dir/tools/boostrapper.sh


echo ""
echo ""
echo "+----------------------------------------------------+"
echo "| Done! Please reboot for all changes to take effect |"
echo "+----------------------------------------------------+"
