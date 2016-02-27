" You Complete Me
" YCM need python
" =================================

if !IsHasPython() || !IsInWin()
	finish
endif

let g:vimrc#completer="ycm_win_prebuild"
Plugin 'vim-ycm-733de48-windows'

source ~/.vim/pluginrc/ycm_conf.vim
