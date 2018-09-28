" You Complete Me
" YCM need python
" gocode: $HOME/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/gocode

if !has("python") && !has("python3")
	finish
endif

if IsInWinUnix()
	finish
endif

let g:vimrc#completer="Valloric/YouCompleteMe"

Plug 'Valloric/YouCompleteMe'

" run syntastic's checkers for c, cpp, objc, and objcpp
" default is 1
"let g:ycm_show_diagnostics_ui = 0

let g:ycm_auto_trigger = 1

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
let g:ycm_autoclose_preview_window_after_completion=1

" 跳转到定义处, 分屏打开
"let g:ycm_goto_buffer_command = 'horizontal-split'
"let g:ycm_goto_buffer_command = 'new-or-existing-tab'
let g:ycm_goto_buffer_command = 'new-tab'

nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <F12> :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>


let g:ycm_global_ycm_extra_conf ='~/.vim/confs/ycm_extra_conf.py'

let g:ycm_confirm_extra_conf=0 "close load .ycm_extra_conf.py remind.


let g:ycm_filetype_blacklist = {
			\ 'tagbar' : 1,
			\ 'qf' : 1,
			\ 'notes' : 1,
			\ 'markdown' : 1,
			\ 'unite' : 1,
			\ 'vim' : 1,
			\ 'text' : 1,
			\ 'vimwiki' : 1,
			\ 'pandoc' : 1,
			\ 'infolog' : 1,
			\ 'mail' : 1
			\}
