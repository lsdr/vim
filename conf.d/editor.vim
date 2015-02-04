" editor.vim - basic stuff that improve editing all-around
"
Plugin 'ctrlpvim/ctrlp.vim'
  let g:ctrlp_map='<leader>t'
  let g:ctrlp_working_path_mode='ra'
  let g:ctrlp_custom_ignore='\v[\/]\.(git|hg|svn|azk)$'
  nnoremap <leader>b :CtrlPBuffer<cr>

Plugin 'dkprice/vim-easygrep'
  " use system grep instead of vimgrep
  let g:EasyGrepCommand=1
  let g:EasyGrepFilesToExclude='.svn,.git,.hg,.azk'

if executable('ag')
  Plugin 'rking/ag.vim'

  " specify the_silver_searcher bin path
  let g:agprg='ag --nocolor --nogroup --column --stats --hidden -i'

  " switch system grep cmd to ag 
  set grepprg=ag\ --nogroup\ --nocolor\ --column

  " use ag in ctrlp: very fast, respects .gitignore and doesn't need cache
  let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching=0
endif

Plugin 'tpope/vim-surround'
Plugin 'Townk/vim-autoclose'

Plugin 'scrooloose/nerdcommenter'
  let NERDSpaceDelims=1
  let NERDMenuMode=0

Plugin 'terryma/vim-multiple-cursors'
  " Default mapping
  " let g:multi_cursor_next_key='<C-n>'
  " let g:multi_cursor_prev_key='<C-p>'
  " let g:multi_cursor_skip_key='<C-x>'
  " let g:multi_cursor_quit_key='<Esc>'

" vim: set ft=vim:

