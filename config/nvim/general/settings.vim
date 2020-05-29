" Use the system clipboard
set clipboard+=unnamedplus

" Line numbers
set number 

"####################### From the defoult Coc config ##########################
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
"################### End from the defoult Coc config ##########################

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

" Open folds for git buffers
autocmd! FileType git setlocal foldlevel=1

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
