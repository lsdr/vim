" Vim color scheme
"
" Name:         wan.vim
" Maintainer:   Luiz Rocha <lsdrocha at gmail.com>
" Last Change:  21 Dec 2010
" License:      public domain
" Version:      0.1
"
" A untasteful mix between twilight (from TextMate) and railscasts color
" schemes and mangled to look minimally acceptable with Python and Ruby.

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="wan"
