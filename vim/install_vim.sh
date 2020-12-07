#!/bin/bash
# github.com/tb-net
# Bash script to make a new vim installation
# overwrites any existing configuration!

usr=$1
home=/home/$usr
dir=$home/scripts/newinstall

apt remove -y vim-tiny
apt install -y vim
rm -f $home/.vim

#\cp $dir/vim/.viminfo ~/.viminfo
\cp $dir/vim/.vimrc $home/.vimrc
curl -fLo $home/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
chown -R $usr:$usr $home
echo | sudo -u $usr vim +PlugInstall +qall

