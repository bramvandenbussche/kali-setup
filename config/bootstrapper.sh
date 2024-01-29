#!/bin/bash
dir="/home/kali/kali-setup/config/"
echo "[*] Updating system config"
bash $dir/update.sh
bash $dir/locale.sh
bash $dir/git.sh

# Cleanup
bash $dir/cleanup.sh
