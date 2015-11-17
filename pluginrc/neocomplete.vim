" neocomplete needs Lua
if !IsHasLua()
	finish
endif

let g:vimrc#completer="neocomplete"

Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/context_filetype.vim'
"Plugin 'Shougo/neoinclude.vim'

Plugin 'Shougo/neocomplete.vim'

let g:neocomplete#enable_at_startup = 0
let g:neocomplete#enable_smart_case = 1

"source ~/.vim/pluginrc/neocomplete_example_vimrc
