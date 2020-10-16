# Bash script to make a new vim installation
# overwrites any existing configuration!

apt remove -y vim-tiny
apt install -y vim

dir=$(pwd)
\cp -r .vim ~
\cp .viminfo ~
\cp .vimrc ~

