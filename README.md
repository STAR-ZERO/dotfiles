# Install & Setting
###git clone
    $ git clone git://github.com/mitukiii/dotfiles.git ~/dotfiles

###create symbolic link

    $ ln -s ~/dotfiles/_zshrc ~/.zshrc
    $ ln -s ~/dotfiles/_zshenv ~/.zshenv
    $ ln -s ~/dotfiles/_vimrc ~/.vimrc
    $ ln -s ~/dotfiles/_gvimrc ~/.gvimrc
    $ ln -s ~/dotfiles/vimfiles ~/.vim
    $ ln -s ~/dotfiles/_tmux.conf ~/.tmux.conf
    $ ln -s ~/dotfiles/_gitconfig ~/.gitconfig
    $ ln -s ~/dotfiles/bundler-exec/bundler-exec.sh ~/.bundler-exec.sh

###submodule init,update

    $ cd ~/dotfiles
    $ git submodule init
    $ git submodule update

# zsh Setting
write later

# Vim Setting
Vim setting fils
Use MacVim http://code.google.com/p/macvim-kaoriya/

###create NeoBundle directory

    $ mkdir ~/.vim/bundle

###plugin install (Vim command)

    :NeoBundleInstall

###Make vimproc
    $ cd ~/.vim/bundle/vimproc
    $ make -f make_mac.mak

# tmux setting
    $ $ brew install reattach-to-user-namespace

# bundler-exec setting
add to zshrc

    echo "[ -f ~/.bundler-exec.sh ] && source ~/.bundler-exec.sh" >> ~/.zshrc
