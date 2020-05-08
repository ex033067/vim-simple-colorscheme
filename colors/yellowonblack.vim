" Vim colorscheme with harmonic basic colors
" Maintainer:	Vinicius Assef <viniciusban@gmail.com>
" Last Change:	2020 Abr 23

set background=dark
hi clear

let g:colors_name = 'yellowonblack'
let g:next_colorscheme = 'whiteonblack'


" Color codes from https://www.rapidtables.com/web/color/RGB_Color.html


hi Normal             guifg=#CCB928 guibg=#24292E           ctermfg=Yellow ctermbg=Black


" Custom groups
" =============

hi customDark         guifg=#808000 guibg=bg gui=NONE       ctermfg=DarkYellow ctermbg=bg cterm=NONE
hi customHighlight    guifg=#FFFF00 guibg=bg gui=NONE       ctermfg=LightYellow ctermbg=bg cterm=NONE
hi customSearch       guifg=#000000 guibg=#FFFF00 gui=NONE  ctermfg=Black ctermbg=LightYellow cterm=NONE
hi customInvertedDark guifg=#000000 guibg=#808000           ctermfg=Black ctermbg=DarkYellow
hi customLine         guibg=#333333 gui=NONE                ctermbg=DarkGray cterm=NONE
hi customDirectory    guifg=#1395BA guibg=bg                ctermfg=Cyan ctermbg=bg

hi customTitle        guifg=#FFFF00 guibg=#1395BA gui=NONE  ctermfg=White ctermbg=Cyan cterm=NONE
hi customHeader       guifg=#F6F7F9 guibg=bg gui=NONE       ctermfg=White ctermbg=bg cterm=NONE
hi customTodo         guifg=#FFFF00 guibg=#1395BA           ctermfg=LightYellow ctermbg=Cyan

" Git diff groups
" ===============

hi  diffLine            guifg=#008B8B guibg=bg gui=bold    ctermfg=DarkCyan ctermbg=bg cterm=NONE

hi  DiffChange       guifg=fg     guibg=#222222 gui=NONE   ctermfg=fg ctermbg=DarkGray cterm=NONE
hi  DiffText         guifg=#EF8B2C guibg=#222222 gui=NONE  ctermfg=Brown ctermbg=DarkGray cterm=NONE


" Help groups
" ===========

hi  helpHyperTextEntry  guifg=#A9A9A9                  ctermfg=DarkGray
hi  helpHyperTextJump   guifg=#A9A9A9 gui=underline    ctermfg=DarkGray cterm=underline
hi  helpSpecial         guifg=#1395BA                  ctermfg=Cyan

" Common
" ======

execute 'source '. expand('<sfile>:h') .'/common.vim'


" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
