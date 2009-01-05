" lsdr .vimrc
" github.com/lsdr/.vim/tree

filetype on
filetype plugin on
filetype indent on

set nocompatible
set bs=2
set backup
set mousehide
set nu
set nuw=5
set wrap
set hidden
set ruler
set so=5
set history=750

" Syntax highlight
syntax on

" Tab/indentation configuration
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set ai " autoindent
set si " smartindent

" Text width limited to 80 cols
set textwidth=80

" Make command line two lines high
set ch=2

" Make the status line more informative
set laststatus=2
set statusline =%<buf:[%n]\ %f\ %h%m%r " buffer, filename, flags
set statusline+=\ \ [
set statusline+=%{strlen(&ft)?&ft:'none'} " filetype
set statusline+=]\ "
set statusline+=%=
set statusline+=%(tag:[%{Tlist_Get_Tagname_By_Line()}]%)
set statusline+=\ [%3.(%c%)\ %-7.(%l/%L%)]\ %P

" Tab completion
set wildmenu
set wildmode=list:longest
set wildignore+=*.o,*~,.lo,*.swp

" Search pattern highlight/incremental
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Set <Leader> to comma
let mapleader = ','

" A few useful shortcuts
command! Rehash source ~/.vimrc
command! Color echo g:colors_name
command! Helptags helptags ~/.vim/doc

" home/end in a line
map H ^
map L $

" Use ack instead of grep
"set grepprg=ack
"set grepformat=%f:%l:%m

" Extended % matching
runtime macros/matchit.vim

" Python specifics
autocmd FileType python     set softtabstop=4
autocmd FileType python     set shiftwidth=4
autocmd FileType python     set expandtab

" scroll viewpoint by 'n' lines
" source: http://items.sjbach.com/319/configuring-vim-right
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>

" plugins
" ----------------------------------------------------------------------------

" FuzzyFinder
let g:fuzzy_ignore = "*.log"
let g:fuzzy_matching_limit = 50
let g:fuzzy_ceiling = 95000
map <leader>t    :FuzzyFinderTextMate<CR>
map <leader>b    :FuzzyFinderBuffer<CR>
map <leader>ff   :FuzzyFinderFile<CR>    " File
"map <leader>fmf  :FuzzyFinderMruFile<CR> " Recent
"map <leader>fc   :FuzzyFinderCmd<CR>     " CoMmand
"map <leader>fmc  :FuzzyFinderMruCmd<CR>  " Command
"map <leader>fd   :FuzzyFinderDir<CR>
"map <leader>fbm  :FuzzyFinderBookmark<CR>
"map <leader>ft   :FuzzyFinderTag<CR>
"map <leader>ftf  :FuzzyFinderTaggedFile<CR>

" NERDTree
map <leader>d :NERDTreeToggle <CR>
let NERDTreeCaseSensitiveSort = 1
let NERDTreeChDirMode = 2
let NERDTreeIgnore = ['\.[ao]$','\.swp$','\.DS_Store','\.svn','\.CVS','\.git', '\.pyc', '\.pyo']
let NERDTreeMouseMode = 2
let NERDTreeShowLineNumbers = 0
let NERDTreeWinSize = 35


" plugin taglist
let TList_Ctags_Cmd="/usr/local/bin/ctags"
let TList_Display_Tag_Scope=0
let TList_Display_Prototype=1
"let Tlist_File_Fold_Auto_Close = 1
"let Tlist_Show_Menu = 1
map <Leader>tt :TlistToggle<CR>
map <Leader>th :TlistHighlightTag<CR>
map <Leader>tp :TlistShowPrototype<CR>
map <Leader>tu :TlistUpdate<CR>
"map <leader>ts :TlistSessionSave ~/.tlistsession.vim.tag <CR>
"map <leader>tl :TlistSessionLoad ~/.tlistsession.vim.tag <CR>

