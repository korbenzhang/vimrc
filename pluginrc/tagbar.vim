" Tagbar

Plugin 'majutsushi/tagbar'

let g:tagbar_left = 1
let g:tagbar_width = 25

" open a preview window.
"--------------------------------------
"let g:tagbar_autopreview = 1

" close tagbar when enter one tag.
"--------------------------------------
"let g:tagbar_autoclose = 1

if !executable("ctags") && has("win32")
	let g:tagbar_ctags_bin = expand('$HOME/.vim/tools/ctags.exe')
endif

" open Tagbar on vim startup
"--------------------------------------
"autocmd VimEnter * nested :TagbarOpen

" open it only if you're opening Vim with a supported file/files
"--------------------------------------
"autocmd VimEnter * nested :call tagbar#autoopen(1)

" opening Tagbar also if you open a supported file in an already running
"--------------------------------------
"autocmd FileType * nested :call tagbar#autoopen(0)


"If you use multiple tabs and want Tagbar to also open in the current tab when
"you switch to an already loaded, supported buffer:
" --------------------------------------
"autocmd BufEnter * nested :call tagbar#autoopen(0)
"autocmd BufEnter c,cpp,go,java nested :call tagbar#autoopen(0)

"And if you want to open Tagbar only for specific filetypes, not for all of the
"supported ones:
"--------------------------------------
"autocmd FileType c,cpp,go,java nested :TagbarOpen
"autocmd FileType c,cpp,go,java nested :call tagbar#autoopen(0)

let g:tagbar_sort = 1

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }


" F12: Switch on/off TagList
nmap <F12> :TagbarToggle<CR>
imap <F12> <esc><F12>
