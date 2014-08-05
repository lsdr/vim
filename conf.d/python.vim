" python.vim - python programming tools, libs and such 
"
" python pep8 formatting specifics
autocmd FileType python set softtabstop=4
autocmd FileType python set shiftwidth=4
autocmd FileType python set expandtab

Bundle 'pythoncomplete'
  " uses pythoncomplete to provide better completion
  autocmd FileType python set omnifunc=pythoncomplete#Complete
  " once pydoc window gets boring, uncomment the next line
  " autocmd FileType python set completeopt-=preview

Bundle 'jmcantrell/vim-virtualenv'
  let g:virtualenv_directory='/Users/lsdr/.pvm'
  let g:virtualenv_auto_activate=1
  let g:virtualenv_stl_format='(py:%n)'

" vim: set ft=vim:

