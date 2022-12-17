" do not use Vi compatibility settings
set nocompatible

" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" general
" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++

set showcmd      " Show incomplete cmds
set showmode     " Show current mode
set visualbell   " No sound
set hidden       " Allow buffers to be hidden

" enable mouse
set mouse=a
set clipboard=unnamedplus   " Copy paste between vim and everything else

" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" visual stuff
" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++

" Use a line cursor within insert mode and a block cursor everywhere else.
"
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

syntax enable

" line number
set number
set nuw=4

" Enable highlighting of the current linec
set cursorline

" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" text, tab indent related
" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent

" shortcuts
nnoremap ^[j :m .+1<CR>==
nnoremap ^[k :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv




