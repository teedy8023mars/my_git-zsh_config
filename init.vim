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
set hidden
set confirm "prompt when closing unsaved file"
set backspace=indent,eol,start
set title
set scrolloff=10

call plug#begin('~/.vim/plugged')
"auto pair
Plug 'jiangmiao/auto-pairs'  

"Gruvbox theme
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
