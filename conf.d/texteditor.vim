" texteditor.vim - stuff that improve text editing
"

Bundle 'EasyGrep'

Bundle 'rking/ag.vim'
  let g:agprg="ag --nocolor --nogroup --column --stats --hidden -i"

Bundle 'scrooloose/nerdcommenter'
  let NERDSpaceDelims=1
  let NERDMenuMode=0

Bundle 'terryma/vim-multiple-cursors'
  " Default mapping
  " let g:multi_cursor_next_key='<C-n>'
  " let g:multi_cursor_prev_key='<C-p>'
  " let g:multi_cursor_skip_key='<C-x>'
  " let g:multi_cursor_quit_key='<Esc>'

" vim: set ft=vim:

