#!/bin/bash

DOTFILES_DIR=$(cd $(dirname $0) && pwd)
DOT_FILES=(.zshrc .zshenv .zsh.d .vimrc .gvimrc .vim .tmux.conf .gitconfig .gitignore_global .xvimrc .vrapperrc .ackrc .bundler-exec)

for file in ${DOT_FILES[@]}
do
    ln -s $DOTFILES_DIR/$file $HOME/$file
done
