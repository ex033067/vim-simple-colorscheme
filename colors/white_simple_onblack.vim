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

hi Normal              guifg=#BFBFBF guibg=#181818
hi customDarker        guifg=#838383 guibg=bg      gui=NONE    cterm=NONE
hi customTitle         guifg=#D0C000 guibg=bg      gui=NONE    cterm=NONE
hi customBold          guifg=#FFFFFF guibg=bg      gui=bold    cterm=bold
hi customItalic        guifg=#A0A066 guibg=bg      gui=italic  cterm=italic
hi customInvertedDark  guifg=#000000 guibg=#838383
hi customInvertedLight guifg=#D0D000 guibg=#666666

execute 'source '. expand('<sfile>:h') .'/common_simple_onblack.vim'

" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
