" Backwards compatible
set nocompatible
filetype plugin indent on

" map jk to esc
noremap! jk <Esc>
vnoremap jk <Esc>

" Toggle hlsearch with <leader>hs
nmap <leader>hs :set hlsearch! hlsearch?<CR>

"This allows for change paste motion cp{motion}
nmap <silent> cp :set opfunc=ChangePaste<CR>g@
function! ChangePaste(type, ...)
    silent exe "normal! `[v`]\"_c"
    silent exe "normal! p"
endfunction

" Make Y yank till end of line
nnoremap Y y$

" change the mapleader from \ to ,
let mapleader=","

" Use the system clipboard
set clipboard+=unnamedplus

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Open journal file
nnoremap <Leader>gt :e ~/Dropbox/markdown/<C-r>=strftime("%Y-%m-%d") . '.md'<cr><cr>G

" Current path to clipboard
nnoremap <silent> <leader>cp :let @+=expand("%")<CR>

" Disable ex mode
nnoremap Q :

" Line numbers
set number 

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
source $HOME/.config/nvim/plug-config/minipac.vim
source $HOME/.config/nvim/plug-config/ale.vim
source $HOME/.config/nvim/plug-config/dash.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/gh-line.vim
source $HOME/.config/nvim/plug-config/goyo-limelight.vim
source $HOME/.config/nvim/plug-config/grepper.vim
source $HOME/.config/nvim/plug-config/gruvbox.vim
source $HOME/.config/nvim/plug-config/markdown.vim
source $HOME/.config/nvim/plug-config/nerdcommenter.vim
source $HOME/.config/nvim/plug-config/tim-pope.vim
