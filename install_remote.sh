# github.com/tb-net

# as user
mkdir scripts
cd scripts
sudo apt update
sudo apt install git -y
git clone https://github.com/tb-net/newinstall.git
cd newinstall
sudo ./install_update.sh
sudo ./bash/install_bash.sh
sudo ./vim/install_vim.sh


