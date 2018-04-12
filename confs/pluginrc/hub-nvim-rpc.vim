" Requires vim8 with has('python') or has('python3')
" Requires the installation of msgpack-python. 
" pip install msgpack-python

if !has("python") || !has("python3")
	finish
endif

if !has('nvim')
    Plug 'roxma/vim-hug-neovim-rpc'
endif
