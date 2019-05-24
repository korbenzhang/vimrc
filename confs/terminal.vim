if !has("terminal")
	finish
endif

" for vim terminal
tnoremap <Esc> <C-W>N

au BufWinEnter * if &buftype == 'terminal' | setlocal bufhidden=hide | endif

map <F9> :term<cr>
tmap <F9> exit<cr>

