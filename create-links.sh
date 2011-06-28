#!/bin/bash
#
# create hack symlinks for dot files in ~/dot-files/
#
# clone 'dot-files' into ~/, chmod +x this file, and run
#

# eventually just make this read directory contents. fine for now
files=".vim .vimrc"

# change into home dir
cd ~/

# create symlinks. this will error out if files already exist
for i in ${files[@]}; do
  ln -s ~/dot-files/$i $i
done
