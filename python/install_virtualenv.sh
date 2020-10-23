# github.com/tb-net
# Install virtual environment for python

usr=$1

pip3.9 install virtualenv virtualenvwrapper
mkdir /home/$usr/.virtualenvs
echo "# Virtualenv settings" >> /home/$usr/.bashrc
echo "WORKON_HOME=$HOME/.virtualenvs" >> /home/$usr/.bashrc
echo "VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python$pyshort" >> /home/$usr/.bashrc
echo "source /home/$usr/.local/bin/virtualenvwrapper.sh" >> /home/$usr/.bashrc
source /home/$usr/.bashrc
mkvirtualenv $envname

