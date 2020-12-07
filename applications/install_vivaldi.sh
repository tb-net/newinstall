# github.com/tb-net
# Run with sudo

wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -

add-apt-repository 'deb https://repo.vivaldi.com/archive/deb/ stable main'

apt update

apt install -y vivaldi-stable

