" settings for term
" ==================

" term setting not used for gui
if has("gui_running")
	finish
endif

" term color
if &term =~ "xterm"
	let &t_Co=256
	let &t_AF="\e[38;5;%dm"
	let &t_AB="\e[48;5;%dm"
endif 

" cygwin
if has("win32unix")
	"set term=xterm
endif

" Tmux color
if exists('$TMUX')
	set term=screen-256color
endif

" Tmux corsor
if exists('$ITERM_PROFILE')
  if exists('$TMUX') 
	let &t_SI = "\<Esc>[3 q"
	let &t_EI = "\<Esc>[0 q"
  else
	let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif
end


