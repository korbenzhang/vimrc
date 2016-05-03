" golang
" ========================================

" vim-go
Plugin 'fatih/vim-go'

" repo for nsf/gocode
Plugin 'nsf/gocode', {'rtp': 'vim/'}

" config vim-go
let g:go_disable_autoinstall = 1

" default is 1
" when save fmt or not
let g:go_fmt_autosave = 1

" default is 0
"let g:go_dispatch_enabled = 0

" default is ultisnips, can set with neocomplete
"let g:go_snippet_engine="ultisnips"

" prevent vim-go show fmt quickfix windows
"let g:go_fmt_fail_silently = 1
"let g:go_def_mapping_enabled = 1
"let g:go_auto_type_info = 0
"let g:go_metalinter_autosave = 1
"let g:go_list_height = 10
"let g:go_jump_to_error = 1

" go highlight
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1

"let g:go_highlight_chan_whitespace_error = 0
let g:go_highlight_chan_whitespace_error = 0
let g:go_highlight_space_tab_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_array_whitespace_error = 0

" GoDef
au FileType go nmap gt <Plug>(go-def-tab)

" copy from vim-go Home page
"au FileType go nmap <leader>gr <Plug>(go-run)
au FileType go nmap <F5> <Plug>(go-run)
au FileType go nmap <leader>gr :!go run %<cr>  

au FileType go nmap <C-F5> <Plug>(go-build)
au FileType go nmap <leader>gb <Plug>(go-build)

au FileType go nmap <F6> <Plug>(go-test)
au FileType go nmap <leader>gt <Plug>(go-test)

au FileType go nmap <leader>gc <Plug>(go-coverage)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

au FileType go nmap <C-b> <Plug>(go-build)

" vim-go alternate
augroup go
	autocmd!
	autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
	autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
	autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
augroup END


"Go Lang
au BufRead,BufNewFile *.go setl filetype=go

au FileType go set dictionary=~/.vim/dict/golang.dict

"should define GOROOT and GOCODES
if exists("$GOROOT")
	au FileType go setl tags+=$GOROOT/src/tags
endif 

if exists("$GOCODES")
	au FileType go setl tags+=$GOCODES/src/tags
endif

