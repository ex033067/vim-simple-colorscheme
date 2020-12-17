" Vim colorscheme with harmonic basic colors
" Maintainer:	Vinicius Assef <viniciusban@gmail.com>
" Last Change:	2020 Abr 23
"
" Color codes from:
"   - https://www.rapidtables.com/web/color/RGB_Color.html
"   - https://www.color-hex.com/

set background=dark
hi clear

let g:colors_name = 'amber_simple_onblack'
hi Normal             guifg=goldenrod1 guibg=gray9


" Custom groups
" =============

hi customDark         guifg=#B28500 guibg=bg gui=NONE         cterm=NONE
hi customHighlight    guifg=gray76 guibg=bg gui=NONE         cterm=NONE
hi customBold         guifg=yellow3 guibg=bg gui=bold         cterm=bold
hi customItalic       guifg=#FF9F00 guibg=bg gui=italic       cterm=italic
hi customInvertedDark guifg=black guibg=#B28500
hi customInvertedLight guifg=LightGray guibg=#B28500
hi customStatusLine   guifg=LightGray guibg=#B28500 gui=NONE    cterm=NONE

" Common
" ======

execute 'source '. expand('<sfile>:h') .'/common_simple_onblack.vim'


" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
