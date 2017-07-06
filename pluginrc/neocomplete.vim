" neocomplete needs Lua
if !IsHasLua()
	finish
endif

let g:vimrc#completer="neocomplete"

"Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/context_filetype.vim'
"Plugin 'Shougo/neoinclude.vim'

" complete the candidates from syntax files
Plugin 'Shougo/neco-syntax'
Plugin 'Shougo/neopairs.vim'

Plugin 'Shougo/neocomplete.vim'

"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" Use neocomplete. default is true
let g:neocomplete#enable_at_startup = 1

" Use smartcase.
let g:neocomplete#enable_smart_case = 1
