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

