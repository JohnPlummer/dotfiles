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

" Current path to clipboard
nnoremap <silent> <leader>cp :let @+=expand("%:p")<CR>

" Disable ex mode
nnoremap Q :

" Line numbers
set number relativenumber

" Make the cursor actually visible
set cursorline

" Wordwrap
set wrap linebreak nolist

" Make splits easier
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
set splitbelow
set splitright

" Spelling
nnoremap <silent> <leader>s :set spell! spelllang=en_gb<CR>
set spellfile=$HOME/Dropbox/Config/vim/spell/en.utf-8.add

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
call minpac#add('tpope/vim-fugitive')

" NerdCommenter
call minpac#add('preservim/nerdcommenter')
let g:NERDSpaceDelims = 1 " Add space after delimiter
let g:NERDDefaultAlign = 'left' " Left align delimiters
let g:NERDCommentEmptyLines = 1 " Also comment empty lines

" FZF
call minpac#add('junegunn/fzf.vim')
set rtp+=/usr/local/opt/fzf
nnoremap <C-p> :FZF<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-t> :Tags<CR>
nnoremap <C-f> :Rg<CR>
" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R .'
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

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

