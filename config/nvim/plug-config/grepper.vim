" Grepping
call minpac#add('mhinz/vim-grepper')
let g:grepper = {}
let g:grepper.tools = ['grep', 'git', 'rg']
" Open Grepper-prompt for a particular grep-alike tool
nnoremap <leader>g :Grepper<cr>
" Search for the current word
nnoremap gc :Grepper -cword -noprompt<CR>
" Search for the current selection
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)
