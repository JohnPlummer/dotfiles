call minpac#add('francoiscabrol/ranger.vim')
call minpac#add('rbgrouleff/bclose.vim')

" don't use <leader>f
let g:ranger_map_keys = 0

" open ranger when vim open a directory
let g:ranger_replace_netrw = 1 
nnoremap - :Ranger<CR>
