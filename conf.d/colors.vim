" colorschemes.vim - all avaliable external colorschemes
"
Plugin 'lsdr/monokai'
Plugin 'morhetz/gruvbox'
Plugin 'noahfrederick/vim-hemisu'
Plugin 'lsdr/vim-hemisu-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline-themes'

if has('gui_running')
  set background=dark
  " colorscheme hemisu
  colorscheme gruvbox
else
  "enable 256 colors on terminal"
  set t_Co=256
  set background=dark
  colorscheme gruvbox
endif

" vim: set ft=vim:

