"powerline

Plug 'Lokaltog/vim-powerline'			"status line

" fancy unicode compatible
let g:Powerline_symbols = 'compatible'

if has("gui_running")
    "let g:Powerline_symbols = 'fancy'
endif

if has("win32")
    let g:Powerline_symbols = 'compatible'
	"let g:Powerline_symbols = 'unicode'
    "let g:Powerline_symbols = 'fancy'
endif

"let g:Powerline_symbols = 'unicode'
let g:Powerline_dividers_override = ['>>', '>', '<<', '<']
