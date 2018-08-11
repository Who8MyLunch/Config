
# Download Source

Download Python source from here: https://www.python.org/downloads

Run the lines below to download Python source and extract to project folder.  Update version
number to desired number.


    ver=3.7.0

    cd ~/Projects
    wget https://www.python.org/ftp/python/${ver}/Python-${ver}.tar.xz

    tar xvf Python-${ver}.tar.xz

    cd Python-${ver}



# Compile

Use the `prefix` option below to specify building and installing to the user's environment.
The option `--enable-optimizations` significantly lengthens compile time.

    prefix="$HOME/.local"

    # make clean
    ./configure --enable-optimizations --with-lto --prefix=$prefix
    make

    # make test
    make install
