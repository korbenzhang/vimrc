" keys for nvim.vim, quick load and edit nvim.vim file.
map <leader>ve :tabedit ~/.vim/nvim.vim<cr>
map <leader>vs :source ~/.vim/nvim.vim<cr>

map <leader>vc :tabedit ~/.vim_extra/extra_conf.vim<cr>
map <leader>vp :tabedit ~/.vim_extra/extra_plugins.vim<cr>

" reload after edit nvim.vim
au! BufWritePost *.vim source ~/.vim/nvim.vim

