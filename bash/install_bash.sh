# github.com/tb-net
# Install bash config files

apt install bash-completion
mkdir ~/.bak
[ -f ~/.bashrc ] && mv ~/.bak/.bashrc.bak
[ -f ~/.bash_aliases ] && mv ~/.bak/.bash_aliases.bak
[ -f ~/.inputrc ] && mv ~/.bak/.inputrc.bak

cp .bashrc ~/.bashrc
cp .bash_aliases ~/.bash_aliases
cp .inputrc ~/.inputrc
source ~/.bashrc
source ~/.inputrc

