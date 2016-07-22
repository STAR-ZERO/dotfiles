if !&compatible
  set nocompatible
endif

"dein.vimの自動インストール
let s:cache_dir = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_dir . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif

let &runtimepath = s:dein_repo_dir .",". &runtimepath

"dein.vim設定
if dein#load_state(s:dein_dir)
  let s:toml_file = '~/.vim/dein/dein.toml'

  call dein#begin(s:dein_dir, [s:toml_file])
  call dein#load_toml(s:toml_file)
  call dein#end()
  call dein#save_state()
endif

"プラグインの自動インストール
if has('vim_starting') && dein#check_install()
  call dein#install()
endif

