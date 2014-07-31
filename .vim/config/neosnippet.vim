"snippetディレクトリ
let g:neosnippet#snippets_directory=$HOME.'/.vim/snippets'
"snippet展開
imap <C-y>     <Plug>(neosnippet_expand_or_jump)
smap <C-y>     <Plug>(neosnippet_expand_or_jump)
"snippet編集
noremap es :<C-U>NeoSnippetEdit<CR>
