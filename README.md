## Setup

```
$ git clone git@github.com:STAR-ZERO/dotfiles.git ~/dotfiles
$ cd ~/dotfiles
$ git submodule update --init
$ ./setup.sh
```

## Homebrew

### Install Homebrew

[Here](http://brew.sh/)

### Install Package

```
$ cd ~/dotfiles
$ brew/setup.sh
```

## Install XQuartz

[Here](http://xquartz.macosforge.org/landing/)

## Insall merge tool

[Meld](https://yousseb.github.io/meld/)

## Install font

[プログラミングフォント Myrica \| プログラミングフォント Myrica / Estable](http://myrica.estable.jp/)

Download and Install `Myrica.ttc`

## iTerm2 Setting

### 256color

Preferences… > Profiles > Terminal > Report Terminal Type  
select `xterm-256color`

### font

Preferences… > Profiles > Text > Font > Change font  
select `Myrica M:16pt`

Preferences… > Profiles > Text > Non-ASCII Font > Change font  
select `Monaco:14pt`

## zsh Setting

### set default shell

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

## Ruby tools

### rbenv

```
$ rbenv install xxxx
$ rbenv global xxxx
```

### Install Bunlder

```
$ gem install bundler
```

### bundle install

```
$ cd dotfiles/bundle
$ bundle install
```
