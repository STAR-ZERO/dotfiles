HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# 上書きせずに追加する
setopt append_history
# zsh の開始・終了時刻をヒストリファイルに書き込む
setopt extended_history
# 古い履歴を削除する必要がある場合、まず重複しているものから削除する
setopt hist_expire_dups_first
# 直前と同じコマンドラインはヒストリに追加しない
setopt hist_ignore_dups
# 同時に起動したzshの間でヒストリを共有する
setopt share_history
# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups
# ヒストリファイルに保存するとき、すでに重複したコマンドがあったら古い方を削除する
setopt hist_save_nodups
# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space
# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks
# ヒストリを呼び出してから実行する間に一旦編集できる状態になる
setopt hist_verify
