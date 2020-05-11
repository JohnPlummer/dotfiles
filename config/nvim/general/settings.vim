" Use the system clipboard
set clipboard+=unnamedplus

" Line numbers
set number 

" Make the cursor actually visible
set cursorline

" Indicate 80 columns
set colorcolumn=80

" Wordwrap
set wrap linebreak nolist

" Open new windows below or to the right
set splitbelow
set splitright

" Spelling
set spellfile=$HOME/Dropbox/Config/vim/spell/en.utf-8.add

hi Comment cterm=italic
syntax on


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

colorscheme gruvbox
