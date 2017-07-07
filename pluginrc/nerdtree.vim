" NerdTree
"=====================

Plugin 'scrooloose/nerdtree'				"explore files

map <M-F9> :NERDTreeToggle<cr>

"open a NERDTree automatically when vim starts up
"autocmd vimenter * NERDTree

"open a NERDTree automatically when vim starts up if no files were specified
"autocmd vimenter * if !argc() | NERDTree | endif

"close vim if the only window left open is a NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"let NERDTreeChDirMode=1

"let NERDTreeDirArrows=0

" Default is 1
"let NERDTreeHighlightCursorline = 0

source ~/.vim/pluginrc/nerdtree_conf.vim

