# github.com/tb.net
# Update and install essential packages

apt update && apt upgrade -y
apt dist-upgrade
apt autoremove

apt install -y build-essential
apt install -y checkinstall
apt install -y libreadline-gplv2-dev
apt install -y libncursesw5-dev
apt install -y libssl-dev
apt install -y libsqlite3-dev
apt install -y tk-dev
apt install -y libgdbm-dev
apt install -y libc6-dev
apt install -y libbz2-dev
apt install -y zlib1g-dev
apt install -y openssl
apt install -y libffi-dev
apt install -y python3-dev
apt install -y python3-setuptools
apt install -y wget
apt install -y stow

