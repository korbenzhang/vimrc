" keys for vimrc, quick load and edit vimrc file.
map <leader>ee :tabedit ~/.vim/default.vim<cr>
map <leader>ss :source ~/.vim/default.vim<cr>
map <leader>vc :tabedit ~/.vim_extra/conf.vim<cr>
map <leader>vp :tabedit ~/.vim_extra/plugins.vim<cr>

" reload after edit vimrc
au! BufWritePost *[\._]vimrc source $HOME/.vimrc
au! BufWritePost vimrc source $HOME/.vimrc
au! BufWritePost *.vim source $HOME/.vimrc

