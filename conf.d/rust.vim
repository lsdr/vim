" rust.vim - rust tools, plugins and other niceties
"
Plugin 'rust-lang/rust.vim'
  let g:rust_recommended_style=1

  " enable rust formatter if present
  if executable('rustfmt')
    let g:rustfmt_autosave=1
  endif

" Plugin 'phildawes/racer'
Plugin 'racer-rust/vim-racer'
  " rust auto-completer
  let g:racer_cmd='~/.cargo/bin/racer'

" rust mappings
autocmd FileType rust nmap <leader>r :RustRun<cr>

" rust completion
" autocmd FileType rust set omnifunc=RacerComplete

" vim: set ft=vim:

