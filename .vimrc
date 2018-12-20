set number
set ruler
set laststatus=2
set lazyredraw
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

colorscheme peachpuff

runtime macros/matchit.vim
set nocompatible
set incsearch
set ignorecase
set smartcase
set wildmenu
set mouse=r

let mapleader=';'

""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug
" https://github.com/junegunn/vim-plug

" Auto install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install Plugs
call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/Emmet.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'bling/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/DrawIt'
Plug 'junegunn/goyo.vim'
Plug 'chrisbra/csv.vim'
Plug 'tpope/vim-jdaddy'
Plug 'tpope/vim-surround'
" Plug 'easymotion/vim-easymotion'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugs Configurations
" Shortcuts start 
" Use ;q for no highlight in search
nmap <Leader>q :nohlsearch<CR> 

" Use ;t to open/close NERDTree
nmap <Leader>t :NERDTreeToggle<CR>

" Use ;; to open CtrlPBuffer
nmap <Leader>; :CtrlPBuffer<CR>
nmap <Leader>' :CtrlPTag<CR>

" Use ;b to open/close Tagbar
nmap <Leader>r :TagbarToggle<CR>

:let g:ctrlp_map = '<Leader>;'
:let g:ctrlp_match_window_bottom = 0
:let g:ctrlp_match_window_reversed = 0
:let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
:let g:ctrlp_working_path_mode = 0
:let g:ctrlp_dotfiles = 0
:let g:ctrlp_switch_buffer = 0
:let g:ctrlp_user_command = [
    \ '.git', 'cd %s && git ls-files . -co --exclude-standard',
    \ 'find %s -type f'
    \ ]
:let g:airline#extensions#tagbar#enabled = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keys Remapping

" Use Ctrl-n to jump next buffer
" Use Ctrl-p to jump prev buffer
" Use Ctrl-k to kill current buffer
nmap <C-n> :bn<CR>
nmap <C-p> :bp<CR>
nmap <C-k> :bp\|bd #<CR>

" Line wise in movement
nmap j gj
nmap k gk

" Extra Line Scroll with Cursor
nmap <C-e> <C-e>j
nmap <C-y> <C-y>k

" Readline like in command line
:cnoremap <C-a> <Home>
:cnoremap <C-b> <Left>
:cnoremap <C-f> <Right>
:cnoremap <C-d> <Delete>

" No CursorLine
:hi CursorLine term=none
:hi CursorLine cterm=none
:hi CursorLine gui=none
