#!/bin/bash

for f in bashrc bash_aliases gitconfig gitignore toprc
do
    echo "copying $f"
    echo "./_$f" "$HOME/.$f"
done
