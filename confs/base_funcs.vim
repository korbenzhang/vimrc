
function! Trim(str) abort
  return matchstr(a:str,'^\s*\zs.\{-}\ze\s*$')
endfunction
