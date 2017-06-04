#!/bin/sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/.dotfiles                    # dotfiles directory
olddir=~/.dotfiles_old             # old dotfiles backup directory
files="vimrc tmux.conf config/nvim/init.vim config/fish/config.fish"

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    if [ -e ~/.$file ]; then
        echo "Moving any existing dotfiles from ~ to $olddir"
        mkdir -p `dirname "$olddir/$file"`
        mv ~/.$file $olddir/$file
    fi
    echo "Creating symlink to $file in home directory."
    mkdir -p `dirname ~/.$file`
    ln -s $dir/$file ~/.$file
done

