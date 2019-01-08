if !has("gui_running") 
	finish
endif

"maximizewindow need wmctrl
if !executable('wmctrl')
	call system('sudo apt-get install -y wmctrl')
endif

func! MaximizeWindow()      
    "silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz  
	call system('wmctrl -i -b add,maximized_vert,maximized_horz -r '.v:windowid)
endfunc
command! -bar -narg=0 MaximizeWindow  call MaximizeWindow()

"au GUIEnter * call MaximizeWindow()  

"au GUIEnter * silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz  
au GUIEnter * call system('wmctrl -i -b add,maximized_vert,maximized_horz -r '.v:windowid)
