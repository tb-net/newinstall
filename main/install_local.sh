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
mkdir python
mkdir data
mkdir files
cd python
git clone https://github.com/tb-net/python.git
cd /home/$usr
mkdir applications


# software
cd applications
./install_brave.sh
./install_discord.sh
./install_opera.sh
./install_signal.sh
./install_surfshark.sh
./install_vivaldi.sh
./install_virtualbox.sh

apt update
apt install -y brave-browser
apt install -y opera-stable
apt install -y signal-desktop
apt install -y surfshark-vpn
apt install -y vivaldi-stable

./install_veracrypt.sh

