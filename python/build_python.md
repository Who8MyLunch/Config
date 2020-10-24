
# Philosophy

I want my virtualenv projects to operate with the Python interpreter that I compile myself.  Any
use of Python outside of one of my virtual environments should use the system Python.  The same
goes for any Python-based tools, like pip, scons, etc.

# Update System

Install packages outlined in `system/basic_packages.md`.

Configure system to operate with python3 as the preferred interpreter instead of python2

```bash
sudo apt install python-is-python3
```

Or maybe: `ln -s /usr/bin/python3.8 /usr/bin/python`

Then verify with `python -V`.


# Get Ready to Compile

Check for Python version available in current apt cache. Often the latest Python version is not
available in default PPAs.

```bash
apt-cache search python3.8
```

If this comes up empty then need to add deadsnakes PPA for access to newer versions.  See `deadsnakes_ppa.md`.


## Build Dependencies

Update and install Python build dependenacies:

```bash
sudo apt-get update
sudo apt-get build-dep python3.8
sudo apt install python3.8-dev
```

# Download Source

Download Python source from here: https://www.python.org/downloads

Run the lines below to download Python source and extract to project folder.  Update version
number to desired number.

```bash
ver=3.8.6
cd ~/Projects
wget https://www.python.org/ftp/python/${ver}/Python-${ver}.tar.xz
tar xvf Python-${ver}.tar.xz
cd Python-${ver}
```

# Compile

Use the `prefix` option below to specify building and installing to the user's environment.
The option `--enable-optimizations` may lengthen compile time.

```bash
# http://www.tldp.org/HOWTO/HighQuality-Apps-HOWTO/fhs.html
my_refix="$HOME/.local"

./configure --enable-optimizations --with-lto --prefix=${my_prefix}

make
# make test

# https://www.linuxjournal.com/content/using-checkinstall-build-packages-source
# sudo checkinstall  # don't use this.  it goes against our philosophy.

make install

```
