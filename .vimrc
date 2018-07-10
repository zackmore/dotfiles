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
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tomasr/molokai'
Plug 'Keithbsmiley/swift.vim'
Plug 'bling/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'slim-template/vim-slim'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'easymotion/vim-easymotion'
Plug 'statianzo/vim-jade'
Plug 'vim-scripts/DrawIt'
Plug 'elixir-lang/vim-elixir'
Plug 'lambdatoast/elm.vim'
Plug 'posva/vim-vue'
Plug 'neovimhaskell/haskell-vim'
Plug 'junegunn/goyo.vim'
Plug 'leafgarland/typescript-vim'

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

" ale
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
let g:ale_sign_column_always = 0
let g:ale_set_highlights = 0
" 自定义图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
"<Leader>s触发/关闭语法检查
nmap <Leader>s :ALEToggle<CR>
"<Leader>d查看错误或警告的详细信息
nmap <Leader>d :ALEDetail<CR>
