
" open file 
if has("win32")
	Plug 'junegunn/fzf', { 'dir': '/uhome/.fzf' }
else
	Plug 'junegunn/fzf', { 'dir': '/uhome/.fzf', 'do': './install --all' }
endif

Plug 'junegunn/fzf.vim'

let g:fzf_history_dir = '/uhome/.local/share/fzf-history'

" fzf status
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
			\| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

if has('nvim') || has('gui_running')
	let $FZF_DEFAULT_OPTS .= ' --inline-info'
	let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

let $FZF_DEFAULT_COMMAND='ag -g ""'

nnoremap <silent> <Leader>f :GFiles<CR>
nnoremap <silent> <F1>		:GFiles<CR>
nnoremap <silent> <expr> <Leader><Leader> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":GFiles\<cr>"
nnoremap <silent> <Leader>C        :Colors<CR>
nnoremap <silent> <Leader><Enter>  :Buffers<CR>
nnoremap <silent> <Leader>b		   :Buffers<CR>
nnoremap <silent> <Leader>l        :Lines<CR>
nnoremap <silent> <Leader>ag       :Ag <C-R><C-W><CR>
nnoremap <silent> <Leader>AG       :Ag <C-R><C-A><CR>
xnoremap <silent> <Leader>ag       y:Ag <C-R>"<CR>
nnoremap <silent> <Leader>`        :Marks<CR>
" nnoremap <silent> q: :History:<CR>
" nnoremap <silent> q/ :History/<CR>

"inoremap <expr> <c-x><c-t> fzf#complete('tmuxwords.rb --all-but-current --scroll 499 --min 5')
imap <c-x><c-k> <plug>(fzf-complete-word)
"imap <c-x><c-f> <plug>(fzf-complete-path)
"inoremap <expr> <c-x><c-d> fzf#vim#complete#path('blsd')
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

"  for linux gvim
if has("gui_running") && has("unix_gui") && !has("terminal")
	"let g:fzf_launcher = 'xterm -e bash -ic %s'
	let g:fzf_launcher='xterm -fa \"Monospace\" -fs 25 -bg black -fg white -rightbar -sb -e bash -ic %s'
	"let g:fzf_launcher='gnome-terminal --disable-factory -x bash -ic %s'
endif
