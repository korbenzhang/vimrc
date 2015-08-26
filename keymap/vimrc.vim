" keys for vimrc, quick load and edit vimrc file.
map <leader>ee :MabetleVimrc<cr>
map <leader>ss :source $HOME/.vim/vimrc<cr>

" reload after edit vimrc
au! BufWritePost *[\._]vimrc source $HOME/.vim/vimrc
au! BufWritePost vimrc source $HOME/.vim/vimrc
au! BufWritePost *.vim source $HOME/.vim/vimrc