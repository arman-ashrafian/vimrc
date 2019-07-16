" My vimrc brah

syntax on
set number
set encoding=utf-8
set nocompatible
set autoindent
set smartindent

" allow mouse to scroll
set mouse=a

" enable status bar
set laststatus=2  

" ignore case when searching
set ignorecase

" highlight search results
set hlsearch

" show matching brackets
set showmatch

" width of \t
set tabstop=2
" indents will have a width of 4
set shiftwidth=2
" sets the numnber of columns for \t
set softtabstop=2
" expands \t to spaces
set expandtab

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

" // to search for selected text
vnoremap // y/\V<C-r>=escape(@", '/\')"<CR><CR>
" -----------------------------------------


" -------------- Plugins ------------------
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'mattn/emmet-vim'
Plug 'itchyny/lightline.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'flazz/vim-colorschemes'
Plug 'zxqfl/tabnine-vim'

call plug#end()
" -----------------------------------------

" remove -- (mode) --
set noshowmode

let g:lightline = { 'colorscheme': 'wombat' }

" vix highlight error in .go files
let g:go_highlight_trailing_whitespace_error=0

" color scheme
colors made_of_code

