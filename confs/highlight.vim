"Highlight

" Popup menu hightLight Group
hi Pmenu ctermbg=13 ctermfg=0 guibg=LightGray guifg=Black
"hi Pmenu ctermbg=4 ctermfg=0 guibg=LightGray guifg=Black
hi PmenuSel ctermbg=7 ctermfg=1 guibg=DarkBlue guifg=White
hi PmenuSbar ctermbg=7 ctermfg=0 guibg=DarkGray guifg=Black
hi PmenuThumb ctermbg=8 ctermfg=2 guibg=Black guifg=White

" CursorLine
" fg NONE so can keep syntax color.
hi CursorLine cterm=NONE ctermbg=LightGray ctermfg=NONE guibg=LightGray guifg=NONE

" TabLine
hi TabLineSel ctermfg=15 ctermbg=2
hi LeaderTab guifg=#666666 ctermfg=5

"highlight line end blank
"highlight WhitespaceEOL ctermbg=red guibg=red
"match WhitespaceEOL /\s\+$/
