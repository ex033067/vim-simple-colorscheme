" Vim colorscheme with harmonic basic colors
" Maintainer:	Vinicius Assef <viniciusban@gmail.com>
" Last Change:	2020 Abr 23

set background=dark
hi clear

let g:colors_name = 'whiteonblack'
let g:next_colorscheme = 'yellowonblack'


" Color codes from https://www.rapidtables.com/web/color/RGB_Color.html


hi Normal             guifg=#DDDDDD guibg=#000000           ctermfg=LightGray ctermbg=Black


" Custom groups
" =============

hi customDark         guifg=#777777 guibg=bg gui=NONE       ctermfg=Gray ctermbg=bg cterm=NONE
hi customHighlight    guifg=#CCB928 guibg=bg gui=NONE       ctermfg=Yellow ctermbg=bg cterm=NONE
hi customInvertedDark guifg=#000000 guibg=#A9A9A9           ctermfg=Black ctermbg=DarkGray
hi customLine         guibg=#333333 gui=NONE                ctermbg=DarkGray cterm=NONE
hi customDirectory    guifg=#1395BA guibg=bg                ctermfg=Cyan ctermbg=bg

hi customTitle        guifg=#FFFFFF guibg=#1395BA gui=NONE  ctermfg=White ctermbg=Cyan cterm=NONE
hi customHeader       guifg=#E4E318 guibg=bg gui=NONE       ctermfg=Yellow ctermbg=bg cterm=NONE
hi customTodo         guifg=#FFFFFF guibg=#1395BA           ctermfg=White ctermbg=Cyan
hi customStatusLine   guifg=#FFFFFF guibg=#A9A9A9 gui=NONE  ctermfg=White ctermbg=DarkGray cterm=NONE


" Git diff groups
" ===============

hi  diffLine            guifg=#008B8B guibg=bg gui=bold    ctermfg=DarkCyan ctermbg=bg cterm=NONE

hi  DiffChange       guifg=fg     guibg=#222222 gui=NONE   ctermfg=fg ctermbg=DarkGray cterm=NONE
hi  DiffText         guifg=#EF8B2C guibg=#222222 gui=NONE  ctermfg=Brown ctermbg=DarkGray cterm=NONE


" Help groups
" ===========

hi  helpHyperTextEntry  guifg=#808000                ctermfg=DarkYellow
hi  helpHyperTextJump   guifg=#808000 gui=underline  ctermfg=DarkYellow cterm=underline
hi  helpSpecial         guifg=#1395BA                ctermfg=Cyan


" Common
" ======

execute 'source '. expand('<sfile>:h') .'/common.vim'

" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
