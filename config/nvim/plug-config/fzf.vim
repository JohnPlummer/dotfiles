" FZF
call minpac#add('junegunn/fzf.vim')
set rtp+=/usr/local/opt/fzf
nnoremap <C-p> :FZF<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-t>t :Tags<CR>
nnoremap <C-f> :Rg<CR>
" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R .'
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
