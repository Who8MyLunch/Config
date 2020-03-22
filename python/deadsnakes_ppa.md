
# Deadsnakes PPA

Update `/etc/apt/sources.list` to enable source files.  Maybe need to worry about possible
name differences between debian and ubuntu: https://askubuntu.com/questions/445487/what-debian-version-are-the-different-ubuntu-versions-based-on

This article is very useful: https://askubuntu.com/questions/38021/how-to-add-a-ppa-on-a-server


Add following lines to /etc/apt/sources.list:

    deb http://ppa.launchpad.net/deadsnakes/ppa/ubuntu bionic main
    deb-src http://ppa.launchpad.net/deadsnakes/ppa/ubuntu bionic main

Double check PPA key at site: http://ppa.launchpad.net/deadsnakes/ppa.
Helpful stuff: https://superuser.com/questions/620765/sudo-apt-key-adv-keyserver-keyserver-ubuntu-com-recv-7f0ceb10-command-return

    key=F23C5A6CF475977595C89F51BA6932366A755776
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ${key}

