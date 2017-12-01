" You Complete Me
" YCM need python

if !IsHasPython()
	finish
endif

if IsInWinUnix()
	finish
endif

let g:vimrc#completer="Valloric/YouCompleteMe"

Plug 'Valloric/YouCompleteMe'

" YCM Config

" run syntastic's checkers for c, cpp, objc, and objcpp
" default is 1
"let g:ycm_show_diagnostics_ui = 0

let g:ycm_auto_trigger = 0

"let g:ycm_key_list_select_completion = ['', '']
"let g:ycm_key_list_previous_completion = ['', '']
" default is Tab Down
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" should disable input methods shortcut C-Space key. 
" default is <C-Space>
" ----------------------------------
"let g:ycm_key_invoke_completion = '<C-Space>'
"let g:ycm_key_invoke_completion = ''
"let g:ycm_key_invoke_completion = '<M-;>'

let g:ycm_complete_in_comments = 1  "在注释输入中也能补全
let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
let g:ycm_use_ultisnips_completer = 1 "提示UltiSnips
let g:ycm_collect_identifiers_from_comments_and_strings = 1   "注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_tags_files = 1

" 跳转到定义处, 分屏打开
let g:ycm_goto_buffer_command = 'horizontal-split'
"let g:ycm_goto_buffer_command = 'new-or-existing-tab'
"let g:ycm_goto_buffer_command = 'new-tab'

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>
