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

hi Normal                  guifg=#BFBFBF  guibg=#181818
hi customBright            guifg=#FFFFFF  guibg=bg       gui=NONE         cterm=NONE
hi customHighlightedText   guifg=#FFD500  guibg=bg                                           |" fg=yellow
hi customUnderstate        guifg=#666666  guibg=bg       gui=NONE         cterm=NONE
hi customItalic            guifg=fg       guibg=bg       gui=italic       cterm=italic
hi customBold              guifg=fg       guibg=bg       gui=bold         cterm=bold

hi customInvertedNormal    guifg=bg       guibg=fg       gui=NONE         cterm=NONE
hi customInvertedUnderstate      guifg=#000000  guibg=#6A6A6A

hi customErrorMsg          guifg=#E5E5E5  guibg=#CE2B37                                      |" fg=white bg=red
hi customWarningMsg        guifg=#000000  guibg=#F3B301                                      |" fg=black bg=orange
hi customWarningText       guifg=#f3b301  guibg=NONE     gui=NONE         cterm=NONE         |" fg=orange
hi customSearch            guifg=#FFFFFF  guibg=#AC6C1C                                      |" fg=white bg=marron
hi customLighterBackground                guibg=#333333  gui=NONE         cterm=NONE
hi customStatusLine                       guibg=#294f6b  gui=NONE         cterm=NONE         |" bg=dark blue
hi customSelectedItem      guifg=#00B2B2  guibg=#232b2b  gui=bold         cterm=bold         |" fg=cyan

hi customString            guifg=#539ED6  guibg=bg       gui=italic       cterm=italic       |" fg=blue
hi customTitle             guifg=#539ED6  guibg=bg       gui=bold         cterm=bold         |" fg=blue
hi customPositive          guifg=#00D27F  guibg=NONE     gui=NONE         cterm=NONE         |" fg=green
hi customNegative          guifg=#CE2B37  guibg=NONE     gui=NONE         cterm=NONE         |" fg=red

execute 'source '. expand('<sfile>:h') .'/common_onblack.vim'

" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
