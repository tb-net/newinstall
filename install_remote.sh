# github.com/tb-net

# as root
usr=$1
cd /home/$usr
mkdir scripts
cd scripts
apt update
apt install git -y
git clone https://github.com/tb-net/newinstall.git
chown -R $usr:$usr /home/$usr
cd newinstall
./install_update.sh $usr
./bash/install_bash.sh $usr
./vim/install_vim.sh $usr

