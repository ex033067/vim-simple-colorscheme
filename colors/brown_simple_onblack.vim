" Vim colorscheme with harmonic basic colors
" Maintainer:	Vinicius Assef <viniciusban@gmail.com>
" Last Change:	2020 Abr 23
"
" Color codes from:
"   - https://www.rapidtables.com/web/color/RGB_Color.html
"   - https://www.color-hex.com/

set background=dark
hi clear

let g:colors_name = 'brown_simple_onblack'

hi Normal              guifg=#D59447 guibg=#181818
hi customDarker        guifg=#A0522D guibg=bg      gui=NONE    cterm=NONE
hi customTitle         guifg=#BFBFBF guibg=bg      gui=NONE    cterm=NONE
hi customBold          guifg=#E59447 guibg=bg      gui=bold    cterm=bold
hi customItalic        guifg=#B59447 guibg=bg      gui=italic  cterm=italic
hi customInvertedDark  guifg=#000000 guibg=#8B4513
hi customInvertedLight guifg=#CECECE guibg=#8B4513

execute 'source '. expand('<sfile>:h') .'/common_simple_onblack.vim'

" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
