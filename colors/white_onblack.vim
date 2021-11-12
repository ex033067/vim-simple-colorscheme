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
hi customBright        guifg=#FFFFFF guibg=bg      gui=NONE    cterm=NONE
hi customDark          guifg=#939393 guibg=bg      gui=NONE    cterm=NONE
hi customDarker        guifg=#666666 guibg=bg      gui=NONE    cterm=NONE
hi customItalic        guifg=fg      guibg=bg      gui=italic  cterm=italic
hi customBold          guifg=fg guibg=bg      gui=bold    cterm=bold

hi customInvertedNormal guifg=bg      guibg=fg     gui=NONE cterm=NONE
hi customInvertedBright guifg=bg      guibg=#FFFFFF
hi customInvertedDark   guifg=#000000 guibg=#6A6A6A

hi customErrorMsg     guifg=#E5E5E5 guibg=#C02F1D
hi customWarningMsg   guifg=#000000 guibg=#D88724
hi customSearch       guifg=#FFFFFF guibg=#AC6C1C
hi customLightBackground            guibg=#333333 gui=NONE    cterm=NONE
hi customHighlightedLine               guibg=#006F62 gui=NONE    cterm=NONE
hi customHighlightedText guifg=#FFD500 guibg=bg
hi customStatusLine                 guibg=#294f6b gui=NONE    cterm=NONE

hi customString       guifg=#539ed6 guibg=bg      gui=italic  cterm=italic
hi customTitle        guifg=#539ED6 guibg=bg      gui=NONE    cterm=NONE
hi customDiffText     guifg=#E5E5E5 guibg=#3399FF gui=NONE    cterm=NONE
hi customPositive     guifg=#00FF00 guibg=NONE    gui=NONE    cterm=NONE
hi customNegative     guifg=#FF0000 guibg=NONE    gui=NONE    cterm=NONE
hi customAttention    guifg=#D88724 guibg=NONE    gui=NONE    cterm=NONE

execute 'source '. expand('<sfile>:h') .'/common_onblack.vim'

" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
