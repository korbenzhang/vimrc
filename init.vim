" neovim start with init.vim
" see ~/.config/nvim/init.vim
" mkdir ~/.config/nvim 
" cp ~/.vim/init.vim ~/.config/nvim/ -f
" 
set nocompatible

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc

