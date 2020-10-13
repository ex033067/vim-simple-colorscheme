" Vim colorscheme with harmonic basic colors
" Maintainer:	Vinicius Assef <viniciusban@gmail.com>
" Last Change:	2020 Abr 23
"
" Color codes from:
"   - https://www.rapidtables.com/web/color/RGB_Color.html
"   - https://www.color-hex.com/

set background=dark
hi clear

let g:colors_name = 'amberonblack'
let g:next_colorscheme = 'whiteonblack'
hi Normal             guifg=#e74c3c guibg=#181818           ctermfg=Red ctermbg=Black


" Custom groups
" =============

hi customDark         guifg=#c0392b guibg=bg gui=NONE       ctermfg=DarkRed ctermbg=bg cterm=NONE
hi customHighlight    guifg=#E5E5E5 guibg=bg gui=NONE       ctermfg=White ctermbg=bg cterm=NONE
hi customInvertedDark guifg=#000000 guibg=#e74c3c           ctermfg=Black ctermbg=Red
hi customStatusLine   guifg=#E5E5E5 guibg=#e74c3c gui=NONE  ctermfg=White ctermbg=Red cterm=NONE


" Common
" ======

execute 'source '. expand('<sfile>:h') .'/common.vim'


" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
