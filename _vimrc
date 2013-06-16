""Vundle設定
set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/neobundle.vim
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc'

NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet.git'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'project.tar.gz'
NeoBundle 'BufOnly.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'gregsexton/gitv'
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
NeoBundle 'derekwyatt/vim-scala'

filetype plugin indent on

"カラースキーム
set t_Co=256
colorscheme Tomorrow-Night

set guifont=Ricty\ for\ Powerline:h16

"シンタックス
syntax on

"swpファイル
set swapfile
set directory=~/.vim/tmp

"バックアップファイルを作成しない
set nobackup

"Vimからクリップボードにもコピー
set clipboard=unnamed

"コマンドラインの高さ
set cmdheight=1

"行番号
set number

"カーソル行をハイライト
set cursorline

"検索結果をハイライト
set hlsearch
"検索時に大文字小文字をを区別しない
set ignorecase
"検索ハイライトをesc2回で解除
nmap <ESC><ESC> :nohlsearch<CR><ESC>

"タイトルをウィンドウ枠に表示
set title

"入力中のコマンドをステータスに表示する
set showcmd

"ステータスラインを常に表示
set laststatus=2

"タブの文字数
set tabstop=4
"タブ・改行を表示
set list
"タブの表示変換,空白のみの行の表示変換
set lcs=tab:>-,trail:-
"タブをスペースに置き換える
set expandtab

"オートインデント
set autoindent
"オートインデントの文字数
set shiftwidth=4

" 横分割時は下へ､ 縦分割時は右へ新しいウィンドウが開くようにする
set splitbelow
set splitright

"HTMLはインデントを無効にする
autocmd FileType html set indentexpr&
autocmd FileType xhtml set indentexpr&

" CTRL-hjklでウィンドウ移動
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" カーソル位置の単語をyankする
nnoremap vy vawy

"バッファを閉じる
noremap <C-Q> :bdel<CR>

"保存
noremap <C-S> :w<CR>
"連続ペース
noremap <silent> <C-p> "0p<CR>

"crontabの時はバックアップしない
autocmd BufRead /tmp/crontab.* :set nobackup nowritebackup

".vimrc .gvimrc編集
nnoremap <silent> ,ev :<C-u>edit $MYVIMRC<CR>
nnoremap <silent> ,eg  :<C-u>edit $MYGVIMRC<CR>

".vimrc .gvimrcリロード
nnoremap <silent> ,rv :<C-u>source $MYVIMRC \| if has('gui_running') \| source $MYGVIMRC \| endif <CR>
nnoremap <silent> ,rg :<C-u>source $MYGVIMRC<CR>

" :tabmove
nnoremap <silent> ,tm :tabmove 

""fugitive
"git status
nnoremap <silent> ,gs :Gstatus<CR>
"git diff
nnoremap <silent> ,gd :Gdiff<CR>

""gitv
"ブラウザモード
nnoremap <silent> ,gk :Gitv<CR>
"ファイルモード
nnoremap <silent> ,gv :Gitv!<CR>

""neocomplcache設定
let g:neocomplcache_enable_at_startup=1
"ユーザー定義スニペット保存ディレクトリ
let g:neocomplcache_snippets_dir=$HOME.'/.vim/snippets'
"大文字が入力されるまで大文字小文字を無視する
let g:neocomplcache_enable_smart_case=1
"最初の候補を選択する
"let g:neocomplcache_enable_auto_select=1
"補完をキャンセル
inoremap <expr><C-H> neocomplcache#smart_close_popup()."\<C-H>"
"補完を表示
imap <C-K> <Plug>(neocomplcache_snippets_expand)
smap <C-K> <Plug>(neocomplcache_snippets_expand)
"スニペット編集
noremap es :<C-U>NeoComplCacheEditSnippets<CR>
"Enterで補完を確定(endwiseとの関係でおかしくなる対策）
function! s:my_crinsert()
    return pumvisible() ? neocomplcache#close_popup() : "\<Cr>"
endfunction
inoremap <silent> <CR> <C-R>=<SID>my_crinsert()<CR>
"TABで補完を選択
inoremap <expr><TAB> pumvisible() ? "<C-N>" : "<TAB>"


