#!/bin/bash

for f in bashrc bash_aliases gitconfig gitignore toprc
do
    echo "copying $f"
    eval cp ./_$f $HOME/.$f
done
