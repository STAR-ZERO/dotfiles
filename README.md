## Setup

```
$ git clone git@github.com:STAR-ZERO/dotfiles.git ~/dotfiles
$ cd ~/dotfiles
$ git submodule update --init
$ ./setup.sh
```

## Install JDK

### SDKMAN

[Website](https://sdkman.io/)

### Install Temurin JDK

```
$ sdk install java 11.0.16-tem
```

## Homebrew

### Install Homebrew

[Website](http://brew.sh/)

### Install Package

```
$ cd ~/dotfiles
$ brew/setup.sh
```

## Git

### Default User (or GitHub Enterprise user)

Create `~/.gitconfig.local` and write below setting.

**Note**: If you use GitHub Enterprise, set user here for GitHub Enterprise.

```
[user]
	name = xxxx
	email = xxxx@xxxx
```

### github.com User

If you use git on a private PC, no need to set up this.

Create `~/.gitconfig.github` and write below setting.

```
[user]
	name = xxxx
	email = xxxx@xxxx
```

### GPG

How to setup GPG: [GitHubのGPG Keyを設定する](https://medium.com/@star_zero/github%E3%81%AEgpg-key%E3%82%92%E8%A8%AD%E5%AE%9A%E3%81%99%E3%82%8B-70e22874e533)

Add below setting to `~/.gitconfig.local` or `~/.gitconfig.github`.

```
[user]
	signingkey = XXXXXXXXXXXXXXXX
[commit]
	gpgsign = true
[gpg]
	program = gpg2
```

## Ruby tools

### rbenv

```
$ rbenv install --list
$ rbenv install xxxx
$ rbenv global xxxx
```

Check the following if an installation error occurs
- https://github.com/rbenv/ruby-build/issues/1998
- `$ OPENSSL_CFLAGS=-Wno-error=implicit-function-declaration rbenv install 3.1.2`

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
