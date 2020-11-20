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
hi Normal             guifg=#BB3A3A guibg=#181818


" Custom groups
" =============

hi customDark         guifg=#883A3A guibg=bg gui=NONE         cterm=NONE
hi customHighlight    guifg=#CECECE guibg=bg gui=NONE         cterm=NONE
hi customBold         guifg=#DD6A6A guibg=bg gui=bold         cterm=bold
hi customItalic       guifg=#AA6A6A guibg=bg gui=italic       cterm=italic
hi customInvertedDark guifg=#000000 guibg=#883A3A
hi customInvertedLight guifg=#CECECE guibg=#883A3A
hi customStatusLine   guifg=#CECECE guibg=#883A3A gui=NONE    cterm=NONE


" Common
" ======

execute 'source '. expand('<sfile>:h') .'/common_simple_onblack.vim'


" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
