

Plug 'Valloric/YouCompleteMe', { 'on': [] }

augroup load_ycm
    autocmd!
    autocmd InsertEnter * call plug#load('YouCompleteMe') | autocmd! load_ycm
augroup END
