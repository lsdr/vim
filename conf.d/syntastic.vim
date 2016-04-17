" syntastic.vim - syntastic configuration and checker setup
"
Plugin 'scrooloose/syntastic'
  " checkers for specific langs are defined in their own conf.d files
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  " only runs if :SyntasticCheck is called
  let g:syntastic_mode_map = {
    \ 'mode': 'passive',
    \ 'active_filetypes': [],
    \ 'passive_filetypes': []
    \ }

  " jumps automagically to the first issue, only if it is an error
  let g:syntastic_auto_jump=2
  let g:syntastic_always_populate_loc_list=0
  let g:syntastic_auto_loc_list=0

" syntastic checkers:
"" ruby
let g:syntastic_ruby_checkers = ['rubocop']

"" rust
" included in rust.vim - no need to declare
" let g:syntastic_rust_checkers = ['rustc']

"" erlang
let g:syntastic_erlang_checkers = ['syntaxerl', 'escript']
let g:syntastic_erlc_include_path = 'ebin'

"" elixir
let g:syntastic_elixir_checkers = ['elixir']
" elixir checker runs the actual code thus can be very unsafe
" do not allow it to run automatically
let g:syntastic_enable_elixir_checker = 0

"" javascript
let g:syntastic_javascript_checkers = ['eslint']

