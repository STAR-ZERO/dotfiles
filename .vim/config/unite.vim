"入力モードで開始する
let g:unite_enable_start_insert=1
"ウィンドウ分割で右下に表示
let g:unite_split_rule="botright"
"ウィンドウ分割の高さ
let g:unite_winheight=15

let g:unite_source_history_yank_enable = 1
noremap <C-Y> :Unite history/yank<CR>
"バッファ一覧
"noremap <C-Y> :Unite buffer<CR>
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
"yank
"yank後に閉じるための設定
let yank_and_exit = {
    \ 'is_selectable' : 1,
    \ 'is_quit': 1,
    \ }
function! yank_and_exit.func(candidates)
    call unite#take_action('yank', a:candidates)
endfunction
call unite#custom#action('common', 'yank_and_exit', yank_and_exit)
unlet yank_and_exit
au FileType unite nnoremap <silent> <buffer> <expr> <C-Y> unite#do_action('yank_and_exit')
au FileType unite inoremap <silent> <buffer> <expr> <C-Y> unite#do_action('yank_and_exit')

"Unite上でのキーマッピング
function! s:unite_my_settings()
    "ESCキー2回で終了
    nmap <silent><buffer> <ESC><ESC> <Plug>(unite_exit)
    imap <silent><buffer> <ESC><ESC> <Plug>(unite_exit)
endfunction
autocmd FileType unite call s:unite_my_settings()

call unite#custom#profile('default', 'context', { 'prompt_direction': 'top'})

