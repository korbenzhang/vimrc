"Format the statusline
" ========================

"设置在状态行显示的信息如下：
"%F 当前文件名
"%m 当前文件修改状态
"%r 当前文件是否只读
"%Y 当前文件类型
"%{&fileformat} 当前文件编码
"%b 当前光标处字符的 ASCII 码值
"%B 当前光标处字符的十六进制值
"%l 当前光标行号
"%c 当前光标列号
"%V 当前光标虚拟列号 (根据字符所占字节数计算)
"%p 当前行占总行数的百分比
"%% 百分号
"%L 当前文件总行数

function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "g")
    return curdir
endfunction

set statusline=
set statusline+=%f "path to the file in the buffer, relative to current directory
set statusline+=\ %h%1*%m%r%w%0* " flag
set statusline+=\ [%{strlen(&ft)?&ft:'none'}, " filetype
set statusline+=%{&encoding}, " encoding
set statusline+=%{&fileformat}] " file format
set statusline+=\ CWD:%r%{CurDir()}%h
"set statusline+=\ CWD:%r:%h
set statusline+=\ Line:%l/%L

