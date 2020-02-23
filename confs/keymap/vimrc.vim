" keys for vimrc, quick load and edit vimrc file.
map <leader>ve :tabedit $HOME/.vim/vimrc<cr>
map <leader>vk :tabedit $HOME/.vim/confs/keymap/keys_misc.vim<cr>
map <leader>vl :tabedit $HOME/.vim/confs/keymap/leader.vim<cr>

map <leader>vs :source $HOME/.vim/vimrc<cr>

map <leader>vc :tabedit $HOME/.vim/extra/extra_conf.vim<cr>
map <leader>vp :tabedit $HOME/.vim/extra/extra_plugins.vim<cr>

" reload after edit vimrc
au! BufWritePost *[\._]vimrc source $HOME/.vim/vimrc
au! BufWritePost vimrc source $HOME/.vim/vimrc
au! BufWritePost *.vim source $HOME/.vim/vimrc

