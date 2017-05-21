# System Setup Notes

Some helpful links:

- https://help.ubuntu.com/community/AptGet/Howto
- https://help.ubuntu.com/community/CompilingEasyHowTo

# Compile from Source

https://passingcuriosity.com/2015/installing-python-from-source/


# General Practical Stuff

    $ sudo apt-get update
    $ sudo apt-get dist-upgrade

    $ sudo apt-get install -y openssh-server subversion git-core
    $ sudo apt-get install -y linux-headers-generic dkms build-essential gfortran
    $ sudo apt-get install -y libjpeg-dev libpng-dev libtiff-dev libwebp-dev liblcms2-dev libfreetype6-dev
    $ sudo apt-get install -y libxslt1-dev libxml2-dev                        
    $ sudo apt-get install -y liblapack-dev libblas-dev libopenblas-dev
    $ sudo apt-get install -y npm


# Update System Python

But what about Python 2 versus Python 3?  The easiest solution is to set an alias in one's .bashrc
file: http://askubuntu.com/questions/320996/make-default-python-command-to-use-python-3.

How to install latest Python version when the system is not quite up to date?  I would prefer to
do this through official package manager (apt-get).

Very helpful: http://askubuntu.com/questions/718922/how-to-install-python-3-5-1-on-wily-werewolf-15-10

    $ sudo apt-get -y install software-properties-common
    $ sudo add-apt-repository ppa:fkrull/deadsnakes

See available Python versions in updated packages:

    $ sudo apt-get update
    $ apt-cache search python3.5

Install desired version:

    $ sudo apt-get install python3.5 python3.5-dev


# Clean

    $ sudo apt-get -y autoclean
    $ sudo apt-get -y autoremove

# Python Package Manager (pip)

Recommend installing pip manually: https://pip.pypa.io/en/stable/installing/
- Download get-pip.py from above website
- Then run: ```sudo python3.5 get-pip.py```


# System versus User Python Packages

Python is installed by default on all (most?) linux systems.  I like to fiddle with my Python
environment all the time and yet I don't wish to modify the system Python.  So what to do??

On my last laptop I used a combination of two things:
- virtualenvwrapper
- Don't use `sudo` command with my Python stuff, but then how to install stuff?  Install to user
  space via `--user` option with relevant `pip` commands.  Seems to work fine, but it does add a
  tiny bit of overhead.


# Python scientific-computing stuff

    $ pip install -U wheel
    $ pip install -U numpy
    $ pip install -U scipy cython pillow matplotlib scikit-image scikit-learn pandas sympy


# Virtual Work Environments

https://virtualenvwrapper.readthedocs.org/en/latest/command_ref.html

Install via

    $ pip install --user virtualenvwrapper

Then follow the instructions included at the top of the shell script `~/.local/bin/virtualenvwrapper.sh`.
For me this involved the following:

    $ mkdir ~/.virtualenvs

Add the following lines to my .bashrc:

    export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.5
    export WORKON_HOME=$HOME/.virtualenvs
    export PROJECT_HOME=$HOME/Projects
    source $HOME/.local/bin/virtualenvwrapper.sh

Run source ~/.bashrc and you should be all set.  Test it out by running

    $ workon

You should see an empty list of available virtualenvironments.  See the docs for more details.

# Make a new env associated with a project
mkvirtualenv -a ~/Projects/ipynb_widget_canvas canvas


May need to fiddle around to allow new virtualenvs to inherit from user or system Python
