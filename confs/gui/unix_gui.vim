"need wmctrl, should install it first.
"sudo apt-get install wmctrl

if IsInWinGui()
	finish
endif

function! MaximizeWindow()      
    silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz  
endfunction
command! -bar -narg=0 MaximizeWindow  call MaximizeWindow()

au GUIEnter * call MaximizeWindow()  

