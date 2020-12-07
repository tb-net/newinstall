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

apt update
apt install -y --force-yes brave-browser
apt install -y --force-yes opera-stable
apt install -y --force-yes signal-desktop
apt install -y --force-yes surfshark-vpn
apt install -y --force-yes vivaldi-stable

./install_veracrypt.sh


