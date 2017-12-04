
if has("gui_win32")
	let g:ruby_path=$RUBY_HOME
endif

Plug 'vim-ruby/vim-ruby'
"Plug 'vim-scripts/ruby.vim'
"Plug 'vim-scripts/ruby_imaps'
"Plug 'vim-scripts/rubycomplete.vim'
"Plug 'vim-scripts/vimRubyX'
"Plug 'vim-scripts/ruby-menu.vim'

Plug 'vim-scripts/ruby-macros.vim'
Plug 'vim-scripts/rubycomplete.vim'

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

