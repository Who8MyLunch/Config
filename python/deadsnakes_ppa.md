
# Deadsnakes PPA

Update `/etc/apt/sources.list` to enable source files.  
This article has everything:
https://askubuntu.com/questions/38021/how-to-add-a-ppa-on-a-server/38029#38029


Add following lines to /etc/apt/sources.list:

    deb http://ppa.launchpad.net/deadsnakes/ppa/ubuntu eoan main
    deb-src http://ppa.launchpad.net/deadsnakes/ppa/ubuntu eoan main

Double check PPA key at site: https://launchpad.net/~deadsnakes/+archive/ubuntu/ppa.

Helpful stuff: https://superuser.com/questions/620765/sudo-apt-key-adv-keyserver-keyserver-ubuntu-com-recv-7f0ceb10-command-return

    key=F23C5A6CF475977595C89F51BA6932366A755776
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ${key}
    
    
    
Maybe need to worry about possible name differences between debian and ubuntu: https://askubuntu.com/questions/445487/what-debian-version-are-the-different-ubuntu-versions-based-on


