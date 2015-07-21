" ide.vim - precisely not an integrated development environment, but still
"
" <leader>r : run the current buffer in the proper interpreter
autocmd FileType ruby nmap <leader>r :!ruby %<cr>
autocmd FileType python nmap <leader>r :!python %<cr>
autocmd FileType rust nmap <leader>r :RustRun<cr>

" vim: set ft=vim:

