# github.com/tb-net
# Install bash config files

apt install bash-completion
home=/home/$USER
dir=$home/scripts/newinstall
mkdir $home/.bak
[ -f $home/.bashrc ] && mv $home/.bashrc $home/.bak/.bashrc.bak
[ -f $home/.bash_aliases ] && mv $home/.bash_aliases $home/.bak/.bash_aliases.bak
[ -f $home/.inputrc ] && mv $home/.inputrc $home/.bak/.inputrc.bak

cp $dir/bash/.bashrc $home/.bashrc
cp $dir/bash/.bash_aliases $home/.bash_aliases
cp $dir/bash/.inputrc $home/.inputrc
source $home/.bashrc
source $home/.inputrc

