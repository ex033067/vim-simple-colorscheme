" Vim colorscheme with harmonic basic colors
" Maintainer:	Vinicius Assef <viniciusban@gmail.com>
" Last Change:	2020 Abr 23
"
" Color codes from:
"   - https://www.rapidtables.com/web/color/RGB_Color.html
"   - https://www.color-hex.com/

set background=dark
hi clear

let g:colors_name = 'greenonblack'
let g:next_colorscheme = 'whiteonblack'
hi Normal             guifg=#1abc9c guibg=#181818           ctermfg=Green ctermbg=Black


" Custom groups
" =============

hi customDark         guifg=#12836D guibg=bg gui=NONE       ctermfg=DarkGreen ctermbg=bg cterm=NONE
hi customHighlight    guifg=#E5E5E5 guibg=bg gui=NONE       ctermfg=White ctermbg=bg cterm=NONE
hi customInvertedDark guifg=#000000 guibg=#12836D           ctermfg=Black ctermbg=LightGreen
hi customInvertedLight guifg=#E5E5E5 guibg=#12836D          ctermfg=White ctermbg=LightGreen
hi customStatusLine   guifg=#E5E5E5 guibg=#12836D gui=NONE  ctermfg=White ctermbg=LightGreen cterm=NONE


" Common
" ======

execute 'source '. expand('<sfile>:h') .'/common.vim'


" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
