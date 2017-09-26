#!/bin/bash

# Semi-automated setup script.  Run this with sudo.

apt-get update
apt-get dist-upgrade

apt-get -y install git-core subversion dkms libtool \
                   autoconf automake pkg-config cmake \
                   build-essential gfortran  \
                   libjpeg-dev libpng-dev libtiff-dev libwebp-dev libvorbis-dev libtheora-dev \
                   liblcms2-dev libfreetype6-dev libass-dev texinfo \
                   zlib1g-dev libxslt1-dev libxml2-dev \
                   liblapack-dev libblas-dev libopenblas-dev


