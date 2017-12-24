#!/bin/bash

# Semi-automated setup script.  Run this with sudo.
# Get ready to install latest Python from source, then see script setup_03.sh for next steps


# Check for Python version available in cureent cache.
# Use this to see if your favorite (Python 3.6) is available in default PPAs:
# apt-cache search python3\.6
# if not then deadsnakes is needed to provide earlier access to newer versions.

# Very helpful!!!!!
# https://askubuntu.com/questions/38021/how-to-add-a-ppa-on-a-server

# required for adding gpg key
sudo apt-get install dirmngr

# Make sure to update /etc/apt/sources.list to enable source files
# Account for possible name differenes between debian and ubuntu??
# https://askubuntu.com/questions/445487/what-debian-version-are-the-different-ubuntu-versions-based-on

# Add following lines to /etc/apt/sources.list
# deb http://ppa.launchpad.net/deadsnakes/ppa/ubuntu xenial main
# deb-src http://ppa.launchpad.net/deadsnakes/ppa/ubuntu xenial main

# Next run these lines to add key
key=F23C5A6CF475977595C89F51BA6932366A755776

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ${key}

# Update and install Python 3.6 build dependenacies
sudo apt-get update

sudo apt-get build-dep python3.6
