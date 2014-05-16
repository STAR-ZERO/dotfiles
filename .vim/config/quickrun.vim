" QuickRun
nnoremap <Space>t :QuickRun<CR>
nnoremap <Space>q :bwipeout [quickrun<CR>
let g:quickrun_config = {}
let g:quickrun_config['_'] = {}
let g:quickrun_config['_']['runner'] = 'vimproc'
let g:quickrun_config['_']['runner/vimproc/updatetime'] = 100
let g:quickrun_config['*'] = {'split' : 'belowright 8sp', 'running_mark' : 'Running...'}

" RSpec
let g:quickrun_config['rspec/bundle'] = {}
let g:quickrun_config['rspec/bundle']['type'] = 'rspec/bundle'
let g:quickrun_config['rspec/bundle']['command'] = 'rspec'
let g:quickrun_config['rspec/bundle']['outputter'] = 'buffer'
let g:quickrun_config['rspec/bundle']['exec'] = 'bundle exec %c %o --color --tty %s'

let g:quickrun_config['rspec/normal'] = {}
let g:quickrun_config['rspec/normal']['type'] = 'rspec/normal'
let g:quickrun_config['rspec/normal']['command'] = 'rspec'
let g:quickrun_config['rspec/normal']['outputter'] = 'buffer'
let g:quickrun_config['rspec/normal']['exec'] = '%c %o --color --tty %s'

let g:quickrun_config['rspec/bin'] = {}
let g:quickrun_config['rspec/bin']['type'] = 'rspec/bin'
let g:quickrun_config['rspec/bin']['command'] = 'bin/rspec'
let g:quickrun_config['rspec/bin']['outputter'] = 'buffer'
let g:quickrun_config['rspec/bin']['exec'] = '%c %o --color --tty %s'

function! RSpecQuickRun()
    echo getcwd()
    if executable(getcwd() . "/bin/rspec")
        let b:quickrun_config = {'type': 'rspec/bin'}
    else
        let b:quickrun_config = {'type': 'rspec/bundle'}
    endif
endfunction

autocmd FileType quickrun AnsiEsc
autocmd BufReadPost *_spec.rb call RSpecQuickRun()

