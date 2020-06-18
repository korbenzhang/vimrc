" You Complete Me
" YCM need python
" gocode: $HOME/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/gocode

if !has("python") && !has("python3")
	finish
endif

let g:vimrc#completer="Valloric/YouCompleteMe"

Plug 'Valloric/YouCompleteMe'
"Plug 'ycm-core/YouCompleteMe'

" run syntastic's checkers for c, cpp, objc, and objcpp
" default is 1
"let g:ycm_show_diagnostics_ui = 0


let g:ycm_gopls_binary_path = "gopls"

let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_error_symbol = 'K'
let g:ycm_warning_symbol = 'O'


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
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_global_ycm_extra_conf ='$HOME/.vim/confs/ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0 "close load .ycm_extra_conf.py remind.

" 跳转到定义处, 分屏打开
"let g:ycm_goto_buffer_command = 'horizontal-split'
"let g:ycm_goto_buffer_command = 'new-or-existing-tab'
let g:ycm_goto_buffer_command = 'new-tab'

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


let g:ycm_semantic_triggers =  {
			\   'c' : ['->', '.'],
			\   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
			\             're!\[.*\]\s'],
			\   'ocaml' : ['.', '#'],
			\   'cpp,objcpp' : ['->', '.', '::'],
			\   'perl' : ['->'],
			\   'php' : ['->', '::'],
			\   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
			\   'ruby' : ['.', '::'],
			\   'lua' : ['.', ':'],
			\   'erlang' : [':'],
			\ }

let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }

highlight PMenu ctermfg=0 ctermbg=242 guifg=black guibg=darkgrey
highlight PMenuSel ctermfg=242 ctermbg=8 guifg=darkgrey guibg=black

set completeopt=menu,menuone

nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <F12> :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
