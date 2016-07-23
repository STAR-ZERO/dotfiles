" Unite key prefix
nnoremap [unite] <Nop>
nmap <Space>u [unite]

" カレントディレクトリのファイル一覧
nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
" バッファ一覧
nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>

" config
"  - 開始時にinsertモード
"  - 下に開く
call unite#custom#profile('default', 'context', {
      \  'start_insert': 1,
      \  'direction': 'bot'
      \})

"Unite上でのキーマッピング
function! s:unite_my_settings()
  " ESCキーで終了
  imap <buffer> <ESC> <Plug>(unite_exit)
  nmap <buffer> <ESC> <Plug>(unite_exit)
  " cd
  nnoremap <silent><buffer><expr> <C-c> unite#do_action('cd')
  inoremap <silent><buffer><expr> <C-c> unite#do_action('cd')
endfunction
au FileType unite call s:unite_my_settings()

