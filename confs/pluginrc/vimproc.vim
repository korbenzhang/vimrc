" vimsheel needs vimproc.
Plug 'Shougo/vimproc.vim', { 'do': 'make' }

if has("win64")
	let g:vimproc_dll_path="~/.vim/misc/tools/vimproc_win64.dll"
elseif has("win32")
	let g:vimproc_dll_path="~/.vim/misc/tools/vimproc_win32.dll"
endif

