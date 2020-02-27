
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

"Plug 'prettier/vim-prettier', {
      "\ 'do': 'yarn install',
      "\ 'for': ['javascript', 'typescript', 'css',
      "\         'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" max line length that prettier will wrap on
let g:prettier#config#print_width = 'never'

" number of spaces per indentation level
let g:prettier#config#tab_width = 2

" use tabs over spaces
let g:prettier#config#use_tabs = 'false'

" print semicolons
let g:prettier#config#semi = 'true'

" single quotes over double quotes
let g:prettier#config#single_quote = 'true' 

" print spaces between brackets
let g:prettier#config#bracket_spacing = 'false' 

" put > on the last line instead of new line
let g:prettier#config#jsx_bracket_same_line = 'true'

" avoid|always
let g:prettier#config#arrow_parens = 'always'

" none|es5|all
let g:prettier#config#trailing_comma = 'es5'

" flow|babylon|typescript|css|less|scss|json|graphql|markdown
"let g:prettier#config#parser = 'flow'

" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'prefer-file'

" always|never|preserve
let g:prettier#config#prose_wrap = 'preserve'

" css|strict|ignore
let g:prettier#config#html_whitespace_sensitivity = 'css'

let g:prettier#config#end_of_line = 'lf'

"let g:prettier#quickfix_enabled  = 1
"let g:prettier#quickfix_auto_focus = 1
"let g:prettier#autoformat = 1
"let g:prettier#quickfix_enabled = 0

autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,
      \*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier

"autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,
"\*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
