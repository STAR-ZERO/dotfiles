"検索ハイライトをesc2回で解除
nmap <ESC><ESC> :nohlsearch<CR><ESC>

"Insertモードを抜けたら日本語入力OFF
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

"検索結果を中心へ
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

"CTRL-hjklでウィンドウ移動
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

"挿入モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

"カーソル位置の単語をyankする
nnoremap vy vawy

