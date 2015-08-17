" whitespace.vim - tools to cleanup whitespace from buffers
"
" references:
" http://vimcasts.org/episodes/tidying-whitespace/
" http://isotope11.com/blog/rebuilding-my-vim-setup-from-scratch
function! StripTrailingWhitespaces()
  " save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " do the business:
  execute "normal mz"
  %s/\s\+$//ge
  execute "normal `z"
  " restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

" run trimming automatically at every same:
" autocmd BufWritePre *.rb,*.py,*.js :call <SID>StripTrailingWhitespaces()
" autocmd BufWritePre * :call Preserve("%s/\\s\\+$//e")<CR>
autocmd BufWrite * call StripTrailingWhitespaces()

