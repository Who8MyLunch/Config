#!/bin/bash

#---------------------------------------
# General stuff in my home folder
for file in bash_profile profile bashrc gitconfig gitignore toprc
do
    echo "copy $file"
    eval cp ./_$file $HOME/.$file
done

#------------------------------------
# Python stuff
mkdir -p $HOME/wheelhouse

# https://towardsdatascience.com/how-to-automatically-import-your-favorite-libraries-into-ipython-or-a-jupyter-notebook-9c69d89aa343
# http://ipython.readthedocs.io/en/stable/config/extensions/autoreload.html
file=ipython_startup.ipy
dest=$HOME/.ipython/profile_default/startup

mkdir -p $dest
cp $file $dest
echo "copy $file"

