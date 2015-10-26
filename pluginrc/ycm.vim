" You Complete Me
" YCM need python
" =================================

if !IsHasPython()
	finish
endif

if IsInWin() || IsInWinUnix()
	let g:vimrc#completer="xleng/YCM_WIN_X86"
	Plugin 'xleng/YCM_WIN_X86'
else
	let g:vimrc#completer="Valloric/YouCompleteMe"
	Plugin 'Valloric/YouCompleteMe'
endif

source ~/.vim/pluginrc/ycm_conf.vim
