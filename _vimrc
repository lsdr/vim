" lsdr .vimrc
" github.com/lsdr/vim-folder
"
" reference for building vim:
" http://mysite.verizon.net/astronaut/vim/vimfeat.html
"

" enable filetype specifics
filetype on
filetype plugin on
filetype indent on

" syntax highlight
syntax on

" set <leader> to comma
let mapleader = ','

" just to speed things up
nnoremap ; :

" text width limited to 80 cols
set textwidth=80

" make command line two lines high
set ch=2

set nocompatible
set bs=2 " same as :set backspace=indent,eol,start
set mousehide
set nu
set nuw=5
set wrap
set hidden " change buffer without saving
set ruler
set scrolloff=2 " lines above/below cursor
set history=750
set fileformats=unix,mac,dos
set cursorline
set autoread " automatically reloads file if changed outside

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
set wildignore+=*.o,*~,.lo,*.swp,*.pyc

" search pattern highlight/incremental
set ignorecase
set smartcase
set showmatch
set hlsearch
set incsearch

" clear search highlights
nmap <silent> ,/ :nohlsearch<CR>

" backup and swap settings
set nobackup
set directory=~/.vim/tmp

" a few useful shortcuts
command! Rehash source ~/.vimrc
command! Helptags helptags ~/.vim/doc

"" make the arrow keys switch between splits
map <up> <C-w>k
map <down> <C-w>j
map <right> <C-w>l
map <left> <C-w>h

" make the status line more informative
set laststatus=2
set statusline=%<buf:[%n]\ %f\ %h%m%r " buffer, filename, flags
set statusline+=\ \ [
set statusline+=%{strlen(&ft)?&ft:'none'} " filetype
set statusline+=]\ "
set statusline+=%=
set statusline+=\ [%3.(%c%)\ %-7.(%l/%L%)]\ %P

" python specifics
autocmd FileType python set softtabstop=4
autocmd FileType python set shiftwidth=4
autocmd FileType python set expandtab

" plugins
"" autocomplpop
let g:acp_behaviorKeywordLength=4
let g:acp_behaviorFileLength=4

"" FuzzyFinder
let g:fuf_modesDisable = ['coveragefile', 'mrucmd', 'bookmarkdir', 'givenfile', 'givendir', 'givencmd', 'quickfix', 'jumplist']
let g:fuzzy_ignore = '*.log;*.swp;*~;temp/*;log/*;tmp/*;coverage/*;README;*.jpg;*.png;*.gem'
let g:fuf_fuzzyRefining = 1
let g:fuf_enumeratingLimit = 15
map <leader>bb  :FufBuffer<CR>
map <leader>ff  :FufFile<CR>
map <leader>bcl :FufChangeList<CR>

"" NERDTree
map <leader>d :NERDTreeToggle<CR>
map <leader>dd :NERDTreeMirror<CR>
let NERDTreeCaseSensitiveSort = 1
let NERDTreeChDirMode = 2
let NERDTreeIgnore = ['\~$','\.[ao]$','\.swp$','\.DS_Store','\.svn','\.CVS','\.git','\.pyc','\.pyo','log','tmp','coverage']
let NERDTreeMouseMode = 2
let NERDTreeShowLineNumbers = 0
let NERDTreeWinSize = 30
let NERDTreeHijackNetrw = 1

"" NERDCommenter
let NERDSpaceDelims = 1

"" rails.vim
""" small adjustment to handle html files better
autocmd User Rails if &filetype != 'ruby' | setlocal sw=4 sts=4 noexpandtab | endif
autocmd User Rails if &filetype == 'yaml' | setlocal sw=2 sts=2 expandtab | endif

