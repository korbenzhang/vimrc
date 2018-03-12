
Plug 'tenfyzhong/CompleteParameter.vim'

set noshowmode
set cmdheight=2

"inoremap! <silent><expr> (complete_parameter#pre_complete("()")

nmap <c-j> <Plug>(complete_parameter#goto_next_parameter)
imap <c-j> <Plug>(complete_parameter#goto_next_parameter)
"smap <c-j> <Plug>(complete_parameter#goto_next_parameter)

smap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
imap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
"smap <c-k> <Plug>(complete_parameter#goto_previous_parameter)

"nmap <m-d> <Plug>(complete_parameter#overload_down)
"imap <m-d> <Plug>(complete_parameter#overload_down)
"smap <m-d> <Plug>(complete_parameter#overload_down)

"nmap <m-u> <Plug>(complete_parameter#overload_up)
"imap <m-u> <Plug>(complete_parameter#overload_up)
"smap <m-u> <Plug>(complete_parameter#overload_up)
