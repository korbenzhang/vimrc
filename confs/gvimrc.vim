" see $VIMRUNTIME/gvimrc_example.vim
"
" Make external commands work through a pipe instead of a pseudo-tty
"set noguipty

" set the X11 font to use
" set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1

set ch=2		" Make command line two lines high

set mousehide		" Hide the mouse when typing text

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Only do this for Vim version 5.0 and later.
if version >= 500

  " Switch on syntax highlighting if it wasn't on yet.
  if !exists("syntax_on")
    syntax on
  endif

  " Set nice colors
  " background for normal text is light grey
  " Text below the last line is darker grey
  " Cursor is green, Cyan when ":lmap" mappings are active
  " Constants are not underlined but have a slightly lighter background

  "highlight Normal guibg=grey90
  "highlight Cursor guibg=Green guifg=NONE
  "highlight lCursor guibg=Cyan guifg=NONE
  "highlight NonText guibg=grey80
  "highlight Constant gui=NONE guibg=grey95
  "highlight Special gui=NONE guibg=grey95

endif
