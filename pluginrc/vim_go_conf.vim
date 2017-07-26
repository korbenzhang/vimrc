
" auto install go depends binneny
let g:go_disable_autoinstall = 1

" auto imports
" default is gofmt
let g:go_fmt_command = 'goimports'

" guru or godef
"let g:go_def_mode = 'godef'

" default is 1
" when save fmt or not
let g:go_fmt_autosave = 1

" for neovim only.
let g:go_term_mode = 'split'
let g:go_term_enabled = 1

" default is 0
let g:go_dispatch_enabled = 1

" default is ultisnips, can set with neocomplete
"let g:go_snippet_engine="ultisnips"

" prevent vim-go show fmt quickfix windows
"let g:go_fmt_fail_silently = 1


" default is 1, should open
"let g:go_def_mapping_enabled = 1

"default is disable
let g:go_auto_type_info = 0

" default is disable
"let g:go_metalinter_autosave = 0

let g:go_jump_to_error = 1
"let g:go_list_height = 10

