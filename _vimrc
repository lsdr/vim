" lsdr .vimrc
" github.com/lsdr/vim-folder
"
" reference for building vim:
" http://mysite.verizon.net/astronaut/vim/vimfeat.html
"

" stuff required by Vundle to work
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle required! 
Bundle 'gmarik/vundle'

" colorschemes
Bundle 'kib_darktango.vim'
Bundle 'Solarized'
Bundle 'sexy-railscasts'
Bundle 'aerosol/vim-compot'

" plugins
Bundle 'AutoClose'
Bundle 'AutoComplPop'
Bundle 'nginx.vim'

Bundle 'tpope/vim-rvm'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'

Bundle 'vim-ruby/vim-ruby'
Bundle 'jimenezrick/vimerl'
Bundle 'scrooloose/nerdcommenter'
Bundle 'jmcantrell/vim-virtualenv'

" enable filetype specifics
filetype on
filetype plugin on
filetype indent on

" syntax highlight
syntax on

" set <leader> to comma
let mapleader=','

" just to speed things up
nnoremap ; :

" text width limited to 80 cols
set textwidth=80

" encoding it UTF-8 no matter what the term says
set encoding=utf-8

" make command line two lines high
set ch=2

" interface and basic behavior
set nocompatible
set bs=2 " same as :set backspace=indent,eol,start
set mousehide
set nu
set nuw=5
set wrap
set hidden " change buffer without saving
set ruler
set scrolloff=5 " lines above/below cursor
set history=750
set fileformats=unix,mac,dos
set cursorline
set autoread " automatically reloads file if changed outside
set splitbelow " split new window below current window
set nojoinspaces " use just one space to join strings

" tab/indentation configuration
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent

" tab completion
set wildmenu
set wildmode=list:longest
set wildignore+=*.o,*~,.lo,*.swp,*.pyc,.git,*.log

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

" make the status line more informative
set laststatus=2
set statusline=%<buf:[%n]\ %f\ %h%m%r " buffer, filename, flags
set statusline+=\ \ [
set statusline+=%{strlen(&ft)?&ft:'none'} " filetype
set statusline+=]\ "
set statusline+=%{virtualenv#statusline()}
set statusline+=%{rvm#statusline_ft_ruby()}
set statusline+=%=
set statusline+=\ [%3.(%c%)\ %-7.(%l/%L%)]\ %P

" few useful shortcuts
command! Rehash source ~/.vimrc
command! Helptags helptags ~/.vim/doc

" clear search highlights
nmap <silent> ,/ :nohlsearch<CR>

" python/ruby run current buffer code
:map <leader>r :!ruby %<cr>
:map <leader>p :!python %<cr>

" make the arrow keys switch between splits
map <up> <C-w>k
map <down> <C-w>j
map <right> <C-w>l
map <left> <C-w>h

" python specifics
autocmd FileType python set softtabstop=4
autocmd FileType python set shiftwidth=4
autocmd FileType python set expandtab

" plugins
"" autocomplpop
let g:acp_behaviorKeywordLength=4
let g:acp_behaviorFileLength=4

"" NERDCommenter
let NERDSpaceDelims=1
let NERDMenuMode=0

"" rails.vim
autocmd User Rails if &filetype != 'ruby' | setlocal sw=4 sts=4 noexpandtab | endif
autocmd User Rails if &filetype == 'yaml' | setlocal sw=2 sts=2 expandtab | endif

"" command-t
let g:CommandTMaxFiles=5000
let g:CommandTMaxDepth=10
let g:CommandTMaxHeight=10

"" nginx.vim
" au BufRead,BufNewFile /usr/local/etc/nginx/* set ft=nginx

"" virtualenv.vim
let g:virtualenv_directory='/Users/lsdr/.pvm'
let g:virtualenv_auto_activate=1
let g:virtualenv_stl_format='(py:%n)'

