" You Complete Me
" YCM need python
" =================================

if !IsHasPython()
	finish
endif

Plugin 'Valloric/YouCompleteMe'

source ~/.vim/pluginrc/ycm_conf.vim
