call minpac#add('liuchengxu/vim-which-key')

" `G` key map for Goto
let g:goto_whichkey_map = {
     \ 'name' : 'goto',
     \ 'b' : 'browse (github)',
     \ 'l' : '(git) log',
     \ 'i' : 'implementation',
     \ 'r' : 'references',
     \ 'd' : 'declaration',
     \ 'y' : 'type declaration',
     \ 't' : 'todays note',
     \ 'f' : 'edit file',
     \ 'x' : 'view file',
     \}

nnoremap <silent> g :silent WhichKey 'g'<CR>
vnoremap <silent> g :silent <c-u> :silent WhichKeyVisual 'g'<CR>
call which_key#register('g', 'g:goto_whichkey_map')

" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Map localleader to which_key
nnoremap <silent> <localleader> :silent WhichKey '\\'<CR>
vnoremap <silent> <localleader> :silent <c-u> :silent WhichKeyVisual '\\'<CR>

" Define a separator
let g:which_key_sep = '→'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler
