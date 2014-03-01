setlocal expandtab
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2

if !exists('b:undo_indent')
  let b:undo_indent = ''
endif
let b:undo_indent .= '| setlocal '.join([
\   'expandtab<',
\   'tabstop<',
\   'shiftwidth<',
\   'softtabstop<',
\ ])

