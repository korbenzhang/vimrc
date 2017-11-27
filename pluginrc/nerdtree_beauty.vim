" for nerdtree plugin
" solove files could not be loaded into NERD tree
let NERDTreeIgnore = ['\~$','\.pyc$','\*NTUSER*','\*ntuser*','\NTUSER.DAT','\ntuser.ini']
autocmd BufEnter * silent! lcd %:p:h


"windows arrows can not work properly
let NERDTreeDirArrows=1

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

