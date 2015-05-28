set nocompatible

if has('vim_starting')
  set runtimepath+=~/.vim/neobundle.vim/
endif

 call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
    \ 'windows' : 'make -f make_mingw32.mak',
    \ 'cygwin' : 'make -f make_cygwin.mak',
    \ 'mac' : 'make -f make_mac.mak',
    \ 'unix' : 'make -f make_unix.mak',
  \ },
\ }
NeoBundle has('lua') ? 'Shougo/neocomplete' : 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'BufOnly.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'closetag.vim'
NeoBundle 'tpope/vim-rails'
NeoBundle 'surround.vim'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'violetyk/cake.vim'
NeoBundle 'basyura/unite-rails'
NeoBundle 'STAR-ZERO/vim-tomorrow-theme'
NeoBundle 'AnsiEsc.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'ack.vim'
NeoBundle 'kana/vim-fakeclip'
NeoBundle 'estin/htmljinja'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'vim-tags'
NeoBundle 'tpope/vim-cucumber'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'tpope/vim-haml'
NeoBundle 'othree/html5.vim'
NeoBundle 'tyru/caw.vim'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'

call neobundle#end()

" NeoBundleCheck
