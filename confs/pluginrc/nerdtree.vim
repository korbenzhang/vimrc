" NerdTree
let NERDTreeHijackNetrw=1

Plug 'scrooloose/nerdtree'

" mintty cannot show nerdtree arrow properly.
if !has("gui_running")
	"let NERDTreeDirArrows=0
	let g:NERDTreeDirArrowExpandable = '+'
	let g:NERDTreeDirArrowCollapsible = '-'
endif

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


let NERDTreeIgnore = ['\~$','\.pyc$','\*NTUSER*','\*ntuser*','\NTUSER.DAT','\ntuser.ini']

func! Newtab(path)
    let filepath = a:path 
    exec 'tabe'
    exec 'NERDTree '.filepath
endfunc
com! -nargs=1 -range=% Newtab call Newtab(<f-args>)

