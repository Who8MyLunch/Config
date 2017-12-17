# System Setup and Python

Some helpful overview links:
- https://help.ubuntu.com/community/AptGet/Howto
- https://help.ubuntu.com/community/CompilingEasyHowTo


# General Packages

```bash
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install -y git-core subversion dkms libtool \
                        autoconf automake pkg-config cmake \
                        linux-headers-generic build-essential gfortran  \
                        libjpeg-dev libpng-dev libtiff-dev libwebp-dev libvorbis-dev libtheora-dev \
                        liblcms2-dev libfreetype6-dev libass-dev texinfo \
                        zlib1g-dev libxslt1-dev libxml2-dev \
                        liblapack-dev libblas-dev libopenblas-dev \
                        libboost-all-dev
```

# Option 1 - Install Python via Package Manager

Very helpful: http://askubuntu.com/questions/718922/how-to-install-python-3-5-1-on-wily-werewolf-15-10

PPA for Python versions not yet in main distributions: https://launchpad.net/~fkrull/+archive/ubuntu/deadsnakes

```bash
sudo apt-get install -y software-properties-common
sudo add-apt-repository ppa:fkrull/deadsnakes
sudo apt-get update
```

See available Python versions in updated packages:

```bash
apt-cache search python3.6
```

Install desired Python version:

```bash
sudo apt-get install python3.6 python3.6-dev
```


# Option 2 - Install Python by Compiling from Source

### Links
- https://docs.python.org/devguide/setup.html
- https://passingcuriosity.com/2015/installing-python-from-source/
- https://www.tecmint.com/install-python-in-linux/
- http://stackoverflow.com/questions/8097161/how-would-i-build-python-myself-from-source-code-on-ubuntu
- https://askubuntu.com/questions/324845/whats-the-difference-between-apt-get-install-and-apt-get-build-dep

PPA for Python versions not yet in main distributions: https://launchpad.net/~deadsnakes/+archive/ubuntu/ppa

```bash
sudo add-apt-repository ppa:fkrull/deadsnakes  # check script setup_01.sh for more recent command(s)
sudo apt-get update
sudo apt-get build-dep python3.6
```

Then go to this site (https://www.python.org/downloads) and download the source for Python.  Unpack the contents into a folder of your choosing.  Change into that folder and issue the following commands (or similar).  Also, use the `prefix` option below to specify building and installing to the user's environment instead of the system's.

```bash
make clean
./configure --enable-optimizations --with-lto --prefix=$HOME/.local
make
make test
make install
```

Note the option `--enable-optimizations` will significantly lengthen compile time.
