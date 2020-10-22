# github.com/tb-net

# as root
groupadd scout
scoutpwd=$(cat /root/.cred_scout)
useradd -u 1001 -g scout -d /home/scout -s /bin/bash -p $(echo $scoutpwd | openssl passwd -1 stdin) -m scout
usermod -aG sudo scout
echo '# my parameters' >> /etc/sudoers
echo 'scout ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
chown scout:scout install_remote.sh
cp install_remote.sh /home/scout/install_remote.sh
cd /home/scout
su scout


