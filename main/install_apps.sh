#!/bin/bash
# github.com/tb-net
# For local install, user is already created 
# Run with sudo

usr=$1

# installation
cd /home/$usr
mkdir applications
cd applications
./install_brave.sh
./install_discord.sh
./install_opera.sh
./install_signal.sh
./install_surfshark.sh
./install_vivaldi.sh
./install_chrome.sh
./install_virtualbox.sh

apt update
apt install -y brave-browser
apt install -y opera-stable
apt install -y signal-desktop
apt install -y surfshark-vpn
apt install -y vivaldi-stable

./install_veracrypt.sh

