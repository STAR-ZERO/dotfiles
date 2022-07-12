#emacsキーバインド
bindkey -e

#Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Editor
export EDITOR='vim'

# Java
export JAVA_HOME=`/usr/libexec/java_home -v "11"`

# Android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools/bin

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

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Google Cloud
export PATH="$HOME/google-cloud-sdk/bin:$PATH"
export PATH="$HOME/go_appengine:$PATH"
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then source "$HOME/google-cloud-sdk/path.zsh.inc"; fi
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then source "$HOME/google-cloud-sdk/completion.zsh.inc"; fi

# Flutter
export PATH=$HOME/bin/flutter/bin:$PATH

# direnv
eval "$(direnv hook zsh)"

typeset -U path PATH

