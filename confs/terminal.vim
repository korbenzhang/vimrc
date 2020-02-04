if !has("terminal")
	finish
endif

" for vim terminal
tnoremap <Esc> <C-W>N
map <F9> :term<cr>
tmap <F9> exit<cr>

set notimeout ttimeout timeoutlen=100

"au BufWinEnter * if &buftype == 'terminal' | setlocal bufhidden=hide | endif
"au TerminalOpen * if &buftype == 'terminal' | setlocal bufhidden=hide | endif

"hi Terminal ctermbg=lightgrey ctermfg=blue guibg=lightgrey guifg=blue

