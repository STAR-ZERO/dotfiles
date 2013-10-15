setlocal expandtab
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4

if !exists('b:undo_indent')
  let b:undo_indent = ''
endif
let b:undo_indent .= '| setlocal '.join([
\   'expandtab<',
\   'tabstop<',
\   'shiftwidth<',
\   'softtabstop<',
\ ])
