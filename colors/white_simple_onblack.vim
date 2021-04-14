" Vim colorscheme with harmonic basic colors
" Maintainer:	Vinicius Assef <viniciusban@gmail.com>
" Last Change:	2020 Abr 23
"
" Color codes from:
"   - https://www.rapidtables.com/web/color/RGB_Color.html
"   - https://www.color-hex.com/

set background=dark
hi clear

let g:colors_name = 'white_onblack'

hi Normal              guifg=#BFBFBF guibg=#181818
hi customHighlight     guifg=#FFFFFF guibg=bg      gui=NONE    cterm=NONE
hi customDarker        guifg=#939393 guibg=bg      gui=NONE    cterm=NONE
hi customTitle         guifg=#D0C000 guibg=bg      gui=NONE    cterm=NONE
hi customBold          guifg=#FFFFFF guibg=bg      gui=bold    cterm=bold
hi customItalic        guifg=#A0A066 guibg=bg      gui=italic  cterm=italic
hi customInvertedHighlight guifg=bg  guibg=#FFFFFF
hi customInvertedDark  guifg=#000000 guibg=#6A6A6A
hi customInvertedLight guifg=#FFFFFF guibg=#6A6A6A gui=NONE cterm=NONE

execute 'source '. expand('<sfile>:h') .'/common_onblack.vim'

" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
