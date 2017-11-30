
" mintty cannot show nerdtree arrow properly.
if has("gui_running")
	finish
endif

"let NERDTreeDirArrows=0
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

map <M-F9> :NERDTreeToggle<cr>

"open a NERDTree automatically when vim starts up
"autocmd vimenter * NERDTree

"open a NERDTree automatically when vim starts up if no files were specified
"autocmd vimenter * if !argc() | NERDTree | endif

"close vim if the only window left open is a NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"let NERDTreeChDirMode=1

" Default is 1
"let NERDTreeHighlightCursorline = 0

