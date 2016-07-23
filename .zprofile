#emacsキーバインド
bindkey -e

#Homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Editor
export EDITOR='vim'

# Java
export JAVA_HOME=`/System/Library/Frameworks/JavaVM.framework/Versions/A/Commands/java_home -v "1.7"`

#Android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

#user bin
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

# GVM(go version manager)
[[ -s "${HOME}/.gvm/scripts/gvm" ]] && source "${HOME}/.gvm/scripts/gvm"

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# direnv
eval "$(direnv hook zsh)"

# XDG Base Directory Specification
export XDG_CONFIG_HOME=~/.config

typeset -U path PATH
