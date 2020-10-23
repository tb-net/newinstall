# github.com/tb-net
# Install the latest version of python in a virtual environment

# python version
if [ $# -gt 0 ]; then
	pyver=$1
else
	pyver='3.9.0'
fi

# virtual environment name
if [ $# -eq 2 ]; then
	envname=$2
else
	envname='forge'
fi

# prepare
mkdir /opt/python_new
cd /opt/python_new

# download and install
wget 'https://www.python.org/ftp/python/'$pyver'/Python-'$pyver'.tar.xz'
tar xvf 'Python-'$pyver'.tar.xz'
cd 'Python-'$pyver
./configure --enable-optimizations
make -j 1
make altinstall

