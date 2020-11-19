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
hi Normal             guifg=#E0E0E0 guibg=#181818


" Custom groups
" =============

hi customDark         guifg=#999999 guibg=bg gui=NONE         cterm=NONE
hi customHighlight    guifg=#E5E500 guibg=bg gui=NONE         cterm=NONE
hi customBold         guifg=#FFFFFF guibg=bg gui=bold         cterm=bold
hi customItalic       guifg=#B3B3B3 guibg=bg gui=italic       cterm=italic
hi customInvertedDark guifg=#000000 guibg=#999999
hi customInvertedLight guifg=#E5E500 guibg=#666666
hi customStatusLine   guifg=#FFFFFF guibg=#999999 gui=NONE    cterm=NONE


" Common
" ======

execute 'source '. expand('<sfile>:h') .'/common_simple_onblack.vim'

" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
