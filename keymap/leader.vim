" key map for leader.
" ----------------------------------------------------

nmap <leader>sr :silent !
map  <leader>bd :Bclose<cr>
map  <leader>cd :cd %:p:h<cr>
map  <leader>n :cn<cr>
map  <leader>p :cp<cr>
" delete ^M
map  <leader>dm :%s///g<cr>
map  <leader>ds :%s/\s\+$//g<cr>
" sudo save
map  <leader>sw :w !sudo tee %<cr>
map  <leader>. :e .<cr>
map  <leader>w :w!<cr>
map  <leader>q :close<cr>
map  <leader>s :update<cr>
map  <leader>sh :shell<cr>
nmap <leader>f :find<cr>
" run line
map  <leader>rl <ESC>:.w !bash<CR>
" run file
map  <leader>rf <ESC>:! "%"<CR>