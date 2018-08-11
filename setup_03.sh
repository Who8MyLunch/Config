#!/bin/bash

# Semi-automated setup script.
# Run this normally, e.g. not sudo

# Then go to this site (https://www.python.org/downloads) and download the source for Python.
# Unpack the contents into a folder of your choosing.

if [ ! -d "$HOME/.local" ]; then
    mkdir "$HOME/.local"
fi
if [ ! -d "$HOME/Projects" ]; then
    mkdir "$HOME/Projects"
fi

ver=3.7.0

cd ~/Projects
wget https://www.python.org/ftp/python/${ver}/Python-${ver}.tar.xz

# Uncompress
tar xvf Python-${ver}.tar.xz

# Change into that folder and issue the following commands (or similar).
# Also, use the `prefix` option below to specify building and installing to the user's
# environment instead of the system's.

cd Python-${ver}

# make clean
./configure --enable-optimizations --with-lto --prefix=$HOME/.local
make

# make test
# make install

# Note the option `--enable-optimizations` will significantly lengthen compile time.


