" AutoComplPop
" ====================================================

Plugin 'AutoComplPop'

" g:acp_enableAtStartup default 1
let g:acp_enableAtStartup = 1

" not trigger MoveKey compl
let g:acp_mappingDriven = 1

let g:acp_ignorecaseOption = 1

let g:acp_behaviorKeywordLength = 2

"let g:acp_completeOption = '.,w,b,k'

"let g:acp_behaviorKeywordCommand = '\<C-n>'

" many functions start with Get and Is
let g:acp_behaviorKeywordIgnores = ["Get","get", "Is", "is"]
