" lsdr .vimrc file
"
" bootstrap vundle 
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" splitted the configuration into several files, to make it easier to read, 
" maintain and experiment with; instead of a 1000+ lines of configuration
" bundled together now I have a dozen or so files, each with a single purpose
" and containing everything related to that specific topic
" 
" loading extra configuration
runtime! conf.d/*.vim 

" [TODO] move these plugins to separated files
" plugins
Bundle 'AutoComplPop'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-surround'
Bundle 'kien/ctrlp.vim'
Bundle 'jimenezrick/vimerl'
Bundle 'Townk/vim-autoclose'
Bundle 'mattreduce/vim-mix'
Bundle 'elixir-lang/vim-elixir'

" enable plugin/indentation based on filetype detection
filetype plugin indent on

" enable syntax highlight
syntax enable

" set <leader> to comma
let mapleader=','

" shift no longer required
nnoremap ; :

" text width limited to 80 cols
set textwidth=80

" encoding it UTF-8 no matter what the term says
set encoding=utf-8

" 256 color term
" set t_Co=256

" improving redrawing smoothness
set ttyfast
set lazyredraw

" interface and basic behavior
set nocompatible
set bs=2          " same as :set backspace=indent,eol,start
set mousehide
set nu
set nuw=5
set wrap
set hidden        " change buffer without saving
set ruler
set scrolloff=5   " lines above/below cursor
set history=750
set fileformats=unix,mac,dos
set cursorline
set autoread      " automatically reloads file if changed outside
set splitbelow    " split new window below current window
set splitright    " split new window right of the current one
set nojoinspaces  " use just one space to join strings
set nostartofline " do not move cursor back to start of line when moving

" tab/indentation configuration
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent

" tab completion
set wildmenu
set wildmode=list:longest,full
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
nmap <silent> ,/ :nohls<cr>

" python/ruby run current buffer code
map <leader>r :!ruby %<cr>
map <leader>p :!python %<cr>

" make the arrow keys switch between splits
map <up> <C-w>k
map <down> <C-w>j
map <right> <C-w>l
map <left> <C-w>h

" plugins
"" autocomplpop
let g:acp_behaviorKeywordLength=4
let g:acp_behaviorFileLength=4


"" ctrlp
let g:ctrlp_map = '<leader>t'
nmap <leader>b :CtrlPBuffer<cr>
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" vim: set ft=vim:

