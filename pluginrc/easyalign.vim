" 快速赋值语句对齐

Bundle 'junegunn/vim-easy-align'

if !exists('g:easy_align_delimiters')
  let g:easy_align_delimiters = {}
endif

let g:easy_align_delimiters['#'] = { 'pattern': '#', 'ignore_groups': ['String'] }

nmap <Leader>ea <Plug>(EasyAlign)
vmap <Leader>ea <Plug>(EasyAlign)
