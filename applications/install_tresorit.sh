#!/bin/bash
# github.com/tb-net
# Run with sudo

wget https://installerstorage.blob.core.windows.net/public/install/tresorit_installer.run

y | sh ./tresorit_installer.run

pkill tresorit

rm tresorit_installer.run

