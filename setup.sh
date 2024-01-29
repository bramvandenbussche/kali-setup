#!/bin/bash
dir="/home/kali/kali-setup/"
echo "[*] Bram's Mega Kali Setup Script Preparing..."
echo "[*] Performing Git Update..."
cd $dir
git pull
cd -
echo "[*] Starting script..."
bash $dir/config/bootstrapper.sh
