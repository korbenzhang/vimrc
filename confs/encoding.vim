" encoding 编码

set encoding=utf-8

" file encodings
set fencs=ucs-bom,utf-8,gb18030,cp936,gbk,gb2312

" file formates
set ffs=unix,dos,mac

" New File encoding
au BufNewFile * set fileformat=unix
au BufNewFile * set fenc=utf-8

set helplang=cn

"let &termencoding=&encoding

