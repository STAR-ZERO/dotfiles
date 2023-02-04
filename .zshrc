ZSH=$HOME/.zsh.d

fpath=(~/.zsh.d/completions  ~/.zsh.d/zsh-completions/src ~/.zsh.d/cd-bookmark(N-/) $fpath)

autoload -Uz cd-bookmark

for file in $ZSH/lib/*.zsh; do
    source $file
done
unset file

# Force repo to run with Python3
function repo() {
  command python3 ~/bin/repo $@
}

