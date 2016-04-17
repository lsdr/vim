" js.vim - javascript plugins and assorted tools
"
Plugin 'pangloss/vim-javascript'

Plugin 'mxw/vim-jsx'
  " allow jsx in normal js files
  let g:jsx_ext_required = 0

Plugin 'jbgutierrez/vim-babel'
Plugin 'mattn/webapi-vim'

Plugin 'elzr/vim-json'

Plugin 'othree/javascript-libraries-syntax.vim'
  let g:used_javascript_libs = 'jquery,underscore,react,flux'

" omnicompletion for JS
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS



" vim: set ft=vim:

