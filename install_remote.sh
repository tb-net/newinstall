# github.com/tb-net

# as user
mkdir scripts
cd scripts
apt update
apt install git -y
git clone https://github.com/tb-net/newinstall.git
cd newinstall
sudo ./install_update.sh $USER
sudo ./bash/install_bash.sh $USER
sudo ./vim/install_vim.sh $USER

