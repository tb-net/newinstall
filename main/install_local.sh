#!/bin/bash
# github.com/tb-net
# For local install, user is already created 
# Run with sudo

usr=$1

# installation
cd /home/$usr
mkdir scripts
cd scripts
apt update
apt install git -y
git clone https://github.com/tb-net/newinstall.git
cd newinstall
./main/install_update.sh
./bash/install_bash.sh $usr
./vim/install_vim.sh $usr
./keyboard/install_keyboard.sh
./python/install_python.sh $usr 2

# other directories
cd /home/$usr/scripts
mkdir data
mkdir files
git clone https://github.com/tb-net/python.git


# software
cd /home/$usr/scripts/newinstall
#./main/install_apps.sh
