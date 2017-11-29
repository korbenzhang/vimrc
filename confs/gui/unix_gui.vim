"need wmctrl, should install it first.
"sudo apt-get install wmctrl

if !has("gui_running") 
	finish
endif

if !has("gui_gtk")
	finish
endif

function! MaximizeWindow()      
    silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz  
endfunction
command! -bar -narg=0 MaximizeWindow  call MaximizeWindow()

"au GUIEnter * call MaximizeWindow()  

au GUIEnter * silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz  

