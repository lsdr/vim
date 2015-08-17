" rust.vim - rust tools, plugins and other niceties 
"
" syntastic checker for rust
let g:syntastic_rust_checkers = ['rustc']

Plugin 'rust-lang/rust.vim'
  let g:rust_recommended_style = 1

" rust mappings
autocmd FileType rust nmap <leader>r :RustRun<cr>

" vim: set ft=vim:

