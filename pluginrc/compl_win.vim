" Compelte for windows
" ====================

" Complete, YCM / neocomplete /
" YCM nedd python, YCM not work properly in Windows
" NeoComplete need lua

if IsHasLua()
	" No Python
	" neocomplete need lua
	source ~/.vim/pluginrc/neocomplete.vim
endif

" No Python, Completer not equal YCM
source ~/.vim/pluginrc/supertab.vim
source ~/.vim/pluginrc/autocomplpop.vim

