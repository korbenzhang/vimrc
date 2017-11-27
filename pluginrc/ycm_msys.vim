" You Complete Me
" YCM need python

if !IsHasPython()
	finish
endif

let g:vimrc#completer="ycm_msys"

Plug 'ycm_msys'

source ~/.vim/pluginrc/ycm_conf.vim
