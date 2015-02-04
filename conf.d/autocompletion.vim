" autocomplete.vim - omni, code and auto complete settings
"
" enable syntax-based completion if lacking a better option
set omnifunc=syntaxcomplete#Complete
" no annoying preview/doc buffers
set completeopt-=preview 
" skip search includes for completion
set complete-=i

Plugin 'AutoComplPop'
  let g:acp_behaviorKeywordLength=3
  let g:acp_behaviorFileLength=3

" vim: set ft=vim:
