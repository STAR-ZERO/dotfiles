#!/bin/bash

DOTFILES_DIR=$(cd $(dirname $0) && pwd)
DOT_FILES=(.zshrc .zprofile .zshenv .zsh.d .vimrc .gvimrc .vim .gitconfig .gitignore_global .ideavimrc)

for file in ${DOT_FILES[@]}
do
    if [ ! -e $HOME/$file ]; then
        ln -s $DOTFILES_DIR/$file $HOME/$file
    fi
done

# for cdr command
mkdir -p $HOME/.cache/shell/

