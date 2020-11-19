" Vim colorscheme with harmonic basic colors
" Maintainer:	Vinicius Assef <viniciusban@gmail.com>
" Last Change:	2020 Abr 23
"
" Color codes from:
"   - https://www.rapidtables.com/web/color/RGB_Color.html
"   - https://www.color-hex.com/

set background=dark
hi clear

let g:colors_name = 'simple_onblack_brown'
hi Normal             guifg=#E59447 guibg=#181818           ctermfg=Yellow ctermbg=Black


" Custom groups
" =============

hi customDark         guifg=#A0522D guibg=bg gui=NONE       ctermfg=DarkYellow ctermbg=bg cterm=NONE
hi customHighlight    guifg=#CECECE guibg=bg gui=NONE       ctermfg=White ctermbg=bg cterm=NONE
hi customBold         guifg=#EFBE90 guibg=bg gui=bold       ctermfg=LightYellow ctermbg=bg cterm=bold
hi customInvertedDark guifg=#000000 guibg=#8B4513           ctermfg=Black ctermbg=DarkYellow
hi customInvertedLight guifg=#CECECE guibg=#8B4513          ctermfg=White ctermbg=DarkYellow
hi customStatusLine   guifg=#CECECE guibg=#8B4513 gui=NONE  ctermfg=White ctermbg=DarkYellow cterm=NONE


" Common
" ======

execute 'source '. expand('<sfile>:h') .'/simple_onblack_common.vim'


" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
