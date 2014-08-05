" statusline.vim - configure the statusline
"
" make command line two lines high
set cmdheight=2

" make the status line more informative
set laststatus=2
set statusline=%<buf:[%n]\ %f\ %h%m%r " buffer, filename, flags
set statusline+=\ \ [
set statusline+=%{strlen(&ft)?&ft:'none'} " filetype
set statusline+=]\ "
set statusline+=%{virtualenv#statusline()}
" set statusline+=%{rvm#statusline_ft_ruby()}
set statusline+=%=
set statusline+=\ [%3.(%c%)\ %-7.(%l/%L%)]\ %P

" vim: set ft=vim:

