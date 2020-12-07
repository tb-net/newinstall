#!/bin/bash
# github.com/tb-net
# Run with sudo


wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -

wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"

apt update

apt install virtualbox-6.0

wget https://download.virtualbox.org/virtualbox/6.0.0/Oracle_VM_VirtualBox_Extension_Pack-6.0.0.vbox-extpack

echo "y" | sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-6.0.0.vbox-extpack

rm Oracle_VM_VirtualBox_Extension_Pack-6.0.0.vbox-extpack

