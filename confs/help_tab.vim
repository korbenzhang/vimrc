" ----------------------------------------------------------------------------
" Help in new tabs
" ----------------------------------------------------------------------------
func! s:helptab()
  if &buftype == 'help'
    wincmd T
    nnoremap <buffer> q :q<cr>
  endif
endfunc
autocmd vimrc BufEnter *.txt call s:helptab()

