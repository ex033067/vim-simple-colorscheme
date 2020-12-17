" Vim colorscheme with harmonic basic colors
" Maintainer:	Vinicius Assef <viniciusban@gmail.com>
" Last Change:	2020 Abr 23
"
" Color codes from:
"   - https://www.rapidtables.com/web/color/RGB_Color.html
"   - https://www.color-hex.com/

set background=dark
hi clear

let g:colors_name = 'red_simple_onblack'
hi Normal             guifg=brown3 guibg=gray9


" Custom groups
" =============

hi customDark         guifg=IndianRed4 guibg=bg gui=NONE         cterm=NONE
hi customHighlight    guifg=gray76 guibg=bg gui=NONE         cterm=NONE
hi customBold         guifg=IndianRed3 guibg=bg gui=bold         cterm=bold
hi customItalic       guifg=PaleVioletRed3 guibg=bg gui=italic       cterm=italic
hi customInvertedDark guifg=black guibg=IndianRed4
hi customInvertedLight guifg=LightGray guibg=IndianRed4
hi customStatusLine   guifg=LightGray guibg=IndianRed4 gui=NONE    cterm=NONE


" Common
" ======

execute 'source '. expand('<sfile>:h') .'/common_simple_onblack.vim'


" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
