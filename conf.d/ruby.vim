" ruby.vim - ruby (and rails) programming plugins
"
Bundle 'vim-ruby/vim-ruby'
  " ruby specifics
  " let g:rubycomplete_rails=0
  " let g:rubycomplete_classes_in_global=1
  " let g:rubycomplete_buffer_loading=1
  " let g:rubycomplete_include_object=1
  " let g:rubycomplete_include_objectspace=1

Bundle 'tpope/vim-rails'
  autocmd User Rails if &filetype != 'ruby' | setlocal sw=4 sts=4 noexpandtab | endif
  autocmd User Rails if &filetype == 'yaml' | setlocal sw=2 sts=2 expandtab | endif

" vim: set ft=vim:

