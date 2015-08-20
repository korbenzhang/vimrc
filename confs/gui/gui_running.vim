" gui running settings.
" ======================

if !has("gui_running")
	finish
endif

" Gui options. 
" Windows default: egmrLtT
" GTK default: aegimrLtT
" a: Auto select
" e: add tab page
" g: gray menu item.
" f: foreground
" i: use a vim icon
" m: menu bar
" M: system menu bar not sourced.
" r: right hand scroll bar
" R: right hadd scroll bar present when vertical window.
" L: left scrollbar present when vertical spit window.
" l: left scroll always present.
" T: Toolbar
" t: include tear off menu item.
" c: console dialog for simple choices.
set go-=T "disable toolbar
set go-=r "no right hand scroll bar
set go-=R "no right hand scroll bar when spilt window.
set go-=l "no left scroll bar
set go-=L "no left scroll bar when spilt window.

"noremap <M-Space> :simalt ~<CR>
"inoremap <M-Space> <C-O>:simalt ~<CR>
"cnoremap <M-Space> <C-C>:simalt ~<CR>

" maximize windows when startup
if has("gui_win32")
	au GUIEnter * simalt ~x
endif

" GTK maximum windows
source $HOME/.vim/confs/gui/full_screen_gtk.vim

" WinGUI fullscreen
source $HOME/.vim/confs/gui/full_screen_win32.vim

" TabLine
set guitablabel=%N.%t
