" FZF
call minpac#add('junegunn/fzf.vim')
set rtp+=/usr/local/opt/fzf
nnoremap <C-p> :FZF<CR>
nnoremap <C-h> :FZFH<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-t> :Tags<CR>
nnoremap <C-f> :Rg<CR>
" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R .'

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" Like the default command but include hidden
command! -bang -nargs=* FZFH call fzf#run(fzf#wrap({'source': 'rg --hidden -l ""'}))

command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

"Let the input go up and the search list go down
let $FZF_DEFAULT_OPTS = '--layout=reverse'

"Open FZF and choose floating window
let g:fzf_layout = { 'window': 'call OpenFloatingWin()' }
