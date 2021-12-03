syntax on
set encoding=UTF-8
set mouse=a
set number 
set scrolloff=5
set hlsearch
set nu
set nowrap
set smartindent
set smartcase
set smarttab
set expandtab
set noswapfile
set nobackup
set tabstop=4 softtabstop=4 shiftwidth=4
set autoindent
set fileformat=unix
set noerrorbells
set incsearch
set hidden
highlight ColorColumn ctermbg=black ctermfg=white guibg=lightgrey

"Plugin Section
call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'  
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-commentary' "use gcc to comment out the entire line
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

colorscheme gruvbox
set background=dark
let g:airline_theme='base16_gruvbox_dark_hard'
let g:airline_powerline_fonts = 1
command! -nargs=0 Prettier :CocCommand prettier.formatFile
map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFocus<CR>
