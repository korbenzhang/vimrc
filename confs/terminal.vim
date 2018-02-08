if !has("terminal")
	finish
endif

if has("terminal")
	" for vim terminal
	tnoremap <Esc> <C-W>N
	au BufWinEnter * if &buftype == 'terminal' | setlocal bufhidden=hide | endif
	"hi Terminal ctermbg=lightgrey ctermfg=blue guibg=lightgrey guifg=blue
endif
