#!/bin/bash

# Semi-automated setup script.  Run this with sudo.

# Then go to this site (https://www.python.org/downloads) and download the source for Python.
# Unpack the contents into a folder of your choosing.

cd ~/Projects
wget https://www.python.org/ftp/python/3.6.3/Python

# Uncompress
tar xvf Python-3.6.3.tar.xz

# Change into that folder and issue the following commands (or similar).
# Also, use the `prefix` option below to specify building and installing to the user's
# environment instead of the system's.

cd Python-3.6.3

make clean
./configure --enable-optimizations --with-lto --prefix=$HOME/.local
make
make test
make install

# Note the option `--enable-optimizations` will significantly lengthen compile time.


