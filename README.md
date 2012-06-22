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

* Shougo/neocomplcache-snippets-complete

* Shougo/unite.vim

* scrooloose/syntastic
  required jshint

* quickrun.vim

* project.tar.gz

* ShowMarks

    modify ~/vim/bundle/ShowMarks/plugin/showmarks.vim line115  

        let s:all_marks = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKL...
  ↓ ↓ ↓

        let s:all_marks = "abcdefghijklmnopqrstuvwxyz"

* BufOnly.vim

* kchmck/vim-coffee-script

* tpope/vim-rails

* ujihisa/unite-colorscheme


