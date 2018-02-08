if !has("gui_running")
	finish
endif

" /apps/Vim/vim80/vimtweak.dll
func! TweakWinAlpha(alpha)
	if executable("vimtweak.dll") 
		echo "found vimtweak.dll and set Alpha"
		call libcallnr("vimtweak.dll","SetAlpha",a:alpha) 
	else 
		echo "not found vimtweak.dll"
	endif 
endfunc
command! TweakWinAlpha call TweakWinAlpha(200)

" Max Min win
func! TweakMaxWin()
	call libcallnr("vimtweak.dll", "EnableMaximize", 1)
endfunc
command! TweakMaxWin call TweakMaxWin()

func! TweakMinWin()
	call libcallnr("vimtweak.dll", "EnableMaximize", 0)
endfunc
command! TweakMinWin call TweakMinWin()

" TopMost
func! TweakEnableTopMost()
	call libcallnr("vimtweak.dll", "EnableTopMost", 1)
endfunc
command! TweakEnableTopMost call TweakEnableTopMost()

func! TweakDisableTopMost()
	call libcallnr("vimtweak.dll", "EnableTopMost", 0)
endfunc
command! TweakDisableTopMost call TweakDisableTopMost()

" MainWindow
func! TweakHideMainWindow()
	call libcallnr("vimtweak.dll", "HideMainWindow", 1)
endfunc
command! TweakHideMainWindow call TweakHideMainWindow()

func! TweakShowMainWindow()
	call libcallnr("vimtweak.dll", "HideMainWindow", 0)
endfunc
command! TweakShowMainWindow call TweakShowMainWindow()

