" Vim color scheme
"
" Name:         wan.vim
" Maintainer:   Luiz Rocha <lsdrocha _at_ gmail dot com>
" Last Change:  11 Jan 2011
" License:      public domain
" Version:      0.1.0
"
" A untasteful mix between twilight (from TextMate) and railscasts color
" schemes and mangled to look minimally acceptable with Python and Ruby.

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="wan"

if has("gui_running")
  "" Interface elements
  hi Normal         guifg=#FFFFFF     guibg=#1A1A1A
  hi Cursor         guifg=#FFFFFF     guibg=#7585C3
  hi CursorLine                       guibg=#282828
  hi CursorColumn                     guibg=#282828
  hi Visual                           guibg=#2B324C
  hi LineNr         guifg=#7587A6     guibg=#141414
  hi StatusLine     guifg=#0E2231     guibg=#8693A5
  hi StatusLineNC   guifg=#030303     guibg=#5A5A5A
  hi NonText        guifg=#7587A6     guibg=#141414
  hi VertSplit      guifg=#AC885B     guibg=#FFFFFF

  "" Syntax highlight
  hi Comment        guifg=#5F5A60
  hi Constant       guifg=#CF6A4C
  hi String         guifg=#8F9D63
  hi Function       guifg=#9B703F
  hi Type           guifg=#9B703F
  hi Include        guifg=#CDA869
  hi Define         guifg=#CDA869
  hi Keyword        guifg=#CDA869
  hi Statement      guifg=#CDA869
  hi Identifier     guifg=#CDA869
  hi Conditional    guifg=#CDA869

  """ Ruby Extra highlight
  hi rubyStringDelimiter        guifg=#8F9D63
  hi rubyInterpolation          guifg=#CF7D32
  hi rubyClass                  guifg=#CDA869
  hi rubyBlockParameter         guifg=#7587A6
  hi rubyInstanceVariable       guifg=#7587A6
  hi rubyConstant               guifg=#7587A6
  hi rubyPredefinedConstant     guifg=#9B817F
endif
