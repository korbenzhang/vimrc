" ====================================================
" Korben Vim Config File
" ====================================================
set nocompatible

let mapleader = ","
let g:mapleader = ","

if filereadable(expand('~/.vim_extra/env.vim'))
	source ~/.vim_extra/env.vim
endif

source ~/.vim/confs/env_funcs.vim

" install some vim depends.
"source ~/.vim/confs/install.vim

" Vundle support
source ~/.vim/confs/vundle_install.vim
source ~/.vim/confs/init_vundle.vim

" Plugins and settings
source ~/.vim/pluginrc/plugins.vim

" Extra Plugins
if filereadable(expand('~/.vim_extra/plugins.vim'))
	source ~/.vim_extra/plugins.vim
endif

source ~/.vim/confs/vundle_end.vim

" Options and Settings
source ~/.vim/confs/confs.vim				"vim confs

source ~/.vim/keymap/all.vim				"keys

" Extra for override vim settings.
if filereadable(expand('~/.vim_extra/conf.vim'))
	source ~/.vim_extra/conf.vim
endif

" GOTO
" ~/.vim/pluginrc/plugins.vim
" ~/.vim/confs/confs.vim
" ~/.vim/confs/complete.vim
" ~/.vim/keymap/all.vim
" ~/.vim/pluginrc/golang.vim
" ~/.vim/pluginrc/compl.vim
" ~/.vim/misc/vim_extra/plugins.vim
" ~/.vim/misc/vim_extra/conf.vim
" ~/.vim_extra/plugins.vim
" ~/.vim_extra/conf.vim
