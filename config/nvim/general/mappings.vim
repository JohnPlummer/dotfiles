" ##################### Make vim sane ##########################################

" change the <leader> from \ to <space>
let mapleader=" "
" set the <localleader> to \
let maplocalleader = "\\"

" map jk to esc
noremap! jk <Esc>
vnoremap jk <Esc>

" Make Y yank till end of line
nnoremap Y y$

" Disable ex mode
nnoremap Q :

" ##################### Make vim easier ########################################

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Toggle hlsearch with <leader>hs
nmap <leader>hs :set hlsearch! hlsearch?<CR>

"This allows for change paste motion cp{motion}
nmap <silent> cp :set opfunc=ChangePaste<CR>g@
function! ChangePaste(type, ...)
    silent exe "normal! `[v`]\"_c"
    silent exe "normal! p"
endfunction

" Tab between buffers
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

" Close all buffers but this one
noremap <silent> <leader>bo :w <bar> %bd <bar> e# <CR>

" Current path to clipboard
nnoremap <silent> <leader>cp :let @+=expand("%")<CR>

" Make splits easier
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

" Spelling
nnoremap <silent> yos :set spell! spelllang=en_gb<CR>

" ##################### More specific mappings #################################

" Open journal file
nnoremap gt
	\ :e ~/Dropbox/markdown/<C-r>=strftime("%Y-%m-%d") . '.md'<cr><cr>G

" ##################### Plugin specific mappings ###############################
" in plug-config

