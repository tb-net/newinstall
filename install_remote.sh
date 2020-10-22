# github.com/tb-net

# as user
mkdir scripts
cd scripts
sudo apt update
sudo apt install git -y
git clone https://github.com/tb-net/newinstall.git
cd newinstall
./install_update.sh
./bash/install_bash.sh
./vim/install_vim.sh


