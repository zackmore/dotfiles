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

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set backspace=2

set foldmethod=manual
set nofoldenable

colorscheme peachpuff

runtime macros/matchit.vim
set nocompatible
set incsearch
set ignorecase
set smartcase
set wildmenu
set mouse=a

let mapleader=';'

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle start
" To use vundle, follow these steps:
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" Launch vim, run :BundleInstall
" done

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'

Plugin 'vim-scripts/Emmet.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tomasr/molokai'
Plugin 'Keithbsmiley/swift.vim'
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'slim-template/vim-slim'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'easymotion/vim-easymotion'
Plugin 'statianzo/vim-jade'
Plugin 'vim-scripts/DrawIt'
Plugin 'elixir-lang/vim-elixir'
Plugin 'lambdatoast/elm.vim'
Plugin 'posva/vim-vue'
Plugin 'neovimhaskell/haskell-vim'

call vundle#end()

filetype off
filetype plugin on
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup for bundles
" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shortcuts start 
" Use ;q for no highlight in search
nmap <Leader>q :nohlsearch<CR> 

" Use ;t to open/close NERDTree
nmap <Leader>t :NERDTreeToggle<CR>

" Use ;; to open CtrlPBuffer
nmap <Leader>; :CtrlPBuffer<CR>

" Use ;b to open/close NERDTree
nmap <Leader>b :TagbarToggle<CR>

:let g:ctrlp_map = '<Leader>;'
:let g:ctrlp_match_window_bottom = 0
:let g:ctrlp_match_window_reversed = 0
:let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
:let g:ctrlp_working_path_mode = 0
:let g:ctrlp_dotfiles = 0
:let g:ctrlp_switch_buffer = 0
let g:ctrlp_user_command = [
    \ '.git', 'cd %s && git ls-files . -co --exclude-standard',
    \ 'find %s -type f'
    \ ]

" Use Ctrl-n/Ctrl-p to jump next/prev buffer
nmap <C-n> :bn<CR>
nmap <C-p> :bp<CR>
nmap <C-k> :bd<CR>

" Line wise in movement
nmap j gj
nmap k gk

" Readline like in command line
:cnoremap <C-a> <Home>
:cnoremap <C-b> <Left>
:cnoremap <C-f> <Right>
:cnoremap <C-d> <Delete>

" Remove the underline of CursorLine
:hi CursorLine term=bold cterm=bold

" Use ;f to start easymotion
nmap <Leader>f <Plug>(easymotion-prefix)
