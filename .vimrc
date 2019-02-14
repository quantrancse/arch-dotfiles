set nocompatible		" use vim defaults instead of vi

" Encoding
set encoding=utf-8

set path+=/usr/include/c++/6 
set runtimepath+=~/.vim/bundle/Vundle.vim 
call vundle#begin() 
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"Put your non-Plugin stuff after this line
Plugin 'scrooloose/nerdtree'				" File Explorer
Plugin 'jlanzarotta/bufexplorer'			" Buffer Explorer :BufExplore
Plugin 'godlygeek/tabular'					" Text alignment
Plugin 'majutsushi/tagbar'					" Display tags in a window
"Plugin 'scrooloose/syntastic'				" Syntax checking on write
Plugin 'tpope/vim-fugitive'					" Git wrapper
Plugin 'tpope/vim-surround'					" Manipulate quotes and brackets
Plugin 'terryma/vim-multiple-cursors'		" Multiple cursors work
Plugin 'jiangmiao/auto-pairs'               " Auto Brackets
Plugin 'easymotion/vim-easymotion'          " Easy motion

" All of your Plugins must be added before the following line
call vundle#end()

if has("win32")
    set runtimepath+=~/.vim
endif

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype on
filetype plugin indent on

" General
set number                          " Show line numbers
set backspace=2			            " enable <BS> for everything
set completeopt=longest,menuone		" Autocompletion options
set mouse=a					        " enable mouse in all modes
set hidden							" hide when switching buffers, don't unload
set laststatus=2					" always show status line
set lazyredraw						" don't update screen when executing macros
set showmatch						" show bracket matches
set textwidth=0						" don't break lines after some maximum width
set ttyfast							" increase chars sent to screen for redrawing
set title							" use filename in window title
set wildmenu						" enhanced cmd line completion
set wildchar=<TAB>					" key for line completion
set noerrorbells					" no error sound
set splitright						" Split new buffer at right
set clipboard=unnamedplus           " Register to clipboard

" Last line
set noshowmode
set showcmd

" Show file stats
set ruler

" Update file change
set autoread
set autowrite

" Blink cursor on error instead of beeping (grr)
set visualbell
set t_vb=

" Tabs
set autoindent						" copy indent from previous line
set si                              " smart indent
set expandtab						" no replace tabs with spaces
set shiftwidth=4					" spaces for autoindenting
" set softtabstop=4					" spaces for editing, e.g. <Tab> or <BS>
set tabstop=4						" spaces for <Tab>

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase

" Mappings {{{

" Map leader
let mapleader = "\<Space>"

" out bracket
inoremap <C-e> <esc>la

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Save file
nnoremap <Leader>w :w<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>q :q<CR>

" Copy paste from clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Open nerdtree
map <Leader>n :NERDTreeToggle<CR>

" Format
nnoremap <Leader>fm gg=G 

" New func
inoremap <C-j> <ESC>jo<CR><BS> 

" Tabs 
nnoremap <C-Left> :tabp<CR>
nnoremap <C-Right> :tabn<CR>

" Clear buffer
nnoremap <C-X> :bd<CR>

" Open terminal
map <F6> :let $VIM_DIR=expand('%:p:h')<CR>:shell<CR>cd $VIM_DIR<CR>

" rename file
map <Leader>rnf :call RenameFile()<cr>

" Toggle search
nnoremap <Leader>os :noh<CR>

" NERDTree
let g:NERDTreeShowHidden = 1


" Plugin Settings {{{
" -----------------------------------------------------------------------------
" Rename current file
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction