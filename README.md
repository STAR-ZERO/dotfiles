# dotfiles-vim
Vim setting fils
Use MacVim http://code.google.com/p/macvim-kaoriya/

## Install & Setting
###git clone
    $ git clone git@github.com:STAR-ZERO/dotfiles-vim.git ~/dotfiles

###submodule init,update

    $ cd ~/dotfiles
    $ git submodule init
    $ git submodule update


###create symbolic link
    $ ln -s ~/dotfiles/_vimrc ~/.vimrc
    $ ln -s ~/dotfiles/_gvimrc ~/.gvimrc
    $ ln -s ~/dotfiles/vimfiles ~/.vim


###plugin install (Vim command)
    :BundleInstall


##Plugins
Plugin is managed by Vundle. 

* Shougo/neocomplcache

* Shougo/unite.vim

* Shougo/vimshell

* Shougo/vimproc  
  compile required

        $ make -f make_mac.mak

* basyura/jslint.vim  
  required SpiderMoney or Rhino or node.js  
  example:

        $ brew install spidermonkey

* quickrun.vim

* project.tar.gz

* ShowMarks

    modify ~/vim/bundle/ShowMarks/plugin/showmarks.vim line115  

        let s:all_marks = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKL...
  ↓ ↓ ↓

        let s:all_marks = "abcdefghijklmnopqrstuvwxyz"



