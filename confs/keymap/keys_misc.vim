" clear highlight match.
nmap <silent> <esc><esc> :noh<cr>

" Make Y behave like other capitals.
nnoremap Y y$

" Don't use Ex mode, use Q for formatting
map  Q gq

" NOTICE: linux console use C-S lock console
" use C-Q unlock console.
noremap <C-s> :w<cr>
imap <C-s> <C-O>:w<cr>

noremap <M-s> :w<cr>
imap <M-s> <C-O>:w<cr>

noremap <M-q> :close<cr>
imap <M-q> <C-O>:close<cr>

"Delete Lines
nmap <C-k> dd
imap <C-k> <C-O>dd

" Words
nmap <S-Del> dw
imap <S-Del> <C-O>dw

" GoTo file
nmap gf :tabnew <cfile><cr>
nmap <M-f> gf
nmap <A-f> gf
imap <M-f> <C-O>gf
imap <A-f> <C-O>gf

" GoTo Define
nmap <M-d> gd
imap <M-d> <C-O>gd

inoremap <C-C> <Esc>`^

vnoremap  <M-<> <gv
vnoremap  <M->> >gv

vnoremap  <Space> I<Space><Esc>gv

" Movement in insert mode
inoremap <C-h> <C-o>h
inoremap <C-l> <C-o>a
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-^> <C-o><C-^>

" Quickfix
" ----------------------------------------------------------------------------
nnoremap ]q :cnext<cr>zz
nnoremap [q :cprev<cr>zz
nnoremap ]l :lnext<cr>zz
nnoremap [l :lprev<cr>zz

" ----------------------------------------------------------------------------
" Buffers
" ----------------------------------------------------------------------------
nnoremap ]b :bnext<cr>
nnoremap [b :bprev<cr>

" ----------------------------------------------------------------------------
" Tabs
" ----------------------------------------------------------------------------
nnoremap ]t :tabn<cr>
nnoremap [t :tabp<cr>

" ----------------------------------------------------------------------------
" <tab> / <s-tab> | Circular windows navigation
" ----------------------------------------------------------------------------
nnoremap <tab>   <c-w>w
nnoremap <S-tab> <c-w>W

" ----------------------------------------------------------------------------
" Readline-style key bindings in command-line (excerpt from rsi.vim)
" ----------------------------------------------------------------------------
cnoremap        <C-A> <Home>
cnoremap        <C-B> <Left>
cnoremap <expr> <C-D> getcmdpos()>strlen(getcmdline())?"\<Lt>C-D>":"\<Lt>Del>"
cnoremap <expr> <C-F> getcmdpos()>strlen(getcmdline())?&cedit:"\<Lt>Right>"
cnoremap        <M-b> <S-Left>
cnoremap        <M-f> <S-Right>

"silent! exe "set <S-Left>=\<Esc>b"
"silent! exe "set <S-Right>=\<Esc>f"

"nnoremap <pageup> <c-u>
"nnoremap <pagedown> <c-d>

