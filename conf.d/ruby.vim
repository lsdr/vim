" ruby.vim - ruby (and rails) setting and plugins
"

Plugin 'vim-ruby/vim-ruby'
  " ruby completion
  autocmd FileType ruby set omnifunc=rubycomplete#Complete
  let g:rubycomplete_rails=1
  let g:rubycomplete_classes_in_global=1
  let g:rubycomplete_buffer_loading=1
  let g:rubycomplete_include_object=1
  let g:rubycomplete_include_objectspace=1

Plugin 'tpope/vim-rails'
  autocmd User Rails if &filetype != 'ruby' | setlocal sw=2 sts=2 noexpandtab | endif
  autocmd User Rails if &filetype == 'yaml' | setlocal sw=2 sts=2 expandtab | endif

" Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-haml'
Plugin 'slim-template/vim-slim'
Plugin 'kchmck/vim-coffee-script'

Plugin 'tpope/vim-endwise'

" vim: set ft=vim:
