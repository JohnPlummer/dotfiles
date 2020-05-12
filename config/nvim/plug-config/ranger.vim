call minpac#add('kevinhwang91/rnvimr', {'do': 'make sync'})

" Need to install ranger with
" `pip3 install ranger-fm`
" as brew install installs the python 2 version

" Make Ranger replace Netrw and be the file explorer
let g:rnvimr_ex_enable = 1

" Hide Ranger after picking a file
let g:rnvimr_pick_enable = 1

" Make Neovim wipe the buffers corresponding to the files deleted by Ranger
let g:rnvimr_bw_enable = 1

nnoremap <silent> - :RnvimrToggle<CR>
