syntax on
set hlsearch
set nu
set nowrap
set smartindent
set smartcase
set expandtab
set noswapfile
set nobackup
set tabstop=4 softtabstop=4
set shiftwidth=4
set noerrorbells
set incsearch
set nocompatible
set hidden
set encoding=utf-8

highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

colorscheme gruvbox
set background=dark
let g:airline_theme='gruvbox'
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nmap <C-n> :NERDTreeToggle<CR>
