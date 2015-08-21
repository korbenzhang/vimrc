" encoding 编码
" ====================================================

" file encodings
set fencs=ucs-bom,utf-8,gb18030,cp936,GBK

" file formates
set ffs=unix,dos,mac

" New File encoding
au BufNewFile * set fileformat=unix
au BufNewFile * set fenc=utf-8

" cygwin
if has("win32unix")
	source $HOME/.vim/confs/encoding_utf8.vim
endif

" for gui
if has("gui_running")
	set enc=utf-8
endif

"let &termencoding=&encoding

