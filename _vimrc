""Vundle設定
set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neocomplcache-snippets-complete'
Bundle 'Shougo/unite.vim'
Bundle 'quickrun.vim'
Bundle 'project.tar.gz'
Bundle 'ShowMarks'
Bundle 'BufOnly.vim'
Bundle 'scrooloose/syntastic'
Bundle 'kchmck/vim-coffee-script'
Bundle 'ujihisa/unite-colorscheme'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'closetag.vim'
Bundle 'tpope/vim-rails'
Bundle 'surround.vim'
Bundle 'tpope/vim-endwise'
Bundle 'Shougo/vimproc'
Bundle 'karakaram/vim-quickrun-phpunit'
Bundle 'violetyk/cake.vim'

filetype plugin indent on

"シンタックス
syntax on

"swpファイル
set swapfile
set directory=~/.vim/tmp

"バックアップファイルを作成しない
set nobackup

"Vimからクリップボードにもコピー
set clipboard=unnamed,autoselect

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

"HTMLはインデントを無効にする
autocmd FileType html set indentexpr&
autocmd FileType xhtml set indentexpr&

"バッファを閉じる
noremap <C-Q> :bdel<CR>

"保存
noremap <C-S> :w<CR>

"crontabの時はバックアップしない
autocmd BufRead /tmp/crontab.* :set nobackup nowritebackup

".vimrc .gvimrc編集
nnoremap <silent> ,ev :<C-u>edit $MYVIMRC<CR>
nnoremap <silent> ,eg  :<C-u>edit $MYGVIMRC<CR>

".vimrc .gvimrcリロード
nnoremap <silent> ,rv :<C-u>source $MYVIMRC \| if has('gui_running') \| source $MYGVIMRC \| endif <CR>
nnoremap <silent> ,rg :<C-u>source $MYGVIMRC<CR>

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
noremap <C-P> :Unite buffer<CR>
"ファイル一覧
noremap <C-N> :Unite -buffer-name=file file file/new<CR>
"レジスタ一覧
noremap <C-Y> :Unite -buffer-name=register register<CR>
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

" CakePHP
let g:cakephp_enable_auto_mode=1
nnoremap <Space>cc :Ccontroller<Space>
nnoremap <Space>cm :Cmodel<Space>
nnoremap <Space>cv :Cview<Space>

" QuickRun
let g:quickrun_config = {}
let g:quickrun_config['_'] = {}
let g:quickrun_config['_']['runner'] = 'vimproc'
let g:quickrun_config['_']['runner/vimproc/updatetime'] = 100

" PHPUnit
augroup QuickRunPHPUnit
  autocmd!
  autocmd BufWinEnter,BufNewFile *Test.php set filetype=phpunit
augroup END
let g:quickrun_config['phpunit'] = {}
let g:quickrun_config['phpunit']['outputter'] = 'phpunit'
let g:quickrun_config['phpunit']['command'] = 'phpunit'
let g:quickrun_config['phpunit']['cmdopt'] = ''
let g:quickrun_config['phpunit']['exec'] = '%c %o %s'
let g:quickrun_config['phpunit']['outputter/phpunit/running_mark'] = 'running...'
let g:quickrun_config['phpunit']['outputter/phpunit/height'] = 3
let g:quickrun_config['phpunit']['outputter/phpunit/auto_open'] = 1

" RSpec
augroup QuickRunRSpec
  autocmd!
  autocmd BufWinEnter,BufNewFile *_spec.rb set filetype=ruby.rspec
augroup END
let g:quickrun_config['ruby.rspec'] = {}
let g:quickrun_config['ruby.rspec']['command'] = 'rspec'

