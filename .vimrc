set nu
set ruler
set showmode
set autoindent
set hlsearch
syntax on
set matchpairs=(:),{:},[:],<:>,':',":"

set fileencodings=ucs-bom,UTF-8,GBK,BIG5
set fileencoding=UTF-8
set fileformat=unix

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set backspace=2

let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1

runtime macros/matchit.vim
filetype plugin on
