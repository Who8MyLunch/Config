#!/bin/bash

#---------------------------------------
# General stuff in my home folder
for file in bashrc bash_aliases gitconfig gitignore toprc
do
    echo "copying $f"
    eval cp ./_$file $HOME/.$file
done

#------------------------------------
# Python stuff

mkdir $HOME/wheelhouse   # not sure if this is needed or not???

# https://pip.readthedocs.io/en/latest/user_guide/#configuration
file=pip.conf
dest=$HOME/.config/pip/

mkdir -p $dest
cp $file $dest

# https://towardsdatascience.com/how-to-automatically-import-your-favorite-libraries-into-ipython-or-a-jupyter-notebook-9c69d89aa343
# http://ipython.readthedocs.io/en/stable/config/extensions/autoreload.html
file=ipython_startup.ipy
dest=$HOME/.ipython/profile_default/startup

mkdir -p $dest
cp $file $dest

