" change cusor shape for insert mode.
" Happy with mintty.

if has("win32")
	finish
endif

highlight Cursor ctermfg=white ctermbg=black
highlight iCursor ctermfg=white ctermbg=blue


" change cursor shape.
if &term =~ '^xterm'
  " solid underscore
  let &t_SI .= "\<Esc>[5 q"
  " solid block
  let &t_EI .= "\<Esc>[2 q"
  " 1 or 0 -> blinking block
  " 3 -> blinking underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar
endif

