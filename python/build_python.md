

# Update System

    sudo apt-get update
    sudo apt-get -y dist-upgrade

    sudo apt-get -y install git-core  \
                            vim \
                            subversion \
                            dkms \
                            libtool \
                            autoconf \
                            automake \
                            cmake \
                            pkg-config \
                            liblcms2-dev \
                            texinfo \
                            libtbb2 \
                            libtbb-dev \
                            build-essential \
                            gfortran  \
                            libfreetype6-dev \
                            libass-dev \
                            zlib1g-dev \
                            libxslt1-dev \
                            libxml2-dev \
                            libfftw3-dev \
                            liblapack-dev \
                            libblas-dev \
                            libopenblas-dev

# Gstreamer

    sudo apt-get -y install libgstreamer1.0-0 \
                            gstreamer1.0-plugins-base \
                            gstreamer1.0-plugins-good \
                            gstreamer1.0-plugins-bad \
                            gstreamer1.0-plugins-ugly \
                            gstreamer1.0-libav \
                            gstreamer1.0-doc \
                            gstreamer1.0-tools

# Image file I/O

    sudo apt-get -y install libjpeg-dev \
                            libpng12-dev \
                            libtiff5-dev \
                            libwebp-dev \
                            libvorbis-dev \
                            libtheora-dev \
                            libjasper-dev

# Video file I/O

    sudo apt-get -y install libopencv-dev \
                            libavcodec-dev \
                            libavformat-dev \
                            libswscale-dev \
                            libv4l-dev \
                            libxvidcore-dev \
                            libx264-dev


# Open CV stuff


Install from source tutorial: :https://docs.opencv.org/3.4.1/d7/d9f/tutorial_linux_install.html

    sudo apt-get -y install gtk2-dev



# Get Ready to Compile

Check for Python version available in current apt cache. Often the latest Python version is not
available in default PPAs.

    apt-cache search python3.7

If this comes up empty then need to add deadsnakes PPA for access to newer versions.
This article is very useful: https://askubuntu.com/questions/38021/how-to-add-a-ppa-on-a-server

First step is to make sure `dirmngr` is installed (required for adding gpg key)

    sudo apt-get install dirmngr

Next update `/etc/apt/sources.list` to enable source files.  Maybe need to worry about possible
name differences between debian and ubuntu: https://askubuntu.com/questions/445487/what-debian-version-are-the-different-ubuntu-versions-based-on


## Deadsnakes PPA

Add following lines to /etc/apt/sources.list:

    deb http://ppa.launchpad.net/deadsnakes/ppa/ubuntu xenial main
    deb-src http://ppa.launchpad.net/deadsnakes/ppa/ubuntu xenial main

Double check PPA key at site: http://ppa.launchpad.net/deadsnakes/ppa.
Helpful stuff: https://superuser.com/questions/620765/sudo-apt-key-adv-keyserver-keyserver-ubuntu-com-recv-7f0ceb10-command-return

    key=F23C5A6CF475977595C89F51BA6932366A755776

    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ${key}


## Build Dependencies

Update and install Python build dependenacies:

    sudo apt-get update
    sudo apt-get build-dep python3.7    # use version to match your scenario



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