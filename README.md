# Install & Setting
###git clone
    $ git clone git://github.com/mitukiii/dotfiles.git ~/dotfiles

###create symbolic link

    $ ln -s ~/dotfiles/_zshrc ~/.zshrc
    $ ln -s ~/dotfiles/_vimrc ~/.vimrc
    $ ln -s ~/dotfiles/_gvimrc ~/.gvimrc
    $ ln -s ~/dotfiles/vimfiles ~/.vim
    $ ln -s ~/dotfiles/_screenrc ~/.screenrc

# zsh Setting
write later

# Vim Setting
Vim setting fils
Use MacVim http://code.google.com/p/macvim-kaoriya/

###submodule init,update

    $ cd ~/dotfiles
    $ git submodule init
    $ git submodule update

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


# screen setting
install vertical split screen

    $ git clone git://git.savannah.gnu.org/screen.git
    $ cd screen/src
    $ autoconf
    $ autoheader
    $ ./configure
    $ make
    $ sudo make install


