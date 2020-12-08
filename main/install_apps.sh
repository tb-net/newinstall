#!/bin/bash
# github.com/tb-net
# For local install, user is already created 
# Run with sudo

usr=$1

# installation
cd /home/$usr/scripts/newinstall/applications
./install_brave.sh
./install_discord.sh
./install_opera.sh
./install_signal.sh
./install_surfshark.sh
./install_vivaldi.sh
./install_chrome.sh
./install_virtualbox.sh $usr
./install_calibre.sh
su -c ./install_tresorit.sh $usr
su -c ./install_joplin.sh $usr
./install_nextcloud.sh $usr

apt update
apt install -y brave-browser
apt install -y signal-desktop
apt install -y surfshark-vpn
apt install -y vivaldi-stable
apt install -y kate
snap install slack --classic

echo -e '\n' | apt install -y opera-stable

./install_veracrypt.sh


