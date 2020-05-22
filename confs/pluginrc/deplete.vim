" need python3
if !has("python3")
	finish
endif

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
else
  Plug 'Shougo/deoplete.nvim'
endif


let g:deoplete#enable_at_startup = 1
