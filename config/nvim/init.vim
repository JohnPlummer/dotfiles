" Backwards compatible
set nocompatible
filetype plugin indent on

" Plugins
packadd minpac
call minpac#init()

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

call minpac#add('k-takata/minpac', {'type': 'opt'})

" FZF
set rtp+=/usr/local/opt/fzf
nnoremap <C-p> :<C-u>FZF<CR>

:imap eu <Esc>
