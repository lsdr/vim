" colorschemes.vim - all avaliable external colorschemes
"
Plugin 'lsdr/monokai'
Plugin 'romainl/Apprentice'
Plugin 'noahfrederick/vim-hemisu'
Plugin 'chriskempson/base16-vim'

if has('gui_running')
  set background=dark
  colorscheme base16-eighties
else
  "enable 256 colors on terminal"
  set t_Co=256
  set background=dark
  colorscheme apprentice
endif

" vim: set ft=vim:

