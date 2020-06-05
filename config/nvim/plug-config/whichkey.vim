" Map leader to which_key
let g:which_key_leader_map = {}
call which_key#register('<Space>', "g:which_key_leader_map")
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

let g:which_key_leader_map.c = {
			\'name':  '+code / coc',
			\'a' :    'code action on selected',
			\'A' :    'code action on buffer',
			\'f' :    'format',
			\'F' :    'format buffer',
			\'n' :    'rename',
			\'o' :    'outline',
			\'q' :    'quickfix current line',
			\'r' :    'refactor',
			\}
let g:which_key_leader_map.t = {
			\'name':  '+tabular',
			\'=' :    'align on =',
			\',' :    'align on ,',
			\':' :    'align on :',
			\}
let g:which_key_leader_map.b = {
                       \ 'name' :  '+buffer' ,
                       \ '1' :     ['b1', 'buffer 1'],
                       \ '2' :     ['b2', 'buffer 2'],
                       \ 'd' :     ['bd', 'delete-buffer'],
                       \ 'f' :     ['bfirst', 'first-buffer'],
                       \ 'h' :     ['Startify', 'home-buffer'],
                       \ 'l' :     ['blast', 'last-buffer'],
                       \ 'm' :     'bdelete menu',
                       \ 'n' :     ['bnext', 'next-buffer'],
                       \ 'o' :     'delete others',
                       \ 'p' :     ['bprevious', 'previous-buffer'],
                       \ '?' :     ['Buffers', 'fzf-buffer'],
                       \ }

" Map localleader to which_key
let g:which_key_localleader_map = {}
call which_key#register(',', "g:which_key_localleader_map")
nnoremap <silent> <localleader> :<c-u>WhichKey ','<CR>
vnoremap <silent> <localleader> :<c-u>WhichKeyVisual ','<CR>

let g:which_key_localleader_map.c = {
			\'name':  '+coc',
			\'c' :    'commands',
			\'d' :    'diagnostics',
			\'e' :    'extensions',
			\'m' :    'marketplace',
			\'s' :    '(edit) snippets',
			\}
let g:which_key_localleader_map.p = {
		       \'name':  '+plug',
                       \ 'i' :   ['PlugUpdate', 'install / update plugins'],
                       \ 'c' :   ['PlugClean', 'clean plugins'],
                       \ 's' :   ['PlugStatus', 'plugin status'],
                       \ 'u' :   ['PlugUpgrade', 'upgrade vim plug'],
		       \}
let g:which_key_localleader_map.v = {
			\'name':  '+vim',
			\'s' :    'source config',
			\'e' :    'edit config',
			\}

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