""Unite設定
"入力モードで開始する
let g:unite_enable_start_insert=1
"ウィンドウ分割で右下に表示
let g:unite_split_rule="botright"
"ウィンドウ分割の高さ
let g:unite_winheight=15
"バッファ一覧
noremap <C-Y> :Unite buffer<CR>
"ファイル一覧
noremap <C-N> :Unite -buffer-name=file file file/new<CR>
"レジスタ一覧
"noremap <C-Y> :Unite -buffer-name=register register<CR>
"最近使ったファイルの一覧
noremap <C-Z> :Unite file_mru<CR>
"前回のUniteバッファ
noremap <C-U> :UniteResume<CR>
"ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
"ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
"タブで開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-L> unite#do_action('tabopen')
au FileType unite inoremap <silent> <buffer> <expr> <C-L> unite#do_action('tabopen')
"CD
au FileType unite nnoremap <silent> <buffer> <expr> <C-C> unite#do_action('cd')
au FileType unite inoremap <silent> <buffer> <expr> <C-C> unite#do_action('cd')
"rec
au FileType unite nnoremap <silent> <buffer> <expr> <C-R> unite#do_action('rec')
au FileType unite inoremap <silent> <buffer> <expr> <C-R> unite#do_action('rec')
"Unite上でのキーマッピング
function! s:unite_my_settings()
    "ESCキー2回で終了
    nmap <silent><buffer> <ESC><ESC> q
    imap <silent><buffer> <ESC><ESC> <ESC>q
endfunction
autocmd FileType unite call s:unite_my_settings()

" syntastic
let g:syntastic_mode_map = { 'mode': 'active',
  \ 'active_filetypes': ['javascript', 'php'],
  \ 'passive_filetypes': [] }
let g:syntastic_javascript_checker = 'jshint'
let g:syntastic_phpcs_conf = '--standard=CakePHP'

" NERDTree
"NERDTreeの表示切り替え
noremap <C-E> :NERDTreeToggle<CR>
"隠しファイルを表示
let g:NERDTreeShowHidden=1

" closetag.vim
let g:closetag_html_style=1
au Filetype html,xml,xsl,ant,eruby source ~/.vim/bundle/closetag.vim/plugin/closetag.vim

" vim-rails
nnoremap <Space>r :R<CR>
nnoremap <Space>a :A<CR>
nnoremap <Space>rm :Rmodel<Space>
nnoremap <Space>rc :Rcontroller<Space>
nnoremap <Space>rv :Rview<Space>
nnoremap <Space>rs :Rspec<Space>
" unite-rails
nnoremap <C-x> :Unite rails/

" CakePHP
let g:cakephp_enable_auto_mode=1
nnoremap <Space>cc :Ccontroller<Space>
nnoremap <Space>cm :Cmodel<Space>
nnoremap <Space>cv :Cview<Space>

" QuickRun
nnoremap <Space>t :QuickRun<CR>
nnoremap <Space>q :bwipeout [quickrun<CR>
let g:quickrun_config = {}
let g:quickrun_config['_'] = {}
let g:quickrun_config['_']['runner'] = 'vimproc'
let g:quickrun_config['_']['runner/vimproc/updatetime'] = 100
let g:quickrun_config['*'] = {'split' : 'belowright 8sp', 'running_mark' : '(」・ω・)」うー!(/・ω・)/にゃー!'}

" RSpec
let g:quickrun_config['rspec/bundle'] = {}
let g:quickrun_config['rspec/bundle']['type'] = 'rspec/bundle'
let g:quickrun_config['rspec/bundle']['command'] = 'rspec'
let g:quickrun_config['rspec/bundle']['outputter'] = 'buffer'
let g:quickrun_config['rspec/bundle']['exec'] = 'bundle exec %c %o --color --tty %s'

let g:quickrun_config['rspec/normal'] = {}
let g:quickrun_config['rspec/normal']['type'] = 'rspec/normal'
let g:quickrun_config['rspec/normal']['command'] = 'rspec'
let g:quickrun_config['rspec/normal']['outputter'] = 'buffer'
let g:quickrun_config['rspec/normal']['exec'] = '%c %o --color --tty %s'

function! RSpecQuickRun()
  let b:quickrun_config = {'type': 'rspec/bundle'}
endfunction

autocmd FileType quickrun AnsiEsc
autocmd BufReadPost *_spec.rb call RSpecQuickRun()

