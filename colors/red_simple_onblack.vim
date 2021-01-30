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

hi Normal              guifg=#E74C3C guibg=#181818
hi customHighlight     guifg=#FF0000 guibg=bg      gui=NONE    cterm=NONE
hi customDarker        guifg=#B83C30 guibg=bg      gui=NONE    cterm=NONE
hi customTitle         guifg=#BFBFBF guibg=bg      gui=NONE    cterm=NONE
hi customBold          guifg=#FF0000 guibg=bg      gui=bold    cterm=bold
hi customItalic        guifg=#AA6A6A guibg=bg      gui=italic  cterm=italic
hi customInvertedDark  guifg=#000000 guibg=#B83C30
hi customInvertedLight guifg=#CECECE guibg=#B83C30

execute 'source '. expand('<sfile>:h') .'/common_simple_onblack.vim'

" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
