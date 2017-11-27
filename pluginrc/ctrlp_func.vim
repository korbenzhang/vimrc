" ctrlp插件1 - 不用ctag进行函数快速跳转

Plug 'tacahiroy/ctrlp-funky'

let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']

nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

