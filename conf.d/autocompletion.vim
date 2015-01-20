" autocomplete.vim - omni, code and auto complete settings
"
" enable syntax-based completion if lacking a better option
set omnifunc=syntaxcomplete#Complete
" no annoying preview/doc buffers
set completeopt-=preview 

Plugin 'AutoComplPop'
  let g:acp_behaviorKeywordLength=4
  let g:acp_behaviorFileLength=4

" vim: set ft=vim:
