" Vim colorscheme with harmonic basic colors
" Maintainer:	Vinicius Assef <viniciusban@gmail.com>
" Last Change:	2020 Abr 23
"
" Color codes from:
"   - https://www.rapidtables.com/web/color/RGB_Color.html
"   - https://www.color-hex.com/

set background=dark
hi clear

let g:colors_name = 'white_simple_onblack'
hi Normal             guifg=gray76 guibg=gray9


" Custom groups
" =============

hi customDark         guifg=gray50 guibg=bg gui=NONE         cterm=NONE
hi customHighlight    guifg=yellow3 guibg=bg gui=NONE         cterm=NONE
hi customBold         guifg=gray90 guibg=bg gui=bold         cterm=bold
hi customItalic       guifg=gray65 guibg=bg gui=italic       cterm=italic
hi customInvertedDark guifg=black guibg=gray50
hi customInvertedLight guifg=yellow3 guibg=gray40
hi customStatusLine   guifg=white guibg=gray50 gui=NONE    cterm=NONE


" Common
" ======

execute 'source '. expand('<sfile>:h') .'/common_simple_onblack.vim'

" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
