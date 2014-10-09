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

set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set smarttab
set backspace=2

runtime macros/matchit.vim
filetype plugin on

" Vundle start
" To use vundle, follow these steps:
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" Launch vim, run :BundleInstall
" done

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'fholgado/minibufexpl.vim'
Bundle 'vim-scripts/Emmet.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tomasr/molokai'

Bundle 'slim-template/vim-slim'

filetype plugin indent on

" Maps
" map <C-B> :NERDTreeToggle<CR>

" AutoCommands
" au VimEnter * NERDTree

colorscheme molokai
