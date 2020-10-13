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
" hi Normal             guifg=#e74c3c guibg=#181818           ctermfg=Yellow ctermbg=Black
hi Normal             guifg=#cf4436 guibg=#181818           ctermfg=Yellow ctermbg=Black


" Custom groups
" =============

hi customDark         guifg=#a1352a guibg=bg gui=NONE       ctermfg=DarkYellow ctermbg=bg cterm=NONE
hi customHighlight    guifg=#E5E5E5 guibg=bg gui=NONE       ctermfg=White ctermbg=bg cterm=NONE
hi customInvertedDark guifg=#000000 guibg=#73261e           ctermfg=Black ctermbg=DarkYellow
hi customStatusLine   guifg=#E5E5E5 guibg=#73261e gui=NONE  ctermfg=White ctermbg=DarkYellow cterm=NONE


" Common
" ======

execute 'source '. expand('<sfile>:h') .'/common.vim'


" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
