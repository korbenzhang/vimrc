" TypeScript

"provides syntax files for highlighting .ts and .d.ts files.
Plugin 'leafgarland/typescript-vim' 

"provides more syntax highlighting and DOM keywords.
Plugin 'HerringtonDarkholme/yats.vim' 

"Language Service Tools

Plugin 'Quramy/tsuquyomi'
"Plugin 'clausreinke/typescript-tools.vim'

if !exists("g:ycm_semantic_triggers")
	let g:ycm_semantic_triggers = {}
endif

let g:ycm_semantic_triggers['typescript'] = ['.']

