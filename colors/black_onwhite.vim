" Vim colorscheme with harmonic basic colors
" Maintainer:	Vinicius Assef <viniciusban@gmail.com>
" Last Change:	2020 Abr 23
"
" Color codes from:
"   - https://www.rapidtables.com/web/color/RGB_Color.html
"   - https://www.color-hex.com/

set background=light
hi clear

let g:colors_name = 'black_onwhite'

hi Normal              guifg=#000000 guibg=#FFFFFF
hi customHighlight     guifg=#000000 guibg=bg      gui=bold    cterm=bold
hi customDarker        guifg=#9C9C9C guibg=bg      gui=NONE    cterm=NONE
hi customTitle         guifg=#0010d0 guibg=bg      gui=bold    cterm=bold
hi customBold          guifg=#000000 guibg=bg      gui=bold    cterm=bold
hi customItalic        guifg=#181818 guibg=bg      gui=italic  cterm=italic
hi customInvertedHighlight guifg=bg  guibg=#000000
hi customInvertedDark  guifg=#000000 guibg=#6A6A6A
hi customInvertedLight guifg=#FFFFFF guibg=#6A6A6A gui=NONE cterm=NONE

execute 'source '. expand('<sfile>:h') .'/common_onblack.vim'

" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
