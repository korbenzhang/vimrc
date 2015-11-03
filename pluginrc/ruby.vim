
if has("gui_win32")
	let g:ruby_path=$RUBY_HOME
endif

Plugin 'vim-ruby/vim-ruby'
"Plugin 'ruby.vim'
"Plugin 'ruby_imaps'
"Plugin 'rubycomplete.vim'
"Plugin 'vimRubyX'
"Plugin 'ruby-menu.vim'

Plugin 'ruby-macros.vim'
Plugin 'rubycomplete.vim'

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

