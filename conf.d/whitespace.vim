" whitespace.vim - tools to cleanup whitespace from buffers
"
" reference: http://vimcasts.org/episodes/tidying-whitespace/
function! Preserve(command)
  " save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " do the business:
  execute a:command
  " restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

" run trimming automatically at every same:
" autocmd BufWritePre *.rb,*.py,*.js :call <SID>StripTrailingWhitespaces()
autocmd BufWritePre * :call Preserve("%s/\\s\\+$//e")<CR>

