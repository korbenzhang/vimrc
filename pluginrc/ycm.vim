" You Complete Me
" YCM need python

if !IsHasPython()
	finish
endif

let g:vimrc#completer="Valloric/YouCompleteMe"
Plugin 'Valloric/YouCompleteMe'

source ~/.vim/pluginrc/ycm_conf.vim
