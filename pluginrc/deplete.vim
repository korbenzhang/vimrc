
if !has("nvim")
	finish
endif


" need python3
if !has("python3")
	finish
endif

"https://github.com/Shougo/deoplete.nvim
Plugin 'Shougo/deoplete.nvim'

"https://github.com/zchee/deoplete-go
Plugin 'zchee/deoplete-go'

"https://github.com/kbrw/elixir.nvim
Plugin 'kbrw/elixir.nvim'
