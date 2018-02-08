if !has("gui_running")
	finish
endif

command! -bar -nargs=0 Bigger  :let &guifont = substitute(&guifont,'\d\+$','\=submatch(0)+1','')
command! -bar -nargs=0 Smaller :let &guifont = substitute(&guifont,'\d\+$','\=submatch(0)-1','')

noremap <M-,> :Smaller<CR>
noremap <M-.> :Bigger<CR>

