" lsdr .vimrc file
" github.com/lsdr/vim
"
" bootstrap vundle 
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" colorschemes
Bundle 'lsdr/monokai'
Bundle 'chriskempson/base16-vim'
Bundle 'noahfrederick/vim-hemisu'
Bundle 'altercation/vim-colors-solarized'

" plugins
Bundle 'AutoComplPop'
Bundle 'nginx.vim'
Bundle 'pythoncomplete'

Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'

Bundle 'rking/ag.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'sukima/xmledit'
Bundle 'lsdr/octave.vim'
Bundle 'vim-ruby/vim-ruby'
Bundle 'jimenezrick/vimerl'
Bundle 'Townk/vim-autoclose'
Bundle 'mattonrails/vim-mix'
Bundle 'elixir-lang/vim-elixir'
Bundle 'scrooloose/nerdcommenter'
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'puppetlabs/puppet-syntax-vim'

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
set splitright " split new window right of the current one
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
set wildignore+=*.o,*~,.lo,*.swp,*.pyc,.git,*.log,*.zip,*.so,*/tmp/*

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
" set statusline+=%{rvm#statusline_ft_ruby()}
set statusline+=%=
set statusline+=\ [%3.(%c%)\ %-7.(%l/%L%)]\ %P

" few useful shortcuts
command! Rehash source ~/.vimrc
command! Helptags helptags ~/.vim/doc

" clear search highlights
nmap <silent> ,/ :nohlsearch<cr>

" python/ruby run current buffer code
map <leader>r :!ruby %<cr>
map <leader>p :!python %<cr>

" make the arrow keys switch between splits
map <up> <C-w>k
map <down> <C-w>j
map <right> <C-w>l
map <left> <C-w>h

" python specifics
autocmd FileType python set softtabstop=4
autocmd FileType python set shiftwidth=4
autocmd FileType python set expandtab
autocmd FileType python set omnifunc=pythoncomplete#Complete
" once pydoc window gets boring, uncomment the next line
" autocmd FileType python set completeopt-=preview

" ruby specifics
" let g:rubycomplete_rails=0
" let g:rubycomplete_classes_in_global=1
" let g:rubycomplete_buffer_loading=1
" let g:rubycomplete_include_object=1
" let g:rubycomplete_include_objectspace=1

" octave
augroup filetypedetect 
  au! BufRead,BufNewFile *.m,*.oct set filetype=octave 
augroup END

"" enable octave keywords
if has("autocmd") && exists("+omnifunc") 
  autocmd Filetype octave if &omnifunc == "" | setlocal omnifunc=syntaxcomplete#Complete | endif 
endif 

" plugins
"" autocomplpop
let g:acp_behaviorKeywordLength=4
let g:acp_behaviorFileLength=4

" ag.vim
let g:agprg="ag --nocolor --nogroup --column --stats --hidden -i"

"" NERDCommenter
let NERDSpaceDelims=1
let NERDMenuMode=0

"" rails.vim
autocmd User Rails if &filetype != 'ruby' | setlocal sw=4 sts=4 noexpandtab | endif
autocmd User Rails if &filetype == 'yaml' | setlocal sw=2 sts=2 expandtab | endif

"" ctrlp
let g:ctrlp_map = '<leader>t'
nmap <leader>b :CtrlPBuffer<cr>
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

"" nginx.vim
" au BufRead,BufNewFile /usr/local/etc/nginx/* set ft=nginx

"" virtualenv.vim
let g:virtualenv_directory='/Users/lsdr/.pvm'
let g:virtualenv_auto_activate=1
let g:virtualenv_stl_format='(py:%n)'

"" vim-multiple-cursors
" Default mapping
" let g:multi_cursor_next_key='<C-n>'
" let g:multi_cursor_prev_key='<C-p>'
" let g:multi_cursor_skip_key='<C-x>'
" let g:multi_cursor_quit_key='<Esc>'

"" fugitive
map <leader>gs :Gstatus<cr>
map <leader>gd :Gdiff<cr>

"" xmledit
" let g:xml_syntax_folding=1
" au FileType xml setlocal foldmethod=syntax
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags noci
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags noci

" vim: set ft=vim:

