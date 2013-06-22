" ctags
let g:vim_tags_main_file = '.tags'
let g:vim_tags_project_tags_command = "/usr/local/bin//ctags -f .tags -R {OPTIONS} {DIRECTORY} 2>/dev/null"
let g:vim_tags_gems_tags_command = "/usr/local/bin/ctags -f .Gemfile.lock.tags -R {OPTIONS} `bundle show --paths` 2>/dev/null"

set tags+=.tags
set tags+=.Gemfile.lock.tags

nnoremap <silent> ,tg :TagsGenerate<CR>
