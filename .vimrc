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
colors molokai 

" -------------- Key Bindings -------------
" F1 to save
nmap <F1> :w<CR>
imap <F1> <Esc>:w<CR>

" jj to get back to Normal 
imap jj <Esc>

" <C-h> to remove highlighted words
nmap <C-h> :noh<CR>

" nerdtree toggle
map <C-o> :NERDTreeToggle<CR>

" quick scrolling 
noremap <C-k> 5k
noremap <C-j> 5j
" -----------------------------------------


" -------------- Plugins ------------------
call plug#begin('~/.vim/plugged')

" nerdtree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'mattn/emmet-vim'
Plug 'itchyny/lightline.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()
" -----------------------------------------

" remove -- (mode) --
set noshowmode

let g:lightline = { 'colorscheme': 'wombat' }

" vix highlight error in .go files
let g:go_highlight_trailing_whitespace_error=0


