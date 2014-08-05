" markup.vim - HTML, XML, markdown and everything markup 
"
Bundle 'plasticboy/vim-markdown'

Bundle 'sukima/xmledit'
  " use syntax to fold xml documents
  let g:xml_syntax_folding=1
  autocmd FileType xml  setlocal foldmethod=syntax
  autocmd FileType xml  set omnifunc=xmlcomplete#CompleteTags noci
  autocmd FileType html set omnifunc=htmlcomplete#CompleteTags noci


" vim: set ft=vim:
