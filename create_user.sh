# github.com/tb-net
# as root

usr=$1
groupadd $usr
upwd=$(cat /root/.cred_remote)
useradd -u 1001 -g $usr -d /home/$usr -s /bin/bash -p $(echo $upwd | openssl passwd -1 stdin) -m $usr 
usermod -aG sudo $usr 
echo "# my parameters" >> /etc/sudoers
echo "$usr ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
./install_remote.sh $usr 
chown -R $usr:$usr /home/$usr
cd /home/$usr

