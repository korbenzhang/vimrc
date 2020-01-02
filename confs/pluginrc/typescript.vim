" TypeScript

"provides syntax files for highlighting .ts and .d.ts files.
Plug 'leafgarland/typescript-vim' 

"provides more syntax highlighting and DOM keywords.
Plug 'HerringtonDarkholme/yats.vim' 

"Language Service Tools
Plug 'Quramy/tsuquyomi'
Plug 'clausreinke/typescript-tools.vim'

if !exists("g:ycm_semantic_triggers")
	let g:ycm_semantic_triggers = {}
endif

let g:ycm_semantic_triggers['typescript'] = ['.']

