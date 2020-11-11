" Vim colorscheme with harmonic basic colors
" Maintainer:	Vinicius Assef <viniciusban@gmail.com>
" Last Change:	2020 Abr 23
"
" Color codes from:
"   - https://www.rapidtables.com/web/color/RGB_Color.html
"   - https://www.color-hex.com/

set background=dark
hi clear

let g:colors_name = 'redonblack'
hi Normal             guifg=#e74c3c guibg=#181818           ctermfg=Red ctermbg=Black


" Custom groups
" =============

hi customDark         guifg=#AC3326 guibg=bg gui=NONE       ctermfg=LightRed ctermbg=bg cterm=NONE
hi customHighlight    guifg=#CECECE guibg=bg gui=NONE       ctermfg=White ctermbg=bg cterm=NONE
hi customInvertedDark guifg=#000000 guibg=#AC3326           ctermfg=Black ctermbg=LightRed
hi customInvertedLight guifg=#CECECE guibg=#AC3326          ctermfg=White ctermbg=LightRed
hi customStatusLine   guifg=#CECECE guibg=#AC3326 gui=NONE  ctermfg=White ctermbg=LightRed cterm=NONE


" Common
" ======

execute 'source '. expand('<sfile>:h') .'/common.vim'


" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
