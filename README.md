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

# font patch
see [vim-powerline/fontpatcher at develop · Lokaltog/vim-powerline](https://github.com/Lokaltog/vim-powerline/tree/develop/fontpatcher)

    $ brew install fontforge
    $ git clone https://github.com/Lokaltog/vim-powerline.git vim-powerline
    $ fontforge -script ./vim-powerline/fontpatcher/fontpatcher ~/Library/Fonts/Ricty-Regular.ttf
    $ fontforge -script ./vim-powerline/fontpatcher/fontpatcher ~/Library/Fonts/Ricty-Bold.ttf

`Ricty-Regular-Powerline.ttf`, `Ricty-Bold-Powerline.ttf` created in current directory

Double-click to install

# iTerm2 Setting
### 256color
Preferences… > Profiles > Terminal > Report Terminal Type  
select `xterm-256color`

### font
Preferences… > Profiles > Text > Change font  
select `Ricty for powerline`

- Regular font: 16pt Ricty Regular for Powerline
- Regular font: 14pt Monaco

# zsh Setting

### oh-my-zsh

    $ git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

### tmux

    $ brew install tmux

### z.sh

    $ brew isntall z

# Vim Setting
Vim setting fils
Use MacVim http://code.google.com/p/macvim-kaoriya/

### Create NeoBundle directory

    $ mkdir ~/.vim/bundle

### plugin install (Vim command)

    :NeoBundleInstall

### Make vimproc
    $ cd ~/.vim/bundle/vimproc
    $ make -f make_mac.mak

# tmux setting
### clipboard
    $ brew install reattach-to-user-namespace

### tmux-powerline
    $ brew install https://raw.github.com/Homebrew/homebrew-dupes/master/grep.rb
    $ cd ~/bin
    $ git clone git@github.com:STAR-ZERO/tmux-powerline.git

# bundler-exec setting
add to zshrc

    echo "[ -f ~/.bundler-exec.sh ] && source ~/.bundler-exec.sh" >> ~/.zshrc
