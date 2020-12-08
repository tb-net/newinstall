#!/bin/bash
# github.com/tb-net
# Run with sudo

usr=$1

mkdir /home/$usr/applications

cd applications

wget https://github.com/nextcloud/desktop/releases/download/v3.0.3/Nextcloud-3.0.3-x86_64.AppImage

