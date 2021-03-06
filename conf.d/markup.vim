" markup.vim - HTML, XML, markdown and everything markup 
"
Plugin 'plasticboy/vim-markdown'

Plugin 'sukima/xmledit'
  " use syntax to fold xml documents
  let g:xml_syntax_folding=1
  autocmd FileType xml  setlocal foldmethod=syntax
  autocmd FileType xml  set omnifunc=xmlcomplete#CompleteTags noci
  autocmd FileType html set omnifunc=htmlcomplete#CompleteTags noci

Plugin 'othree/html5.vim'

" vim: set ft=vim:
