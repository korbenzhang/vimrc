

let g:ycm_language_server =
  \ [
  \   {
  \     'name': 'gopls',
  \     'cmdline': [ '~/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/go/src/golang.org/x/tools/cmd/gopls/gopls' , "-rpc.trace" ],
  \     'filetypes': [ 'go' ],
  \     "project_root_files": [ "go.mod" ]
  \   }
  \ ]

let g:go_def_mode='~/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/go/src/golang.org/x/tools/cmd/gopls/gopls'
let g:go_info_mode='~/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/go/src/golang.org/x/tools/cmd/gopls/gopls'

