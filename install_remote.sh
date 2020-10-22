# github.com/tb-net

# as root
scoutpwd=$(cat /root/.cred_scout)	
useradd -u 1001 -g users -d /home/scout -s /bin/bash -p $(echo $scoutpwd | openssl passwd -1 stdin) -m scout
usermod -aG sudo scout
echo '# my parameters' >> /etc/sudoers
echo 'scout ALL=(ALL) NOPASSWD: /usr/bin/apt' >> /etc/sudoers
su scout

# as user
mkdir ~/scripts
cd ~/scripts
sudo apt update
sudo apt install git -y
git clone https://github.com/tb-net/newinstall.git
cd newinstall
./install_update.sh
./bash/install_bash.sh
./vim/install_vim.sh


