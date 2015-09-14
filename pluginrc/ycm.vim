" You Complete Me
" YCM need python
" =================================

if !IsHasPython()
	finish
endif

if IsInWin()
	Plugin 'xleng/YCM_WIN_X86'
else
	Plugin 'Valloric/YouCompleteMe'
endif

source ~/.vim/pluginrc/ycm_conf.vim
