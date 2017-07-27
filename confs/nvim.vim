" config for nvim
"
if !has("nvim")
    finish
endif

set clipboard+=unnamedplus

" when necessary
set laststatus=1


let g:loaded_python_provider=1
"let g:loaded_python3_provider=1

" Only for Windows
if IsInWin()
	let g:python_host_prog  = '/apps/Python27/python.exe'
	let g:python3_host_prog = '/apps/Python36/python.exe'
endif

