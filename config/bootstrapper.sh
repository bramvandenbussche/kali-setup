#!/bin/bash
dir="/home/kali/kali-setup/config/"
echo "[*] Bram's Mega Kali Setup Script"
bash $dir/update.sh
bash $dir/locale.sh
bash $dir/git.sh
# bash $dir/flameshot.sh
# bash $dir/createUpdateLink.sh
# bash $dir/pentesttoolsinstaller.sh
# bash $dir/veracrypt.sh
# bash $dir/nordvpn.sh
# bash $dir/gitkraken.sh
# bash $dir/brave.sh
# bash $dir/vscode.sh
# bash $dir/jetbrains.sh
# bash $dir/prepareforsharedfolders.sh
# bash $dir/documentvalley.sh

# Cleanup
bash $dir/cleanup.sh


echo ""
echo ""
echo "+----------------------------------------------------+"
echo "| Done! Please reboot for all changes to take effect |"
echo "+----------------------------------------------------+"
