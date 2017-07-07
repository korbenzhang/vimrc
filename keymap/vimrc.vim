" keys for vimrc, quick load and edit vimrc file.
map <leader>ve :tabedit ~/.vim/vimrc<cr>
map <leader>vs :source ~/.vim/vimrc<cr>

map <leader>vl :tabedit ~/.vim/links.txt<cr>

map <leader>vc :tabedit ~/.vim/extra/extra_conf.vim<cr>
map <leader>vp :tabedit ~/.vim/extra/extra_plugins.vim<cr>

" reload after edit vimrc
au! BufWritePost *[\._]vimrc source ~/.vim/vimrc
au! BufWritePost vimrc source ~/.vim/vimrc
au! BufWritePost *.vim source ~/.vim/vimrc

