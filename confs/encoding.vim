" encoding 编码
" ====================================================

" file encodings
set fencs=ucs-bom,utf-8,gb18030,cp936,GBK

" file formates
set ffs=unix,dos,mac

" New File encoding
au BufNewFile * set fileformat=unix
au BufNewFile * set fenc=utf-8

if !IsInDos()
	set enc=utf-8
endif

" for gui
if has("gui_running")
	source $VIMRUNTIME/delmenu.vim  
	source $VIMRUNTIME/menu.vim  
	"解决consle输出乱码  
	language messages zh_CN.utf-8  
endif

"let &termencoding=&encoding

