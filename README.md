# Install & Setting
###git clone
    $ git clone git://github.com/mitukiii/dotfiles.git ~/dotfiles

###create symbolic link

    $ ln -s ~/dotfiles/_zshrc ~/.zshrc
    $ ln -s ~/dotfiles/_zshenv ~/.zshenv
    $ ln -s ~/dotfiles/_vimrc ~/.vimrc
    $ ln -s ~/dotfiles/_gvimrc ~/.gvimrc
    $ ln -s ~/dotfiles/vimfiles ~/.vim
    $ ln -s ~/dotfiles/_screenrc ~/.screenrc
    $ ln -s ~/dotfiles/_gitconfig ~/.gitconfig

# zsh Setting
write later

# Vim Setting
Vim setting fils
Use MacVim http://code.google.com/p/macvim-kaoriya/

###submodule init,update

    $ cd ~/dotfiles
    $ git submodule init
    $ git submodule update

###create NeoBundle directory

    $ mkdir ~/.vim/bundle

###plugin install (Vim command)

    :NeoBundleInstall

###Make vimproc
    $ cd ~/.vim/bundle/vimproc
    $ make -f make_mac.mak

# screen setting
install vertical split screen

    $ git clone git://git.savannah.gnu.org/screen.git
    $ cd screen/src
    $ autoconf
    $ autoheader
    $ ./configure
    $ make
    $ sudo make install


if autoconf not found

    $ brew install automake
    $ brew link autoconf

