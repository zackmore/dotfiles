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

runtime macros/matchit.vim
filetype plugin on

" Vundle start
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vandle'

Bundle 'fholgado/minibufexpl.vim'
Bundle 'vim-scripts/Emmet.vim'
Bundle 'scrooloose/nerdtree'

filetype plugin indent on
