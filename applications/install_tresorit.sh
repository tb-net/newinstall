#!/bin/bash
# github.com/tb-net
# Run with sudo

wget https://installerstorage.blob.core.windows.net/public/install/tresorit_installer.run

echo -e "\n" | sh ./tresorit_installer.run > /dev/null

pkill tresorit

rm tresorit_installer.run

