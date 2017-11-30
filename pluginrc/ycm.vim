" You Complete Me
" YCM need python

if !IsHasPython()
	finish
endif

if IsInWinUnix()
	finish
endif

let g:vimrc#completer="Valloric/YouCompleteMe"

Plug 'Valloric/YouCompleteMe'

source ~/.vim/pluginrc/ycm_conf.vim
