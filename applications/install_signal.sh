#!/bin/bash
# github.com/tb-net
# Run with sudo

curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -

echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list

#apt update

#apt install -y signal-desktop

