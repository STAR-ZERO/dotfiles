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

## Git - GPG

How to setup GPG: [GitHubのGPG Keyを設定する](https://medium.com/@star_zero/github%E3%81%AEgpg-key%E3%82%92%E8%A8%AD%E5%AE%9A%E3%81%99%E3%82%8B-70e22874e533)

Create `~/.gitconfig.local` and write below setting.

```
[user]
	signingkey = XXXXXXXXXXXXXXXX
[commit]
	gpgsign = true
[gpg]
	program = gpg2
```

## Insall merge tool

[Meld](https://yousseb.github.io/meld/)

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

## Vim

Using [vim-pathogen](https://github.com/tpope/vim-pathogen) as Vim plugin manager.

#### How to add Plugin

Use gitsubmodule.

like a below command.

```
$ git submodule add https://github.com/xxxx/yyyy.git .vim/bundle/zzzz
```

## FAQ

### How to update gitsubmodules

```
$ git submodule update --remote
```
