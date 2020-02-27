
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

let g:prettier#config#bracket_spacing = 'false'
"let g:prettier#config#trailing_comma = 'es5'
"let g:prettier#config#trailing_comma = 'all'
let g:prettier#config#single_quote = 'false' 
let g:prettier#config#semi = 'true'

"let g:prettier#quickfix_enabled  = 1
"let g:prettier#quickfix_auto_focus = 1

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier

let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat = 0
"autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
