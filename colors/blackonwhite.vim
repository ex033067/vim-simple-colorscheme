" Vim colorscheme with harmonic basic colors
" Maintainer:	Vinicius Assef <viniciusban@gmail.com>
" Last Change:	2020 Abr 23
"
" Color codes from:
"   - https://www.rapidtables.com/web/color/RGB_Color.html
"   - https://www.color-hex.com/

set background=light
hi clear

let g:colors_name = 'blackonwhite'
let g:next_colorscheme = 'whiteonblack'
hi Normal             guifg=#555555 guibg=#FFFFFF           ctermfg=Gray ctermbg=White


" Custom groups
" =============

hi customDark         guifg=#777777 guibg=bg gui=NONE       ctermfg=DarkGray ctermbg=bg cterm=NONE
hi customHighlight    guifg=#000000 guibg=bg gui=NONE       ctermfg=Black ctermbg=bg cterm=NONE
hi customSearch       guifg=#FFFFFF guibg=fg gui=NONE       ctermfg=White ctermbg=fg cterm=NONE
hi customInvertedDark guifg=fg guibg=#ADD8E6                ctermfg=fg ctermbg=LightBlue
hi customLine         guibg=#FFFFE0 gui=NONE                ctermbg=LightYellow cterm=NONE
hi customDirectory    guifg=#008B8B guibg=bg                ctermfg=DarkCyan ctermbg=bg

hi customTitle        guifg=#FFFFFF guibg=#008B8B gui=NONE  ctermfg=White ctermbg=DarkCyan cterm=NONE
hi customHeader       guifg=#808000 guibg=bg gui=NONE       ctermfg=Yellow ctermbg=bg cterm=NONE
hi customTodo         guifg=#FFFFFF guibg=#1395BA           ctermfg=White ctermbg=Cyan


" Git diff groups
" ===============

hi  diffLine            guifg=#008B8B guibg=#E0FFFF gui=NONE    ctermfg=DarkCyan ctermbg=LightCyan cterm=NONE

hi  DiffChange       guifg=fg guibg=#EEEEEE gui=NONE            ctermfg=fg ctermbg=LightGray cterm=NONE
hi  DiffText         guifg=#FFA500 guibg=#EEEEEE gui=bold       ctermfg=Brown ctermbg=LightGray cterm=bold


" Help groups
" ===========

hi  helpSpecial         guifg=#1395BA                ctermfg=DarkCyan


" Common
" ======

execute 'source '. expand('<sfile>:h') .'/common.vim'

" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
