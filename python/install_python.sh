# github.com/tb-net
# Install the latest version of python in a virtual environment

# python version
pyver="3.9.0"

# virtual environment name
envname="forge"


usr=$1
pyshort=${pyver:0:3}

# prepare
cd /opt

# download and install
wget "https://www.python.org/ftp/python/"$pyver"/Python-"$pyver".tar.xz"
tar xvf "Python-"$pyver".tar.xz"
rm "Python-"$pyver".tar.xz"
cd "Python-"$pyver
./configure --enable-optimizations --prefix=/usr/local/stow/python$pyshort
make -j 1
make altinstall
cd /usr/local/stow/
stow python$pyshort
python3.9 -m pip intall --upgrade pip
pip3.9 install virtualenv virtualenvwrapper
mkdir .virtualenvs
echo "# Virtualenv settings" >> /home/$usr/.bashrc
echo "WORKON_HOME=$HOME/.virtualenvs" >> /home/$usr/.bashrc
echo "VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python$pyshort" >> /home/$usr/.bashrc
echo "source /home/$usr/.local/bin/virtualenvwrapper.sh" >> /home/$usr/.bashrc
source /home/$usr/.bashrc
sudo -u $usr mkvirtualenv $envname
workon $envname
pip install requests

