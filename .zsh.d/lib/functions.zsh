# z.sh
. `brew --prefix`/etc/profile.d/z.sh

# tmux自動起動
if [ -z $TMUX ]; then
    if $(tmux has-session); then
        tmux attach
    else
        tmux
    fi
fi

## ssh 時に新規ウィンドウを作る
#ssh_tmux() {
#    ssh_cmd="ssh $@"
#
#    # 引数からホスト名を探してそれをウィンドウ名にする
#    for i in $(seq 1 $#);do
#        arg=$argv[$i]
#        if [[ $arg =~ "@" ]] ; then
#            name=${arg##*@}
#        fi
#    done
#    tmux new-window -n "$name" "$ssh_cmd"
#}
#if [[ $TERM =~ ^"screen" ]] ; then
#    alias ssh=ssh_tmux
#fi

# `cd`で`ls`
# http://qiita.com/yuyuchu3333/items/b10542db482c3ac8b059
function chpwd() {
    ls_abbrev
}
fucntion ls_abbrev() {
   # -a : Do not ignore entries starting with ..
    # -C : Force multi-column output.
    # -F : Append indicator (one of */=>@|) to entries.
    local cmd_ls='ls'
    local -a opt_ls
    opt_ls=('-aCF' '--color=always')
    case "${OSTYPE}" in
        freebsd*|darwin*)
            if type gls > /dev/null 2>&1; then
                cmd_ls='gls'
            else
                # -G : Enable colorized output.
                #opt_ls=('-aCFG')
                opt_ls=('-lFG')
            fi
            ;;
    esac

    local ls_result
    ls_result=$(CLICOLOR_FORCE=1 COLUMNS=$COLUMNS command $cmd_ls ${opt_ls[@]} | sed $'/^\e\[[0-9;]*m$/d')

    local ls_lines=$(echo "$ls_result" | wc -l | tr -d ' ')

    if [ $ls_lines -gt 10 ]; then
        echo "$ls_result" | head -n 5
        echo '\e[1;35;5;196m...\e[m'
        echo "$ls_result" | tail -n 5
        echo "\e[0;38;5;200m \U1F680  $(command ls -1 -A | wc -l | tr -d ' ') files exist \U1F680 \e[m"
        echo ""
    else
        echo "$ls_result"
        echo ""
    fi
}

# ^で`cd ..`
function cdup() {
    if [ -z "$BUFFER" ]; then
        echo
        cd ..
        if type precmd > /dev/null 2>&1; then
            precmd
        fi
        local precmd_func
        for precmd_func in $precmd_functions; do
            $precmd_func
        done
        zle reset-prompt
    else
        zle self-insert '^'
    fi
}
zle -N cdup
bindkey '\^' cdup

# tmuxのWindow名変更
function precmd() {
    if [[ ( ${-} == *i* ) && ( ${TERM} == screen* ) ]]
    then
        echo -n "\ek$(hostname -s)\e\\"
    fi
}

# pecoで履歴(ctrl-r）
function peco-select-history() {
    typeset tac
    if which tac > /dev/null; then
        tac=tac
    else
        tac='tail -r'
    fi
    BUFFER=$(fc -l -n 1 | eval $tac | peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle -R -c
}
zle -N peco-select-history
bindkey '^r' peco-select-history

# pecoでcdb実行
# require https://github.com/mollifier/cd-bookmark
function peco-select-bookmark() {
    local selected_dir=$(cdb | peco | awk -F"|" '{ print $2 }')
    if [ -n "$selected_dir" ]; then
        cd `eval echo $selected_dir`
    fi
}
function cdbp() {
    peco-select-bookmark
}

# pecoでcdr実行
function peco-select-cdr() {
    local selected_dir=$(cdr -l | peco | awk '{ print $2 }')
    if [ -n "$selected_dir" ]; then
        cd `eval echo $selected_dir`
    fi
}
function cdrp() {
    peco-select-cdr
}
