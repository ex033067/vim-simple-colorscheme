" Vim colorscheme with harmonic basic colors
" Maintainer:	Vinicius Assef <viniciusban@gmail.com>
" Last Change:	2020 Abr 23
"
" Color codes from:
"   - https://www.rapidtables.com/web/color/RGB_Color.html
"   - https://www.color-hex.com/

set background=dark
hi clear

let g:colors_name = 'whiteonblack'
let g:next_colorscheme = 'yellowonblack'
hi Normal             guifg=#ECF0F1 guibg=#181818           ctermfg=White ctermbg=Black


" Custom groups
" =============

hi customDark         guifg=#999999 guibg=bg gui=NONE       ctermfg=Gray ctermbg=bg cterm=NONE
hi customHighlight    guifg=#FFFF00 guibg=bg gui=NONE       ctermfg=Yellow ctermbg=bg cterm=NONE
hi customInvertedDark guifg=#000000 guibg=#999999           ctermfg=Black ctermbg=Gray
hi customLine         guibg=#222222 gui=NONE                ctermbg=DarkGray cterm=NONE
hi customTitle        guifg=#FFFFFF guibg=#1395BA gui=NONE  ctermfg=White ctermbg=Cyan cterm=NONE
hi customHeader       guifg=#FFFF00 guibg=bg gui=NONE       ctermfg=Yellow ctermbg=bg cterm=NONE
hi customTodo         guifg=#FFFFFF guibg=#1395BA           ctermfg=White ctermbg=Cyan
hi customStatusLine   guifg=#FFFF00 guibg=#999999 gui=NONE  ctermfg=Yellow ctermbg=Gray cterm=NONE
hi customWarningMsg   guifg=#000000 guibg=#E4E318 gui=NONE  ctermfg=Black ctermbg=Yellow cterm=NONE


" Git diff groups
" ===============

hi  diffLine            guifg=#008B8B guibg=bg gui=bold    ctermfg=DarkCyan ctermbg=bg cterm=NONE

hi  DiffChange       guifg=fg     guibg=#333333 gui=NONE   ctermfg=fg ctermbg=DarkGray cterm=NONE
hi  DiffText         guifg=#FFFF00 guibg=#333333 gui=NONE  ctermfg=Yellow ctermbg=DarkGray cterm=NONE


" Help groups
" ===========

hi  helpHyperTextEntry  guifg=#808000                ctermfg=DarkYellow
hi  helpHyperTextJump   guifg=#808000 gui=underline  ctermfg=DarkYellow cterm=underline
hi  helpSpecial         guifg=#1395BA                ctermfg=Cyan


" Common
" ======

execute 'source '. expand('<sfile>:h') .'/common.vim'

" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
