set number
set ruler
set laststatus=2
set cursorline
set showmode
set autoindent
set hlsearch
syntax enable
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

set foldmethod=manual
set nofoldenable

filetype on
filetype plugin on

runtime macros/matchit.vim
set nocompatible
set incsearch
set ignorecase
set wildmenu
set mouse=a

let mapleader=";"

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle start
" To use vundle, follow these steps:
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" Launch vim, run :BundleInstall
" done

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'fholgado/minibufexpl.vim'
Bundle 'vim-scripts/Emmet.vim'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tomasr/molokai'

Bundle 'slim-template/vim-slim'

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup for bundles
"
filetype plugin indent on
colorscheme molokai

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shortcuts start 
" Use ;; to jump between the pairs
nmap <Leader>; %
" Use ;nt to open/close NERDTree
nmap <Leader>nt :NERDTreeToggle<CR>
