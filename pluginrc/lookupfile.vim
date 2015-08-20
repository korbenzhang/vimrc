" 设置lookupfile插件 
" ========================================================================
Plugin 'lookupfile'


let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找 
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串 
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史 
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目 
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件 

if filereadable("./filenametags")               "设置tag文件的名字 
    let g:LookupFile_TagExpr = '"./filenametags"' 
endif 

"映射LookupFile为,lf 
nmap <silent> ,lf <Plug>LookupFile<CR> 

"映射LUBufs为,lb 
nmap <silent> ,lb :LUBufs<CR> 

"映射LUWalk为,lw 
nmap <silent> ,lw :LUWalk<CR> 

"映射LUPath为,lp 
nmap <silent> ,lp :LUPath<CR> 

