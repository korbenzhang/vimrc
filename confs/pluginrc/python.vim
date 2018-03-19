" config for python.

Plug 'python-mode/python-mode'

" need install yapj
" see https://github.com/google/yapf
autocmd FileType python nnoremap <LocalLeader>= :0,$!yapf<CR>


" sort imports
Plug 'timothycrosley/isort'
autocmd FileType python nnoremap <LocalLeader>i :!isort %<CR><CR>

" jedi vim 
Plug 'davidhalter/jedi-vim'

" syntax check
" see ale
Plug 'nvie/vim-flake8'

let python_highlight_all=1

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


