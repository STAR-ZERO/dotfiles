#emacsキーバインド
bindkey -e

#Homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Editor
export EDITOR='vim'

# Java
export JAVA_HOME=`/usr/libexec/java_home -v "1.8"`

# Android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools/bin

# Conscript
export CONSCRIPT_HOME="$HOME/.conscript"
export CONSCRIPT_OPTS="-XX:MaxMetaspaceSize=512M -Dfile.encoding=UTF-8"
export PATH=$CONSCRIPT_HOME/bin:$PATH

# user bin
BIN_DIR=~/bin
export PATH=$PATH:$BIN_DIR
for BIN_SUB in `ls -F ${BIN_DIR}/ | grep /`
do
    BIN_SUB=`echo $BIN_SUB | sed -e "s/\///"`
    export PATH=$PATH:$BIN_DIR/$BIN_SUB
done

# rbenv
if which rbenv > /dev/null; then
    export PATH=$HOME/.rbenv/bin:${HOME}/.rbenv/shims:$PATH
    eval "$(rbenv init -)"
fi

# pyenv
if which pyenv > /dev/null; then
    eval "$(pyenv init -)"
fi

# GVM(go version manager)
[[ -s "${HOME}/.gvm/scripts/gvm" ]] && source "${HOME}/.gvm/scripts/gvm"

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# unzip
export PATH=/usr/local/opt/unzip/bin:$PATH

# direnv
eval "$(direnv hook zsh)"

typeset -U path PATH
