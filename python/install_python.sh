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
#./configure --enable-optimizations --prefix=/usr/local/stow/python$pyshort
./configure --prefix=/usr/local/stow/python$pyshort
make -j 1
make altinstall
cd /usr/local/stow/
stow python$pyshort
python3.9 -m pip install --upgrade pip

