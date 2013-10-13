ZSH=$HOME/.zsh.d

fpath=(~/.zsh.d/zsh-completions/src $fpath)

for file in $ZSH/lib/*.zsh; do
    source $file
done
unset file

