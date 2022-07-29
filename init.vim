syntax on
set encoding=UTF-8
set t_Co=256
set ignorecase
set mouse=a
set nohlsearch "never highlight search"
set incsearch "Incremental search that shows partial matches"
set showmatch "show matching words during a search"
set number relativenumber "set relative number"
set cursorline "highlight current line number"
set nowrap "Enable line wrapping"
set smartindent smartcase smarttab
set autoindent "New lines inherit the indentation of previous lines"
set shiftround "Round the indentation to the nearest multiple of shiftwidth"
set expandtab "Convert tabs to spaces"
set noswapfile nobackup
set tabstop=4 softtabstop=4 shiftwidth=4
set fileformat=unix
set noerrorbells 
set backspace=indent,start,eol
set hidden
set confirm "prompt when closing unsaved file"
set title
set scrolloff=10

call plug#begin('~/.vim/plugged')
"auto pair
Plug 'jiangmiao/auto-pairs'  

"Theme
Plug 'gruvbox-community/gruvbox'

"Vim plugin for Git
Plug 'tpope/vim-fugitive'

"navigator
Plug 'christoomey/vim-tmux-navigator'

"use gcc to comment out the entire line
Plug 'tpope/vim-commentary' 

"Nerdtree and icon
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

"syntax highlight
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"airline and theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

colorscheme gruvbox
set background=dark
let g:airline_theme='base16_gruvbox_dark_hard'
let g:airline_powerline_fonts = 1

map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFocus<CR>
map <C-t> :NERDTreeToggle<CR>

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
