autoload colors
colors

setopt prompt_subst

# PROMPT
PICT_CHAR=($'\U1F49A ' $'\U1F3B5 ' $'\U1F300 ' $'\U1F47B ' $'\U1F431 ' $'\U1F436 ' $'\U1F604 ' $'\U2728 ' $'\U1F4A3 ' $'\U1F3B8 ')
PROMPT=$'╭─ $PICT_CHAR[$[$RANDOM % ${#PICT_CHAR[@]} + 1]] \U23F0 %D %T\U23F0  \033[37m%~\033[0m 
╰ ➤ %{$fg_bold[cyan]%}%c%{$reset_color%} %{$fg_bold[blue]%}$(git_prompt_info)%{$reset_color%} '

# lsの色
export LSCOLORS="Gxfxcxdxbxegedabagacad"
export LS_COLORS="di=1;36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"

# 補完候補に色をつける
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# git情報の表示関連
ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})%{$fg[yellow]%}\U26A1 %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

# tmux環境変数
PROMPT="$PROMPT"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
