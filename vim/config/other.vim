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

" tpl
autocmd BufNewFile,BufRead *.tpl set filetype=htmljinja

" syntastic
let g:syntastic_mode_map = { 'mode': 'active',
  \ 'active_filetypes': [],
  \ 'passive_filetypes': [] }
let g:syntastic_javascript_checker = 'jshint'
