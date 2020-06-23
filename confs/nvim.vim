" config for nvim
"
if !has("nvim")
    finish
endif

set clipboard+=unnamedplus

"let g:loaded_python_provider=1
"let g:loaded_python3_provider=1

func! NvimGuiFont()
	if has("nvim")
		let g:Guifont="DejaVu Sans Mono:h15"
		call GuiFont(g:Guifont)
	endif
endfunc
command! NvimGuiFont call NvimGuiFont()

func! NvimMonaco()
	if has("nvim")
		let g:Guifont="Monaco:h15"
		call GuiFont(g:Guifont)
	endif
endfunc
command! NvimMonaco call NvimMonaco()

