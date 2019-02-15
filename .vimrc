syntax on
set number
set encoding=utf-8

set nocompatible

set autoindent
set smartindent

" enable status bar
set laststatus=2  

" ignore case when searching
set ignorecase

" highlight search results
set hlsearch

" show matching brackets
set showmatch

" width of \t
set tabstop=4
" indents will have a width of 4
set shiftwidth=4
" sets the numnber of columns for \t
set softtabstop=4
" expands \t to spaces
set expandtab

" color
set background=dark
colors made_of_code

nmap <F1> :w<CR>
imap <F1> <Esc>:w<CR>

imap jjj <Esc>

" ---- plugins ----
call plug#begin('~/.vim/plugged')

" nerdtree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'mattn/emmet-vim'
Plug 'itchyny/lightline.vim'

call plug#end()

" nerdtree toggle
map <C-o> :NERDTreeToggle<CR>

" remove -- (mode) --
set noshowmode

" quick scrolling 
noremap <C-k> 5k
noremap <C-j> 5j

let g:lightline = { 'colorscheme': 'wombat' }




