" Distraction free writing
call minpac#add('junegunn/goyo.vim')
call minpac#add('junegunn/limelight.vim')
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
nnoremap <leader>gy :Goyo<CR>
