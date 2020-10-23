# github.com/tb-net
# Enter name of user as first argument
# Run as root

usr=$1

# creation
groupadd $usr
upwd=$(cat /root/.cred_remote)
useradd -u 1001 -g $usr -d /home/$usr -s /bin/bash -p $(echo $upwd | openssl passwd -1 stdin) -m $usr
usermod -aG sudo $usr
echo "# my parameters" >> /etc/sudoers
echo "$usr ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# installation
cd /home/$usr
mkdir scripts
cd scripts
apt update
apt install git -y
git clone https://github.com/tb-net/newinstall.git
chown -R $usr:$usr /home/$usr
cd newinstall
./install_update.sh $usr
./bash/install_bash.sh $usr
./vim/install_vim.sh $usr

