" Vim color scheme
"
" Name:         dark_matter.vim
" Maintainer:   Luiz Rocha <lsdrocha@gmail.com>
" Last Change:  19 Fev 2009 
" License:      public domain
" Version:      0.1
"
" Based on the Railscasts color scheme for vim.
" I decided to change a few things, improve it for python coding and stuff.

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "dark_matter"

if has("gui_running")
  hi link htmlTag                     xmlTag
  hi link htmlTagName                 xmlTagName
  hi link htmlEndTag                  xmlEndTag

  highlight Normal                    guifg=#E6E1DC   guibg=#2a2a2a
  highlight Cursor                    guifg=#000000   guibg=#65a3e9
  highlight CursorLine                guibg=#000000
 
  highlight Comment                   guifg=#BC9458   gui=italic
  highlight Constant                  guifg=#6D9CBE
  highlight Define                    guifg=#CC7833
  highlight Error                     guifg=#FFFFFF   guibg=#990000
  highlight Function                  guifg=#FFC66D   gui=NONE
  highlight Identifier                guifg=#6D9CBE   gui=NONE
  highlight Include                   guifg=#CC7833   gui=NONE
  highlight Keyword                   guifg=#CC7833
  highlight LineNr                    guifg=#2B2B2B   guibg=#C0C0FF
  highlight Number                    guifg=#A5C261
  highlight PreProc                   guifg=#E6E1DC
  highlight Search                    guibg=#FFFF00
  highlight Statement                 guifg=#CC7833   gui=NONE
  highlight String                    guifg=#A5C261
  highlight Title                     guifg=#FFFFFF
  highlight Type                      guifg=#DA4939   gui=NONE
  highlight Visual                    guibg=#5A647E

  highlight DiffAdd                   guifg=#E6E1DC   guibg=#144212
  highlight DiffDelete                guifg=#E6E1DC   guibg=#660000
  
  highlight rubyBlockParameter        guifg=#FFFFFF
  highlight rubyClass                 guifg=#FFFFFF
  highlight rubyConstant              guifg=#DA4939
  highlight rubyInstanceVariable      guifg=#D0D0FF
  highlight rubyInterpolation         guifg=#519F50
  highlight rubyLocalVariableOrMethod guifg=#D0D0FF
  highlight rubyPredefinedConstant    guifg=#DA4939
  highlight rubyPseudoVariable        guifg=#FFC66D
  highlight rubyStringDelimiter       guifg=#A5C261
  
  highlight xmlTag                    guifg=#E8BF6A
  highlight xmlTagName                guifg=#E8BF6A
  highlight xmlEndTag                 guifg=#E8BF6A
endif
