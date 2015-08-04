" ====================================================
" Korben Vim Config File
" ====================================================
set nocompatible

let mapleader = ","
let g:mapleader = ","

if filereadable(expand('~/.vim_extra/env.vim'))
	source ~/.vim_extra/env.vim
endif

source ~/.vim/confs/env_funcs_vimrc

" install some vim depends.
"source ~/.vim/confs/install_vimrc

" Vundle support
source ~/.vim/confs/vundle_install_vimrc
source ~/.vim/confs/init_vundle_vimrc

" Plugins and settings
source ~/.vim/pluginrc/plugins_vimrc

" Extra Plugins
if filereadable(expand('~/.vim_extra/plugins_vimrc'))
	source ~/.vim_extra/plugins_vimrc
endif

source ~/.vim/confs/vundle_end_vimrc

" Options and Settings
source ~/.vim/confs/confs_vimrc				"vim confs

source ~/.vim/keymap/all_vimrc				"keys

" Extra for override vim settings.
if filereadable(expand('~/.vim_extra/conf_vimrc'))
	source ~/.vim_extra/conf_vimrc
endif

" GOTO
" ~/.vim/pluginrc/plugins_vimrc
" ~/.vim/confs/confs_vimrc
" ~/.vim/confs/complete_vimrc
" ~/.vim/keymap/all_vimrc
" ~/.vim/pluginrc/golang_vimrc
" ~/.vim/pluginrc/compl_vimrc
" ~/.vim/misc/vim_extra/plugins_vimrc
" ~/.vim/misc/vim_extra/conf_vimrc
" ~/.vim_extra/plugins_vimrc
" ~/.vim_extra/conf_vimrc
