" ruby.vim - ruby (and rails) setting and plugins
"
Plugin 'vim-ruby/vim-ruby'
  let g:rubycomplete_rails=1
  let g:rubycomplete_classes_in_global=1
  let g:rubycomplete_buffer_loading=1
  let g:rubycomplete_include_object=1
  let g:rubycomplete_include_objectspace=1

Plugin 'tpope/vim-rails'

Plugin 'tpope/vim-haml'
  autocmd BufNewFile,BufRead *.haml set ft=haml

Plugin 'slim-template/vim-slim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-endwise'
Plugin 'sunaku/vim-ruby-minitest'

Plugin 'thoughtbot/vim-rspec'
  let g:rspec_runner='os_x_iterm'

if executable('rubocop')
  Plugin 'ngmy/vim-rubocop'

  " maps rubocop to <Leader>ru (default)
  let g:vimrubocop_keymap=1
  " use global .rubocop.yml for now (trying and find project root config later)
  let g:vimrubocop_config='.rubocop.yml'
endif

" ruby completion
autocmd FileType ruby set omnifunc=rubycomplete#Complete

" ruby mappings
autocmd FileType ruby nmap <leader>r :!ruby %<cr>
autocmd FileType ruby nmap <Leader>rt :call RunCurrentSpecFile()<CR>
autocmd FileType ruby nmap <Leader>rta :call RunAllSpecs()<CR>

" vim: set ft=vim:

