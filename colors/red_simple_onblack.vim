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
hi Normal             guifg=#FF3A3A guibg=#181818


" Custom groups
" =============

hi customDark         guifg=#DD3A3A guibg=bg gui=NONE         cterm=NONE
hi customHighlight    guifg=#CECECE guibg=bg gui=NONE         cterm=NONE
hi customBold         guifg=#FFAAAA guibg=bg gui=bold         cterm=bold
hi customItalic       guifg=#FF8888 guibg=bg gui=italic       cterm=italic
hi customInvertedDark guifg=#000000 guibg=#AC3326
hi customInvertedLight guifg=#CECECE guibg=#AC3326
hi customStatusLine   guifg=#CECECE guibg=#AC3326 gui=NONE    cterm=NONE


" Common
" ======

execute 'source '. expand('<sfile>:h') .'/common_simple_onblack.vim'


" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
