" You Complete Me
" YCM need python
" =================================

if !IsHasPython()
	finish
endif

let g:vimrc#completer="xleng/YCM_WIN_X86"
Plugin 'xleng/YCM_WIN_X86'

source ~/.vim/pluginrc/ycm_conf.vim
