if has('nvim')
  set runtimepath+=$HOME/.vim
endif

runtime! dein/*.vim
runtime! config/*.vim
runtime! config/plugins/*.vim

filetype plugin indent on

