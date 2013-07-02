set nocompatible

if has('vim_starting')
  set runtimepath+=~/.vim/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
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
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'ack.vim'
NeoBundle 'kana/vim-fakeclip'
NeoBundle 'estin/htmljinja'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'vim-tags'

filetype plugin indent on

" NeoBundleCheck
