" Backwards compatible
set nocompatible
filetype plugin indent on

source $HOME/.config/nvim/general/mappings.vim

"######################## Install Plugins & Themes ############################
" For Neovim: stdpath('data') . '/plugged'
call plug#begin(stdpath('data') . '/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Asheq/close-buffers.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rizzatti/dash.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'junegunn/gv.vim'
Plug 'sheerun/vim-polyglot'
Plug 'unblevable/quick-scope'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
Plug 'mhinz/vim-signify'
Plug 'honza/vim-snippets'
Plug 'godlygeek/tabular'
" Random Tim Pope plugins
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'liuchengxu/vim-which-key'

Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
call plug#end()

"############################## Plugin Config #################################
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/close-buffers.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/dash.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/goyo-limelight.vim
source $HOME/.config/nvim/plug-config/gv.vim
source $HOME/.config/nvim/plug-config/markdown.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/ranger.vim
source $HOME/.config/nvim/plug-config/rhubarb.vim
source $HOME/.config/nvim/plug-config/tabular.vim
source $HOME/.config/nvim/plug-config/whichkey.vim

"############################## Themes Config #################################
source $HOME/.config/nvim/themes/gruvbox.vim
source $HOME/.config/nvim/themes/nord.vim

colorscheme nord

"############################## Settings ######################################
source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/general/settings.vim
