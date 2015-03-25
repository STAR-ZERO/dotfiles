#Homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Java
export JAVA_HOME=`/System/Library/Frameworks/JavaVM.framework/Versions/A/Commands/java_home -v "1.7"`

#Android
export ANDROID_HOME="/Applications/android-sdk"
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
if which rbenv > /dev/null; then
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

# svm
export PATH=~/.svm:$PATH
export SCALA_HOME=~/.svm/current/rt
export PATH=$SCALA_HOME/bin:$PATH

# pvm
[[ -f ~/.pvm/pvm.sh ]] && source ~/.pvm/pvm.sh

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Editor
export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

# cocos2d-x
# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Applications/cocos2d-x-3.4/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH
# Add environment variable NDK_ROOT for cocos2d-x
export NDK_ROOT=/Applications/android-ndk-r9d
export PATH=$NDK_ROOT:$PATH
# Add environment variable ANDROID_SDK_ROOT for cocos2d-x
export ANDROID_SDK_ROOT=$ANDROID_HOME
export PATH=$ANDROID_SDK_ROOT:$PATH
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH
# Add environment variable ANT_ROOT for cocos2d-x
export ANT_ROOT=/usr/local/bin
export PATH=$ANT_ROOT:$PATH

# direnv
eval "$(direnv hook zsh)"

