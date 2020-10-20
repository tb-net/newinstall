# Bash script to make a new vim installation
# overwrites any existing configuration!

apt remove -y vim-tiny
apt install -y vim
rm -f .vim

dir=$(pwd)
\cp .viminfo ~
\cp .vimrc ~
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall

