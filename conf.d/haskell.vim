" haskell.vim - haskell tools and stuffs
"
Plugin 'neovimhaskell/haskell-vim'
  let g:haskell_enable_recursivedo=1
  let g:haskell_enable_typeroles=1

Plugin 'eagletmt/ghcmod-vim'

Plugin 'eagletmt/neco-ghc'
  let g:haskellmode_completion_ghc=0
  autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" vim: set ft=vim:

