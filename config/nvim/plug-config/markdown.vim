" Markdown
call minpac#add('plasticboy/vim-markdown')
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_autowrite = 1 " ge to follow link writes file
let g:vim_markdown_new_list_item_indent = 0
set conceallevel=2

call minpac#add('iamcco/markdown-preview.nvim') " :call mkdp#util#install()
nmap <leader>p <Plug>MarkdownPreview
