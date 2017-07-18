" gui running settings.

if !has("gui_running")
	finish
endif

" Gui options. 
" Windows default: egmrLtT
" GTK default: aegimrLtT
" a Auto select
" e add tab page
" g gray menu item.
" f foreground
" i use a vim icon
" m menu bar
" M system menu bar not sourced.
" r right hand scroll bar
" R right hadd scroll bar present when vertical window.
" L left scrollbar present when vertical spit window.
" l left scroll always present.
" T Toolbar
" t include tear off menu item.
" c console dialog for simple choices.
"set go-=m
set go-=T
set go-=r
set go-=R
set go-=l
set go-=L

"noremap <M-Space> :simalt ~<CR>
"inoremap <M-Space> <C-O>:simalt ~<CR>
"cnoremap <M-Space> <C-C>:simalt ~<CR>

" maximize windows when startup
if IsInWinGui()
	au GUIEnter * simalt ~x
endif

" TabLine
set guitablabel=%N.%t


