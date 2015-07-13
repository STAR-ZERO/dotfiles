" closetag.vim
let g:closetag_html_style=1
autocmd Filetype html,xml,xsl,ant,eruby.html source ~/.vim/bundle/closetag.vim/plugin/closetag.vim

" Go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" previm
let g:previm_open_cmd = 'open -a Google\ Chrome'

" vim-rails
nnoremap <Space>r :R<CR>
nnoremap <Space>a :A<CR>
nnoremap <Space>rm :Rmodel<Space>
nnoremap <Space>rc :Rcontroller<Space>
nnoremap <Space>rv :Rview<Space>
nnoremap <Space>rs :Rspec<Space>
" unite-rails
nnoremap <C-x> :Unite rails/

" vim-airline
let g:airline_theme='tomorrow'
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline#extensions#branch#symbol = '⭠'
let g:airline#extensions#readonly#symbol = '⭤'
let g:airline_linecolumn_prefix = '⭡'

highlight Normal ctermbg=none

