
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

" GoDef
au FileType go nmap gt <Plug>(go-def-tab)

" copy from vim-go Home page
"au FileType go nmap <leader>gr <Plug>(go-run)
au FileType go nmap <C-F5> <Plug>(go-run)

au FileType go nmap <F5> :!go run %<cr>
au FileType go nmap <leader>rf :!go run %<cr>

au FileType go nmap <leader>rt <Plug>(go-run-tab)
au FileType go nmap <Leader>rs <Plug>(go-run-split)
au FileType go nmap <Leader>rv <Plug>(go-run-vertical)

"au FileType go nmap <C-b> <Plug>(go-build)
au FileType go nmap <C-b> <Plug>(go-install)

au FileType go nmap <F6> <Plug>(go-test)
au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>tt <Plug>(go-test)

au FileType go nmap <F6> :GoTestFunc<cr>
au FileType go nmap <leader>tf :GoTestFunc<cr>

au FileType go nmap <leader>gc <Plug>(go-coverage)

au FileType go nmap ds <Plug>(go-def-split)
au FileType go nmap dv <Plug>(go-def-vertical)
au FileType go nmap dt <Plug>(go-def-tab)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

" metalinter
au FileType go nmap <Leader>l <Plug>(go-metalinter)
au FileType go nmap <C-F7> <Plug>(go-metalinter)

au FileType go nmap <Leader>i <Plug>(go-implements)
au FileType go nmap <Leader>e <Plug>(go-rename)

" vim-go alternate
augroup go
	autocmd!
	autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
	autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
	autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
augroup END


"Go Lang
au BufRead,BufNewFile *.go setl filetype=go

au FileType go set dictionary+=~/.vim/dict/golang.dict

"should define GOROOT and GOCODES
if exists("$GOROOT")
	au FileType go setl tags+=$GOROOT/src/tags
endif 

if exists("$GOCODES")
	au FileType go setl tags+=$GOCODES/src/tags
endif

"let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
"let g:syntastic_go_checkers = ['golint', 'govet']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

let g:go_list_type = "quickfix"

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#cmd#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    "call go#cmd#Build(0)
    call go#cmd#Install(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

