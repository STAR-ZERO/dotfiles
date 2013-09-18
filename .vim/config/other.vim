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

" syntastic
let g:syntastic_mode_map = { 'mode': 'active',
  \ 'active_filetypes': [],
  \ 'passive_filetypes': [] }
let g:syntastic_javascript_checkers = ['jshint']

" vim-airline
let g:airline_theme='tomorrow'
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline#extensions#branch#symbol = '⭠'
let g:airline#extensions#readonly#symbol = '⭤'
let g:airline_linecolumn_prefix = '⭡'
