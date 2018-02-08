" neocomplete needs Lua
if !IsHasLua()
	finish
endif

let g:vimrc#completer="neocomplete"

" If you add vimproc would be better for neocomplete.
" So you can async run complete funcs.

"Plug 'Shougo/vimproc.vim'
Plug 'Shougo/context_filetype.vim'
"Plug 'Shougo/neoinclude.vim'

" complete the candidates from syntax files
Plug 'Shougo/neco-syntax'
Plug 'Shougo/neopairs.vim'

Plug 'Shougo/neocomplete.vim'

"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" Use neocomplete. default is true
let g:neocomplete#enable_at_startup = 1

" Use smartcase.
let g:neocomplete#enable_smart_case = 1

