"Asynchronous Lint Engine

"Plug 'w0rp/ale'
Plug 'dense-analysis/ale'

let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
"let b:ale_fixers = {'typescript': ['tslint','tslint --fix']}
"let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
"let b:ale_linters = {'javascript': ['eslint']}
"let g:ale_linters = {'javascript': ['eslint']}
let g:ale_lint_on_text_changed = "never"
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 1

nmap sp <Plug>(ale_previous_wrap)
nmap np <Plug>(ale_next_wrap)

let g:ale_completion_tsserver_autoimport = 1

let g:ale_fixers = {
      \   '*': ['remove_trailing_lines', 'trim_whitespace'],
      \   'javascript': ['prettier', 'eslint'],
      \   'typescript': ['prettier', 'tslint'],
      \   'css': ['prettier'],
      \}
