#!/bin/bash

DOTFILES_DIR=$(cd $(dirname $0) && pwd)
DOT_FILES=(.zshrc .zprofile .zshenv .zsh.d .vimrc .gvimrc .vim .tmux.conf .gitconfig .gitignore_global .xvimrc .ideavimrc)

for file in ${DOT_FILES[@]}
do
    if [ ! -e $HOME/$file ]; then
        ln -s $DOTFILES_DIR/$file $HOME/$file
    fi
done

# for cdr command
mkdir -p $HOME/.cache/shell/

# powerline
mkdir -p $HOME/.config
if [ ! -e $HOME/.config/powerline ]; then
    ln -s $DOTFILES_DIR/.config/powerline $HOME/.config/powerline
fi
