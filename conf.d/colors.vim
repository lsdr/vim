" colorschemes.vim - all avaliable external colorschemes
"
Plugin 'lsdr/monokai'
Plugin 'romainl/Apprentice'
Plugin 'noahfrederick/vim-hemisu'

if has('gui_running')
  set background=light
  colorscheme hemisu
else
  set t_Co=256 "enable 256 colors on terminal"
  set background=dark
  colorscheme apprentice
endif

" vim: set ft=vim:

