
function! WindowCenterInScreen()
    set lines=9999 columns=9999
    let g:windowsSizeFixX = 58
    let g:windowsSizeFixY = 118
    let g:windowsScaleX = 7.75
    let g:windowsScaleY = 17.0
    let g:windowsPosOldX = getwinposx()
    let g:windowsPosOldY = getwinposy()
    let g:windowsScreenWidth = float2nr(winwidth(0) * g:windowsScaleX) + g:windowsPosOldX + g:windowsSizeFixX
    let g:windowsScreenHeight = float2nr(winheight(0) * g:windowsScaleY) + g:windowsPosOldY + g:windowsSizeFixY
    set lines=35 columns=140
    let g:windowsSizeWidth = float2nr(winwidth(0) * g:windowsScaleX) + g:windowsSizeFixX
    let g:windowsSizeHeight = float2nr(winheight(0) * g:windowsScaleY) + g:windowsSizeFixY
    let g:windowsPosX = ((g:windowsScreenWidth - g:windowsSizeWidth) / 2)
    let g:windowsPosY = ((g:windowsScreenHeight - g:windowsSizeHeight) / 2)
    exec ':winpos ' . g:windowsPosX . ' ' . g:windowsPosY
endfunc
command! WindowCenter call WindowCenterInScreen()

au GUIEnter * call WindowCenterInScreen()

