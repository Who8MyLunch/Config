#!/bin/bash

# Semi-automated setup script.  Run this with sudo.

# Install Python via Package Manager
# Very helpful: http://askubuntu.com/questions/718922/how-to-install-python-3-5-1-on-wily-werewolf-15-10
# PPA for Python versions not yet in main distributions: https://launchpad.net/~fkrull/+archive/ubuntu/deadsnakes

# https://launchpad.net/~deadsnakes/+archive/ubuntu/ppa

apt-get install -y software-properties-common

https://launchpad.net/~deadsnakes/+archive/ubuntu/ppa
add-apt-repository ppa:deadsnakes/ppa
add-apt-repository ppa:deadsnakes/ppa

apt-get update


apt-get build-dep python3.6


https://askubuntu.com/questions/761357/how-to-automatically-update-etc-apt-sources-list-with-source-uris-on-ubuntu-16

