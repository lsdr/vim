" proglang.vim
" programming language settings, tools and helper plugins
"
"
"" Python
"
" pep8 formatting specifics
autocmd FileType python set softtabstop=4
autocmd FileType python set shiftwidth=4
autocmd FileType python set expandtab

" uses pythoncomplete to provide better completion
autocmd FileType python set omnifunc=pythoncomplete#Complete
" once pydoc window gets boring, uncomment the next line
" autocmd FileType python set completeopt-=preview

Bundle 'jmcantrell/vim-virtualenv'
  let g:virtualenv_directory='/Users/lsdr/.pvm'
  let g:virtualenv_auto_activate=1
  let g:virtualenv_stl_format='(py:%n)'

"
"" Octave/Matlab
"
" syntax highlighting for octave 
Bundle 'lsdr/octave.vim'
  " make .oct and .m files be recognized as gnu octave files
  augroup filetypedetect 
    au! BufRead,BufNewFile *.m,*.oct set filetype=octave 
  augroup END
  " use current octave file syntax as autocomplete
  autocmd Filetype octave setlocal omnifunc=syntaxcomplete#Complete

"
"" Ruby
"
Bundle 'vim-ruby/vim-ruby'
  " ruby specifics
  " let g:rubycomplete_rails=0
  " let g:rubycomplete_classes_in_global=1
  " let g:rubycomplete_buffer_loading=1
  " let g:rubycomplete_include_object=1
  " let g:rubycomplete_include_objectspace=1

"
"" Rails
"
Bundle 'tpope/vim-rails'
  autocmd User Rails if &filetype != 'ruby' | setlocal sw=4 sts=4 noexpandtab | endif
  autocmd User Rails if &filetype == 'yaml' | setlocal sw=2 sts=2 expandtab | endif



" vim: set ft=vim:

