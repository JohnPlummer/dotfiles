" ALE for linting
call minpac#add('dense-analysis/ale')
let g:ale_sign_column_always = 1
let g:ale_linters = {
\  'markdown': ['mdl', 'writegood'],
\ 'javascript': ['eslint'],
\ 'go': ['golint', 'gofmt'],
\ 'ruby': ['rubocop'],
\}
let g:ale_fixers = {
\   'markdown': ['prettier'],
\   'javascript': ['prettier'],
\   'go': ['gofmt'],
\   'ruby': ['rubocop'],
\}

" Mappings in the style of unimpaired-next
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)
nmap <silent> <leader>f <Plug>(ale_fix)

" Pimp linting symbols
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
