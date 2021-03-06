" Doxygen Plugin

Plug 'vim-scripts/DoxyGen-Syntax'
Plug 'vim-scripts/DoxygenToolkit.vim'


let g:DoxygenToolkit_authorName="Korben Zhang"
let g:DoxygenToolkit_licenseTag="GPL v2 \<enter>"
let g:DoxygenToolkit_undocTag="DOXIGEN_SKIP_BLOCK"
let g:DoxygenToolkit_briefTag_pre = "@brief\t"
let g:DoxygenToolkit_paramTag_pre = "@param\t"
let g:DoxygenToolkit_returnTag = "@return\t"
let g:DoxygenToolkit_briefTag_funcName = "no"
let g:DoxygenToolkit_maxFunctionProtoLines = 30

map fg : Dox<cr>
