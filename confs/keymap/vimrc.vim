" keys for vimrc, quick load and edit vimrc file.
map <leader>ve :tabedit /uhome/.vim/vimrc<cr>
map <leader>vk :tabedit /uhome/.vim/confs/keymap/keys_misc.vim<cr>
map <leader>vl :tabedit /uhome/.vim/confs/keymap/leader.vim<cr>

map <leader>vs :source /uhome/.vim/vimrc<cr>

map <leader>vc :tabedit /uhome/.vim/extra/extra_conf.vim<cr>
map <leader>vp :tabedit /uhome/.vim/extra/extra_plugins.vim<cr>

" reload after edit vimrc
au! BufWritePost *[\._]vimrc source /uhome/.vim/vimrc
au! BufWritePost vimrc source /uhome/.vim/vimrc
au! BufWritePost *.vim source /uhome/.vim/vimrc

