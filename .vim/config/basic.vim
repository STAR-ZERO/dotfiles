"カラースキーム
set t_Co=256
colorscheme Tomorrow-Night

set guifont=Ricty-RegularForPowerline:h16

set helplang=ja

"シンタックス
syntax on

"swpファイル
set swapfile
set directory=~/.vim/tmp

"バックアップファイルを作成しない
set nobackup

" crontab編集のため
set backupskip=/tmp/*,/private/tmp/*

"Vimからクリップボードにもコピー
set clipboard=unnamed

"コマンドラインの高さ
set cmdheight=1

"unodofileを作らない
set noundofile

"行番号
set number

"カーソル行をハイライト
set cursorline

"検索結果をハイライト
set hlsearch
"検索時に大文字小文字をを区別しない
set ignorecase
"検索で大文字があるときは区別
set smartcase
"検索ハイライトをesc2回で解除
nmap <ESC><ESC> :nohlsearch<CR><ESC>
"Insertモードを抜けたら日本語入力OFF
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

"削除でレジスタに格納しない
nnoremap x "_x

"タイトルをウィンドウ枠に表示
set title

"入力中のコマンドをステータスに表示する
set showcmd

"ステータスラインを常に表示
"set laststatus=2

"タブの文字数
set tabstop=4
"タブ・改行を表示
set list
"タブの表示変換,空白のみの行の表示変換
set lcs=tab:▸\ ,trail:-
"タブをスペースに置き換える
set expandtab

"オートインデント
set autoindent
"オートインデントの文字数
set shiftwidth=4

" 横分割時は下へ､ 縦分割時は右へ新しいウィンドウが開くようにする
set splitbelow
set splitright

" 検索結果を中心へ
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" CTRL-hjklでウィンドウ移動
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" 挿入モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" カーソル位置の単語をyankする
nnoremap vy vawy

"バッファを閉じる
noremap <C-Q> :bdel<CR>

"保存
noremap <C-S> :w<CR>
"連続ペースト
noremap <silent> <C-p> "0p<CR>

".vimrc .gvimrc編集
nnoremap <silent> ,ev :<C-u>edit $MYVIMRC<CR>
nnoremap <silent> ,eg  :<C-u>edit $MYGVIMRC<CR>

".vimrc .gvimrcリロード
nnoremap <silent> ,rv :<C-u>source $MYVIMRC \| if has('gui_running') \| source $MYGVIMRC \| endif <CR>
nnoremap <silent> ,rg :<C-u>source $MYGVIMRC<CR>

" :tabmove
nnoremap <silent> ,tm :tabmove

