" Complete
" =====================
" cmd line complete
"Plugin 'CmdlineCompl.vim'

"Plugin 'CmdlineComplete'
"cmap <c-y> <Plug>CmdlineCompleteBackward
"cmap <c-e> <Plug>CmdlineCompleteForward

" sql
"Plugin 'SQLComplete.vim'

" xml
"Plugin 'XML-Completion'

"Plugin 'Word-Fuzzy-Completion'

"Plugin 'autocomp.vim'

" set Ctrl+j in insert mode, like VS.Net
"imap <C-j> <C-X><C-O>

" Complete, YCM / neocomplete /
" YCM nedd python, YCM not work properly in Windows
" NeoComplete need lua
let g:vimrc#completer="unknown"
"if IsHasPython() && !IsInWin()
if IsHasPython()
	" YCM need install and compile first.
	" Not work for Windows.
	source ~/.vim/pluginrc/ycm.vim
	source ~/.vim/pluginrc/ycm_conf.vim
	let g:vimrc#completer="YCM"
elseif IsHasLua()
	" No Python
	" neocomplete need lua
	source ~/.vim/pluginrc/neocomplete.vim
	let g:vimrc#completer="neocomplete"
endif

if g:vimrc#completer != "YCM"
	" No Python, Completer not equal YCM
	source ~/.vim/pluginrc/supertab.vim
	source ~/.vim/pluginrc/autocomplpop.vim
endif

