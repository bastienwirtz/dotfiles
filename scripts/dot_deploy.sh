#!/bin/bash

# Dotfiles install script
#
# @author Bastien <bastien.wirt@gmail.com>

DOTFILES_ROOT=$(pwd)

for dotfile in $(ls --almost-all $DOTFILES_ROOT)
do
  printf "Installing $dotfile"

  src=$DOTFILES_ROOT/$dotfile
  dest=$HOME/$dotfile
 
  if [ -h $dest ]
  then
    rm $dest
  fi

  if [ -f $dest ] || [ -d $dest ]
  then
    backup=$dest.$(date +%Y%m%d)
    printf " (backup: $backup) "
    mv $dest $backup
  fi

  ln -s $src $dest
  
  if [ $? -ne 0 ]
  then
    printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
  else
    printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
  fi
done
