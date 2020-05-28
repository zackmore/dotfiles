set number relativenumber
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
set previewheight=100

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
Plug 'bling/vim-airline'
" Plug 'bling/vim-bufferline'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/DrawIt'
Plug 'junegunn/goyo.vim'
Plug 'chrisbra/csv.vim'
Plug 'tpope/vim-jdaddy'
Plug 'posva/vim-vue'
Plug 'fatih/vim-go'
Plug 'dart-lang/dart-vim-plugin'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'tpope/vim-commentary'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Quramy/tsuquyomi'
Plug 'tpope/vim-fugitive'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugs Configurations
" Shortcuts start 
" Use ;q for no highlight in search
nmap <Leader>q :nohlsearch<CR> 

" NERDTree
nmap <Leader>t :NERDTreeToggle<CR>

" tarbar
nmap <Leader>r :TagbarToggle<CR>

" Plug Ctrlp
nmap <Leader>; :CtrlPBuffer<CR>
nmap <Leader>' :CtrlPTag<CR>
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
" Plug vim-airline
:let g:airline#extensions#tabline#enabled = 1
:let g:airline#extensions#tabline#formatter = 'jsformatter'
:let g:airline#extensions#tabline#show_tabs = 0
:let g:airline#extensions#tagbar#enabled = 0

" Plug vim-prettier
noremap <Leader>p :PrettierAsync<CR>

" Plug commentary
noremap <Leader>/ :Commentary<CR>

" Plug vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
" :hi IndentGuidesOdd  ctermbg=18
:hi IndentGuidesEven ctermbg=17

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keys Remapping

" Use Ctrl-n to jump next buffer
" Use Ctrl-p to jump prev buffer
" Use Ctrl-k to kill current buffer
nmap <C-l> :bn<CR>
nmap <C-h> :bp<CR>
nmap <C-d> :bp\|bd #<CR>

" Move lines
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Line wise in movement
nmap j gj
nmap k gk

" Extra Line Scroll with Cursor
nmap <C-e> <C-e>j
nmap <C-y> <C-y>k

" Readline like in command line
" :cnoremap <C-a> <Home>
" :cnoremap <C-b> <Left>
" :cnoremap <C-f> <Right>
" :cnoremap <C-d> <Delete>

" Ctags
" Jump definition forward in a new buffer
nnoremap <C-m> <C-]>

" No CursorLine
:hi CursorLine term=none
:hi CursorLine cterm=none
:hi CursorLine gui=none
