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

" text width limited to 80 cols
set textwidth=80

" make command line two lines high
set ch=2

set nocompatible
set bs=2
set mousehide
set nu
set nuw=5
set wrap
set hidden " change buffer without saving
set ruler
set so=5
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

" backup and swap settings
set nobackup
set directory=~/.vim/tmp

" a few useful shortcuts
command! Rehash source ~/.vimrc
command! Color echo g:colors_name
command! Helptags helptags ~/.vim/doc

" clear search highlights
nmap <silent> ,/ :nohlsearch<CR>

" make the arrow keys switch between splits
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
set statusline+=%(tag:[%{Tlist_Get_Tagname_By_Line()}]%)
set statusline+=\ [%3.(%c%)\ %-7.(%l/%L%)]\ %P

" python specifics
autocmd FileType python set softtabstop=4
autocmd FileType python set shiftwidth=4
autocmd FileType python set expandtab

" plugins
"" autocomplpop
let g:AutoComplPop_BehaviorKeywordLength = 4

"" FuzzyFinder
let g:fuzzy_ignore = '*.log;*.swp;*~;temp/*;log/*;tmp/*;coverage/*;README;*.jpg;*.png;*.gem'
let g:fuzzy_enumerating_limit = 15
let g:fuzzy_matching_limit = 40
let g:fuzzy_ceiling = 300000
map <leader>bb :FufBuffer<CR>
map <leader>ff :FufFile<CR>

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

"" taglist
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_Display_Tag_Scope = 0
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Show_Menu = 1
map <Leader>tt :TlistToggle<CR>
map <Leader>th :TlistHighlightTag<CR>
map <Leader>tp :TlistShowPrototype<CR>
map <Leader>tu :TlistUpdate<CR>

"" rails.vim
""" small adjustment to handle html files better
autocmd User Rails if &filetype != 'ruby' | setlocal sw=4 sts=4 noexpandtab | endif
autocmd User Rails if &filetype == 'yaml' | setlocal sw=2 sts=2 expandtab | endif

