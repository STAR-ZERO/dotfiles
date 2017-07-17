#!/bin/bash

DOTFILES_DIR=$(cd $(dirname $0) && pwd)
DOT_FILES=(.zshrc .zprofile .zshenv .zsh.d .vimrc .gvimrc .vim .tmux.conf .tmux-powerline .gitconfig .gitignore_global .xvimrc .ideavimrc)

for file in ${DOT_FILES[@]}
do
    if [ ! -e $HOME/$file ]; then
        ln -s $DOTFILES_DIR/$file $HOME/$file
    fi
done

# for cdr command
mkdir -p $HOME/.cache/shell/

# nvim setting file
mkdir -p $HOME/.config/nvim/
if [ ! -e $HOME/.config/nvim/init.vim ]; then
    ln -s $DOTFILES_DIR/.vimrc $HOME/.config/nvim/init.vim
fi

# nyaovim
mkdir -p $HOME/.config/nyaovim/
if [ ! -e $HOME/.config/nyaovim/nyaovimrc.html ]; then
    ln -s $DOTFILES_DIR/.config/nyaovim/nyaovimrc.html $HOME/.config/nyaovim/nyaovimrc.html
fi

