"行番号
set number

"シンタックス
syntax on

"256色
set t_Co=256

"バックアップファイルを作成しない(チルダファイル）
set nobackup

"swapファイルの場所を指定
set directory=~/.vim/tmp

"Vimからクリップボードにもコピー
set clipboard=unnamed

"タイトル表示
set title

"ステータスラインを常に表示
set laststatus=2

"カーソル行をハイライト
set cursorline

"検索結果をハイライト
set hlsearch
"検索時に大文字小文字をを区別しない
set ignorecase
"検索で大文字があるときは区別
set smartcase

"タブ数
set tabstop=4
"タブをスペースに置き換える
set expandtab

"タブ・改行を表示
set list
"タブの表示変換,空白のみの行の表示変換
set lcs=tab:▸\ ,trail:-

"ビープ音を鳴らさない
set visualbell t_vb=
set noerrorbells

"入力中のコマンドをステータスに表示する
set showcmd

"横分割時は下へ､ 縦分割時は右へ新しいウィンドウが開くようにする
set splitbelow
set splitright

