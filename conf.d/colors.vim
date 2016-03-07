" colorschemes.vim - all avaliable external colorschemes
"
Plugin 'lsdr/monokai'
Plugin 'noahfrederick/vim-hemisu'
Plugin 'lsdr/vim-hemisu-airline'
Plugin 'altercation/vim-colors-solarized'

if has('gui_running')
  set background=light
  colorscheme hemisu
else
  "enable 256 colors on terminal"
  set t_Co=256
  set background=dark
  colorscheme solarized
endif

" vim: set ft=vim:

