

" ~/.vim/bundle/vim-quickrun

Plug 'thinca/vim-quickrun'

let g:quickrun_config = {
\   "_" : {
\       "outputter" : "message",
\   },
\}

let g:quickrun_no_default_key_mappings = 1

nmap <Leader>qr <Plug>(quickrun)
map <F10> :QuickRun<CR>
