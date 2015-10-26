" keys for vimrc, quick load and edit vimrc file.
map <leader>ee :tabedit ~/.vim/vimrc<cr>
map <leader>ss :source ~/.vim/vimrc<cr>

map <leader>vc :tabedit ~/.vim_extra/extra_conf.vim<cr>
map <leader>vp :tabedit ~/.vim_extra/extra_plugins.vim<cr>

" reload after edit vimrc
au! BufWritePost *[\._]vimrc source $HOME/.vimrc
au! BufWritePost vimrc source $HOME/.vimrc
au! BufWritePost *.vim source $HOME/.vimrc

