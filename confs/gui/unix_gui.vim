
if !has("gui_running") 
	finish
endif

func! MaximizeWindow()      
    silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz  
endfunc
command! -bar -narg=0 MaximizeWindow  call MaximizeWindow()

"au GUIEnter * call MaximizeWindow()  

au GUIEnter * silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz  
 
