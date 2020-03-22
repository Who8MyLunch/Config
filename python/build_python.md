

# Update System

Install packages outlined in `system/basic_packages.md`.


# Get Ready to Compile

Check for Python version available in current apt cache. Often the latest Python version is not
available in default PPAs.

    apt-cache search python3.8

If this comes up empty then need to add deadsnakes PPA for access to newer versions.  See `deadsnakes_ppa.md`.


## Build Dependencies

Update and install Python build dependenacies:

    sudo apt-get update
    sudo apt-get build-dep python3.8


# Download Source

Download Python source from here: https://www.python.org/downloads

Run the lines below to download Python source and extract to project folder.  Update version
number to desired number.

    ver=3.8.2

    cd ~/Projects
    wget https://www.python.org/ftp/python/${ver}/Python-${ver}.tar.xz

    tar xvf Python-${ver}.tar.xz

    cd Python-${ver}


# Compile

Use the `prefix` option below to specify building and installing to the user's environment.
The option `--enable-optimizations` significantly lengthens compile time.

```bash
# http://www.tldp.org/HOWTO/HighQuality-Apps-HOWTO/fhs.html
# my_prefix="/usr/local"
my_refix="$HOME/.local"

./configure --enable-optimizations --with-lto --prefix=${my_prefix}

make
# make test

# https://www.linuxjournal.com/content/using-checkinstall-build-packages-source
sudo checkinstall
# make install

```
