" rust.vim - rust tools, plugins and other niceties
"
Plugin 'rust-lang/rust.vim'
  let g:rust_recommended_style = 1

Plugin 'phildawes/racer'
  " rust auto-completer
  let g:racer_cmd = '~/.rsenv/racer/target/release/racer'

" rust mappings
autocmd FileType rust nmap <leader>r :RustRun<cr>

" vim: set ft=vim:

