# Install & Setting
###git clone

```
$ git clone git@github.com:STAR-ZERO/dotfiles.git ~/dotfiles
```

###submodule init,update

```
$ cd ~/dotfiles
$ git submodule init
$ git submodule update
```

###create symbolic link

```
$ ln -s ~/dotfiles/_zshrc ~/.zshrc
$ ln -s ~/dotfiles/_zshenv ~/.zshenv
$ ln -s ~/dotfiles/zsh.d ~/.zsh.d
$ ln -s ~/dotfiles/_vimrc ~/.vimrc
$ ln -s ~/dotfiles/_gvimrc ~/.gvimrc
$ ln -s ~/dotfiles/vim ~/.vim
$ ln -s ~/dotfiles/_tmux.conf ~/.tmux.conf
$ ln -s ~/dotfiles/_gitconfig ~/.gitconfig
$ ln -s ~/dotfiles/_gitignore ~/.gitignore
$ ln -s ~/dotfiles/_xvimrc ~/.xvimrc
$ ln -s ~/dotfiles/_vrapperrc ~/.vrapperrc
$ ln -s ~/dotfiles/_ackrc ~/.ackrc
$ ln -s ~/dotfiles/bundler-exec/bundler-exec.sh ~/.bundler-exec.sh
```

# font patch
see [vim-powerline/fontpatcher at develop · Lokaltog/vim-powerline](https://github.com/Lokaltog/vim-powerline/tree/develop/fontpatcher)

```
$ brew install fontforge
$ git clone https://github.com/Lokaltog/vim-powerline.git vim-powerline
$ fontforge -script ./vim-powerline/fontpatcher/fontpatcher ~/Library/Fonts/Ricty-Regular.ttf
$ fontforge -script ./vim-powerline/fontpatcher/fontpatcher ~/Library/Fonts/Ricty-Bold.ttf
```

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

### Install

```
$ brew install --disable-etcdir zsh 
```

##### set default shell

```
$ sudo vi /etc/shells
```

Add the following to the end

```
/usr/local/bin/zsh
```

set login shell

```
$ chpass -s /usr/local/bin/zsh
```

### tmux

```
$ brew install tmux
```

### z.sh

```
$ brew isntall z
```

### ack

```
$ brew install ack
```

# Vim Setting
Vim setting fils
Use MacVim http://code.google.com/p/macvim-kaoriya/

### plugin install (Vim command)

```
:NeoBundleInstall
```

#### ctags

```
$ brew install ctags
```

# tmux setting
### clipboard

```
$ brew install reattach-to-user-namespace
```

### tmux-powerline

```
$ brew install https://raw.github.com/Homebrew/homebrew-dupes/master/grep.rb
$ cd ~/bin
$ git clone git@github.com:STAR-ZERO/tmux-powerline.git
```

