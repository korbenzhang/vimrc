
if !has("gui_running") 
	finish
endif

if !IsInUnixGui()
	finish
endif

"need wmctrl, should install it first.
if !executable("wmctrl")
	call system('sudo apt-get install wmctrl -y')
endif

func! MaximizeWindow()      
    silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz  
endfunc
command! -bar -narg=0 MaximizeWindow  call MaximizeWindow()

"au GUIEnter * call MaximizeWindow()  

au GUIEnter * silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz  
 
