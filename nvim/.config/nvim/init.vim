
" Plugins
runtime ./plug.vim
filetype plugin indent on

" Basic
set encoding=utf-8
let mapleader=" "
set backspace=start,eol,indent
set path+=**
set wildignore+=*/node_modules/*

" Behavior
set scrolloff=8
set nobackup
set hlsearch
set ignorecase

" Apperance
set title
set number
set relativenumber
set showcmd
set cmdheight=1
set laststatus=2
set lazyredraw
set nowrap 
set cursorline

" Indentation
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent 
set autoindent
set smarttab

" Theme
set termguicolors
set background=dark
colorscheme dracula
