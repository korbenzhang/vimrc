" Colorfull StatusLine
" ====================

"hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
"au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
"au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse

function! StatusLineColor(mode)
  if a:mode == 'i'
    hi statusline guibg=magenta ctermbg=magenta
  elseif a:mode == 'r'
    hi statusline guibg=blue ctermbg=blue
  else
    hi statusline guibg=red ctermbg=red
  endif
endfunction

au InsertEnter * call StatusLineColor(v:insertmode)
"au InsertChange * call StatusLineColor(v:insertmode)
au InsertLeave * hi statusline guibg=green ctermbg=green

" default the statusline to green when entering Vim
hi statusline guibg=green guifg=blue ctermbg=green ctermfg=blue
 

