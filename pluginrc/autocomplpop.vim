" AutoComplPop
" ====================================================
Plugin 'AutoComplPop'						"AckEnable

" if not set g:acp_enableAtStartup, acp plugin start up by defaut.
" --------------------------------------------
let g:acp_enableAtStartup = 1

let g:acp_ignorecaseOption = 1

let g:acp_completeOption = '.,w,b,k'

let g:acp_behaviorKeywordCommand = "\<C-n>"

" many functions start with Get and Is
" ------------------------------------
let g:acp_behaviorKeywordIgnores = ["Get","get", "Is", "is"]
