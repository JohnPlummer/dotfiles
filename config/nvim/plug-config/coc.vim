call minpac#add('neoclide/coc.nvim', {'branch': 'release'})

let g:coc_global_extensions = [
      \'coc-marketplace',
      \'coc-markdownlint',
      \'coc-json', 
      \'coc-tag', 
      \'coc-solargraph', 
      \'coc-prettier', 
      \'coc-snippets', 
      \'coc-eslint', 
      \'coc-prettier', 
      \'coc-docker', 
      \'coc-vimlsp', 
      \'coc-git'
      \]

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

nnoremap <leader>cs :CocCommand snippets.editSnippets<CR>

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

nmap <silent> <leader>cm :CocList marketplace<CR>

" Mappings in the style of unimpaired-next
nmap <silent> [f <Plug>(coc-diagnostic-prev)
nmap <silent> ]f <Plug>(coc-diagnostic-next)

nmap ]f  <Plug>(coc-diagnostic-next)
nmap [f  <Plug>(coc-diagnostic-prev)
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Formatting buffer
xmap <leader>F  <Plug>(coc-format)
nmap <leader>F  <Plug>(coc-format)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <leader>rn <Plug>(coc-rename)
nmap <silent> <leader>rf <Plug>(coc-refactor)
