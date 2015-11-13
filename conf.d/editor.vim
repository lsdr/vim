" editor.vim - basic stuff that improve editing all-around
"
Plugin 'ctrlpvim/ctrlp.vim'
  let g:ctrlp_match_window='bottom,order:btt,min:1,max:7,results:10'
  let g:ctrlp_working_path_mode='ra'
  let g:ctrlp_jump_to_buffer=2
  let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|gitkeep|azk)$',
    \ 'file': '\v\~$|\.(o|swp|pyc|png|gif|jpg|jpeg|svg|eot|ttf|woff)$|(^|[/\\])\.(hg|git|azk|bundle)($|[/\\])'
    \ }

  let g:ctrlp_map='<leader>t'
  nnoremap <leader>b :CtrlPBuffer<cr>
  nnoremap <leader>. :CtrlPTag<cr>

  " use ag in ctrlp: very fast, respects .gitignore and doesn't need cache
  if executable('ag')
    let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
    let g:ctrlp_use_caching=0
  endif

" Plugin 'tpope/vim-dispatch'

Plugin 'wincent/ferret'
  let g:FerretHlsearch=1

Plugin 'tpope/vim-surround'
Plugin 'Townk/vim-autoclose'

Plugin 'scrooloose/nerdcommenter'
  let NERDSpaceDelims=1
  let NERDMenuMode=0
  " always comment the whole line, no matter where the cursor is
  let NERDCommentWholeLinesInVMode=1

Plugin 'terryma/vim-multiple-cursors'
  " Default mapping
  " let g:multi_cursor_next_key='<C-n>'
  " let g:multi_cursor_prev_key='<C-p>'
  " let g:multi_cursor_skip_key='<C-x>'
  " let g:multi_cursor_quit_key='<Esc>'

Plugin 'editorconfig/editorconfig-vim'

" vim: set ft=vim:

