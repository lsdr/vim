" elixir.vim - elixir setting and plugins
"
" syntastic checker for elixir
let g:syntastic_elixir_checkers = ['elixir']
" elixir checker runs the actual code thus can be very unsafe
" do not allow it to run automatically
let g:syntastic_enable_elixir_checker = 0

Plugin 'mattreduce/vim-mix'
Plugin 'elixir-lang/vim-elixir'

