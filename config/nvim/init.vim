" Backwards compatible
set nocompatible
filetype plugin indent on

" change the mapleader from \ to ,
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Disable ex mode
nnoremap Q :

" Line numbers
set number relativenumber

" Plugins
packadd minpac
call minpac#init()

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

call minpac#add('k-takata/minpac', {'type': 'opt'})

" Vinegar
call minpac#add('tpope/vim-vinegar')

" FZF
set rtp+=/usr/local/opt/fzf
nnoremap <C-p> :<C-u>FZF<CR>

:imap eu <Esc>

" ALE for linting
call minpac#add('dense-analysis/ale')
let g:ale_sign_column_always = 1
let g:ale_linters = {
\  'markdown': ['prettier'],
\ 'javascript': ['eslint'],
\}
let g:ale_fixers = {
\   'markdown': ['prettier'],
\   'javascript': ['prettier'],
\}
" Mappings in the style of unimpaired-next
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)

