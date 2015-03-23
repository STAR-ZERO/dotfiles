# Setup

```
$ git clone git@github.com:STAR-ZERO/dotfiles.git ~/dotfiles
$ cd ~/dotfiles
$ git submodule update --init
$ ./setup.sh
```

# Homebrew

## Install Homebrew

[Here](http://brew.sh/)

## Install XQuartz

[Here](http://xquartz.macosforge.org/landing/)

## Install Package

```
$ cd ~/dotfiles
$ brew/setup.sh
```

# font patch
see [vim-powerline/fontpatcher at develop · Lokaltog/vim-powerline](https://github.com/Lokaltog/vim-powerline/tree/develop/fontpatcher)

```
$ git clone https://github.com/Lokaltog/vim-powerline.git vim-powerline
$ fontforge -script ./vim-powerline/fontpatcher/fontpatcher ~/Library/Fonts/Ricty-Regular.ttf
$ fontforge -script ./vim-powerline/fontpatcher/fontpatcher ~/Library/Fonts/Ricty-Bold.ttf
```

`Ricty-Regular-Powerline.ttf`, `Ricty-Bold-Powerline.ttf` created in current directory

Double-click to install

# iTerm2 Setting

## Load Preferences

 Preferences… > General > Preferences >
 
 Check `Load preference from a custom folder or URL` and select directory `~/Dropbox/Config/iTerm2`


## Manual Setting

### 256color
Preferences… > Profiles > Terminal > Report Terminal Type  
select `xterm-256color`

### font
Preferences… > Profiles > Text > Change font  
select `Ricty for powerline`

- Regular font: 16pt Ricty Regular for Powerline
- Non-ASCII font: 14pt Monaco

# zsh Setting

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

# Vim Setting

Use [MacVim](https://github.com/splhack/macvim/releases)

### plugin install (Vim command)

```
:NeoBundleInstall
```

# Ruby tools

### rbenv

```
$ rbenv install xxxx
$ rbenv global xxxx
```

### Install Bunlder

```
$ gem isntall bundler
```

### bunle install

```
$ cd dotfiles/bunle
$ bundle install
```
