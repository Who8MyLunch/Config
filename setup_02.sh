#!/bin/bash

# Semi-automated setup script.  Run this with sudo.

# Install Python via Package Manager
# Very helpful: http://askubuntu.com/questions/718922/how-to-install-python-3-5-1-on-wily-werewolf-15-10
# PPA for Python versions not yet in main distributions: https://launchpad.net/~fkrull/+archive/ubuntu/deadsnakes

add-apt-repository ppa:fkrull/deadsnakes
apt-get update

apt-get install -y software-properties-common

apt-get build-dep python3.6


