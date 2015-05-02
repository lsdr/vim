" colorschemes.vim - all avaliable external colorschemes
"
Plugin 'lsdr/monokai'
Plugin 'DAddYE/soda.vim'
Plugin 'romainl/Apprentice'
Plugin 'noahfrederick/vim-hemisu'
Plugin 'lsdr/vim-hemisu-airline'
Plugin 'chriskempson/base16-vim'

if has('gui_running')
  set background=light
  colorscheme hemisu
  let g:airline_theme = 'hemisu_airline'
else
  "enable 256 colors on terminal"
  set t_Co=256
  set background=dark
  colorscheme apprentice
endif

" vim: set ft=vim:

