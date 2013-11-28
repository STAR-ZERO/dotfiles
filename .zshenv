#Homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Java
export JAVA_HOME=/Library/Java/Home

#Android
export ANDROID_HOME="/Applications/Android Studio.app/sdk"
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

#AWS
export AWS_HOME=~/bin/AWS
export AWS_CREDENTIAL_FILE=$AWS_HOME/credential-file-path
export EC2_REGION=ap-northeast-1

# AWS EC2
export AWS_EC2_HOME=~/bin/EC2
export PATH=$PATH:$AWS_EC2_HOME/bin

# AWS RDS
export AWS_RDS_HOME=~/bin/RDSCli
export PATH=$PATH:$AWS_RDS_HOME/bin

# AWS AutoScaling
export AWS_AUTO_SCALING_HOME=~/bin/AutoScaling
export PATH=$PATH:$AWS_AUTO_SCALING_HOME/bin

#user bin
BIN_DIR=~/bin
export PATH=$PATH:$BIN_DIR
for BIN_SUB in `ls -F ${BIN_DIR}/ | grep /`
do
    BIN_SUB=`echo $BIN_SUB | sed -e "s/\///"`
    export PATH=$PATH:$BIN_DIR/$BIN_SUB
done

# rbenv
if [ -f $HOME/.rbenv/bin/rbenv ]; then
    export PATH=$HOME/.rbenv/bin:${HOME}/.rbenv/shims:$PATH
    eval "$(rbenv init -)"
fi

# phpenv
if [ -f $HOME/.phpenv/bin/phpenv ]; then
    export PATH=$HOME/.phpenv/bin:$PATH
    eval "$(phpenv init -)"
fi

# nvm
[[ -f ~/.nvm/nvm.sh ]] && source ~/.nvm/nvm.sh

# gvm
[[ -f ~/.gvm/bin/gvm-init.sh ]] && source ~/.gvm/bin/gvm-init.sh

# svm
export PATH=~/.svm:$PATH
export SCALA_HOME=~/.svm/current/rt
export PATH=$SCALA_HOME/bin:$PATH

# pvm
[[ -f ~/.gvm/bin/gvm-init.sh ]] && source ~/.pvm/pvm.sh

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Bundler binstabs
export PATH=./bundle_bin:$PATH

# Editor
export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

