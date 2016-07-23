let g:neocomplete#enable_at_startup = 1

let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Tabで選択
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Enterで補完確定
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction

" 辞書
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default'    : '',
    \ 'ruby'       : $HOME.'/.vim/dict/ruby.dict',
    \ 'javascript' : $HOME.'/.vim/dict/javascript.dict',
    \ }

