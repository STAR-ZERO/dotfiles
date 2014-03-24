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

## Install Package

```
$ cd ~/dotfiles
$ brew bundle
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
### 256color
Preferences… > Profiles > Terminal > Report Terminal Type  
select `xterm-256color`

### font
Preferences… > Profiles > Text > Change font  
select `Ricty for powerline`

- Regular font: 16pt Ricty Regular for Powerline
- Regular font: 14pt Monaco

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
Vim setting fils
Use MacVim http://code.google.com/p/macvim-kaoriya/

### plugin install (Vim command)

```
:NeoBundleInstall
```

