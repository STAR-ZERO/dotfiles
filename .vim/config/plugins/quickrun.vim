" 実行
nnoremap <silent> <Space>t :QuickRun<CR>
" 実行結果クリア
nnoremap <silent> <Space>q :bwipeout [quickrun<CR>
" 強制終了
nnoremap <expr><silent> <C-c> quickrun#is_running() ? quickrun#sweep_sessions() : "\<C-c>"

let g:quickrun_config = {}
let g:quickrun_config['_'] = {}
let g:quickrun_config['_']['runner'] = 'vimproc'
let g:quickrun_config['_']['runner/vimproc/updatetime'] = 100
let g:quickrun_config['_']['hook/time/enable'] = 1
let g:quickrun_config['_']['split'] = 'belowright 8sp'
let g:quickrun_config['_']['running_mark'] = 'Running...'

autocmd FileType quickrun AnsiEsc
