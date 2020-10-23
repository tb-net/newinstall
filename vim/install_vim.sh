# Bash script to make a new vim installation
# overwrites any existing configuration!

home=/home/$1
dir=$home/scripts/newinstall

apt remove -y vim-tiny
apt install -y vim
rm -f $home/.vim

#\cp $dir/vim/.viminfo ~/.viminfo
\cp $dir/vim/.vimrc $home/.vimrc
curl -fLo $home/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall

