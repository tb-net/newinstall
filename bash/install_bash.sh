# github.com/tb-net
# Install bash config files

apt install bash-completion
mkdir ~/.bak
[ -f ~/.bashrc ] && mv ~/.bashrc ~/.bak/.bashrc.bak
[ -f ~/.bash_aliases ] && mv ~/.bash_aliases ~/.bak/.bash_aliases.bak
[ -f ~/.inputrc ] && mv ~/.inputrc .bak/.inputrc.bak

cp /scripts/newinstall/bash/.bashrc ~/.bashrc
cp /scripts/newinstall/bash/.bash_aliases ~/.bash_aliases
cp /scripts/newinstall/bash/.inputrc ~/.inputrc
source ~/.bashrc
source ~/.inputrc

