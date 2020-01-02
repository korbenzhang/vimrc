
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }

let g:prettier#config#bracket_spacing = 'true'
let g:prettier#autoformat = 0
let g:prettier#config#trailing_comma = 'es5'
let g:prettier#config#single_quote = 'false' 

autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql PrettierAsync

