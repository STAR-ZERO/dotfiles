#!/bin/bash

DOTFILES_DIR=$(cd $(dirname $0) && pwd)
DOT_FILES=(.zshrc .zprofile .zshenv .zsh.d .vimrc .gvimrc .vim .tmux.conf .tmux-powerline .gitconfig .gitignore_global .xvimrc .vrapperrc .ackrc .ideavimrc)

for file in ${DOT_FILES[@]}
do
    if [ ! -e $HOME/$file ]; then
        ln -s $DOTFILES_DIR/$file $HOME/$file
    fi
done

# neovim
# need path "export XDG_CONFIG_HOME=~/.config"
mkdir -p ~/.config
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim

# for cdr command
mkdir -p $HOME/.cache/shell/
