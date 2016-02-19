" Syntax Check

Plugin 'scrooloose/syntastic'

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1

" default is 2.
" 0 not open or close automatically
" 1 open when errors detected, close when no more errors detected.
" 2 not open automatically but close automatically.
let g:syntastic_auto_loc_list = 1

" default is 1
let g:syntastic_check_on_open = 0

" default is 1
" 0 means skip check when :wq :x ZZ
let g:syntastic_check_on_wq = 0

" donot use vim-go fmt
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

