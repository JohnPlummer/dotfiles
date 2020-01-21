" Backwards compatible
set nocompatible
filetype plugin indent on

" map jk to esc
noremap! jk <Esc>
vnoremap jk <Esc>

" change the mapleader from \ to ,
let mapleader=","

" Use the system clipboard
set clipboard+=unnamedplus

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Buffer management
:nnoremap <leader>b :buffers<CR>:buffer<Space>

" Disable ex mode
nnoremap Q :

" Line numbers
set number relativenumber

" Make the cursor actually visible
set cursorline

" Wordwrap
set wrap linebreak nolist

" Plugins
packadd minpac
call minpac#init()

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

call minpac#add('k-takata/minpac', {'type': 'opt'})

" Random Tim Pope plugins
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-vinegar')
call minpac#add('tpope/vim-repeat')

" NerdCommenter
call minpac#add('preservim/nerdcommenter')
let g:NERDSpaceDelims = 1 " Add space after delimiter
let g:NERDDefaultAlign = 'left' " Left align delimiters
let g:NERDCommentEmptyLines = 1 " Also comment empty lines

" FZF
set rtp+=/usr/local/opt/fzf
nnoremap <C-p> :<C-u>FZF<CR>

" Markdown
call minpac#add('godlygeek/tabular')
call minpac#add('plasticboy/vim-markdown')
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit = 1
set conceallevel=2

call minpac#add('iamcco/markdown-preview.nvim') " :call mkdp#util#install()
nmap <leader>p <Plug>MarkdownPreview

" ALE for linting
call minpac#add('dense-analysis/ale')
let g:ale_sign_column_always = 1
let g:ale_linters = {
\  'markdown': ['prettier'],
\ 'javascript': ['eslint'],
\ 'go': ['golint', 'gofmt'],
\}
let g:ale_fixers = {
\   'markdown': ['prettier'],
\   'javascript': ['prettier'],
\   'go': ['gofmt'],
\}

" Mappings in the style of unimpaired-next
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)
nmap <silent> <leader>f <Plug>(ale_fix)

