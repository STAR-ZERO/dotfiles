
if [[ "$(uname -s)" == "NetBSD" ]]; then
  gls --color -d . &>/dev/null 2>&1 && alias ls='gls --color=tty'
else
  ls --color -d . &>/dev/null 2>&1 && alias ls='ls --color=tty' || alias ls='ls -G'
fi

alias lsa='ls -lah'
alias l='ls -la'
alias ll='ls -l'
alias la='ls -lA'
alias cl="clear"
alias sc="screen"
alias up="cd ../"
alias tmux="TERM=screen-256color-bce tmux"

alias cdb='cd-bookmark'
alias sed='gsed'

alias mvim='/Applications/MacVim.app/Contents/bin/mvim'
alias vim='nvim'
