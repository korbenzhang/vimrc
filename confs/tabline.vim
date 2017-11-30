" Tab Line
function! MabetleTabLine()
	let s = ''
	for i in range(tabpagenr('$'))
		" 选择高亮
		if i + 1 == tabpagenr()
			let s .= '%#TabLineSel#'
		else
			let s .= '%#TabLine#'
		endif

		" 设置标签页号 (用于鼠标点击)
		let s .= '%' . (i + 1) . 'T'

		" MabetleTabLabel() 提供标签
		let s .= ' %{MabetleTabLabel(' . (i + 1) . ')} '
	endfor

	" 最后一个标签页之后用 TabLineFill 填充并复位标签页号
	let s .= '%#TabLineFill#%T'

	" 右对齐用于关闭当前标签页的标签
	if tabpagenr('$') > 1
		let s .= '%=%#TabLine#%999Xclose'
	endif
	return s
endfunction

function! MabetleTabLabel(n)
	let buflist = tabpagebuflist(a:n)
	let winnr = tabpagewinnr(a:n)
	return bufname(buflist[winnr - 1])
endfunction

function! MabetleGuiTabLabel()
	let label = ''
	let bufnrlist = tabpagebuflist(v:lnum)

	" 如果标签页里有修改过的缓冲区，加上 '+'
	for bufnr in bufnrlist
		if getbufvar(bufnr, "&modified")
			let label = '+'
			break
		endif
	endfor
	" 如果标签页里的窗口数目多于一，加上窗口数目
	let wincount = tabpagewinnr(v:lnum, '$')
	if wincount > 1
		let label .= wincount
	endif
	if label != ''
		let label .= ' '
	endif
	" 附加缓冲区名
	return label . bufname(bufnrlist[tabpagewinnr(v:lnum) - 1])
endfunction

function! ShortTableLabel()
	let buflist	 = tabpagebuflist(v:lnum)
	let label    = bufname(buflist[tabpagewinnr(v:lnum)]-1)
	let filename = fnamemodify(label,':t')
	return filename
endfunction


"some stuff to get the mouse going in term
set guitablabel=%N.%t
"set guitablabel=%N.%f
"set guitablabel=%{MabetleGuiTabLabel()}

"set tabline=%!MabetleTabLine()
"set tabline=%!ShortTableLabel()

" TabLabel
set showtabline=2

