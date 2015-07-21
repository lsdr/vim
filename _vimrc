"" lsdr .vimrc file - basic settings, leader mapping etc
""
"" first things first: set leader textwidth etc
" set <leader> to comma
let mapleader=','

" shift no longer required
nnoremap ; :

" text width limited to 80 cols
set textwidth=80

" encoding it UTF-8 no matter what the term says
set encoding=utf-8

" bootstrap vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()
Plugin 'gmarik/Vundle.vim'

" splitted the configuration into several files, to make it easier to read,
" maintain and experiment with; instead of a 1000+ lines of configuration
" bundled together now I have a dozen or so files, each with a single purpose
" and containing everything related to that specific topic
"
" loading extra configuration
runtime! conf.d/*.vim

" enable plugin/indentation based on filetype detection
filetype plugin indent on

" enable syntax highlight
syntax enable

" improving redrawing smoothness
set ttyfast
set lazyredraw

" interface and basic behavior
set nocompatible
set bs=2              " same as :set backspace=indent,eol,start
set mousehide
set nu
set nuw=5
set wrap
set hidden            " change buffer without saving
set ruler
set scrolloff=3       " lines above/below cursor
set history=750
set fileformats=unix,mac,dos
set cursorline
set autoread          " automatically reloads file if changed outside
set splitbelow        " split new window below current window
set splitright        " split new window right of the current one
set nojoinspaces      " use just one space to join strings
set formatoptions+=j  " delete comment when joining commented lines
set nostartofline     " do not move cursor back to start of line when moving

" if on mac, uses option-key as meta <M>; allow more key combos
if exists('+macmeta')
  set macmeta
endif

" tab/indentation configuration
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent

" tab completion
set wildmode=list:longest,full
set wildmenu
set wildignore+=*.o,*~,.lo,*.swp,*.pyc,.git,*.log,*.zip,*.so,*/tmp/*
set wildignore+=log/**,tmp/**,*DS_Store*,.hg

" search pattern highlight/incremental
set ignorecase
set smartcase
set infercase
set showmatch
set hlsearch
set incsearch

" backup and swap settings
set nobackup
set directory=~/.vim/tmp

" enable the matchit.vim shipped with vim
runtime! macros/matchit.vim

" few useful shortcuts
command! Rehash source ~/.vimrc
command! Helptags helptags ~/.vim/doc

" close current buffer
nmap <leader>x :close<cr>

" clear search highlights
nmap <silent>,/ :nohls<cr>

" make the arrow keys switch between splits
map <up>    <C-w>k
map <down>  <C-w>j
map <right> <C-w>l
map <left>  <C-w>h

" vim: set ft=vim:
