" neocomplete needs Lua
if !IsHasLua()
	finish
endif

let g:vimrc#completer="neocomplete"

" If you add vimproc would be better for neocomplete.
" So you can async run complete functions.

"Plug 'Shougo/vimproc.vim'
Plug 'Shougo/context_filetype.vim'
"Plug 'Shougo/neoinclude.vim'

" complete the candidates from syntax files
Plug 'Shougo/neco-syntax'
Plug 'Shougo/neopairs.vim'

Plug 'Shougo/neocomplete.vim'

source ~/.vim/pluginrc/neocomplete_conf.vim

