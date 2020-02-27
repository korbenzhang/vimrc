"Asynchronous Lint Engine

let g:ale_completion_enabled = 0
let g:ale_fix_on_save = 0

Plug 'w0rp/ale' 

let g:ale_fixers = {'typescript': ['tslint','tslint --fix']}
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}

