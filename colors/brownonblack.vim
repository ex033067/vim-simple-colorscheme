" Vim colorscheme with harmonic basic colors
" Maintainer:	Vinicius Assef <viniciusban@gmail.com>
" Last Change:	2020 Abr 23
"
" Color codes from:
"   - https://www.rapidtables.com/web/color/RGB_Color.html
"   - https://www.color-hex.com/

set background=dark
hi clear

let g:colors_name = 'brownonblack'
hi Normal             guifg=#e59447 guibg=#181818           ctermfg=Yellow ctermbg=Black


" Custom groups
" =============

hi customDark         guifg=#a0522d guibg=bg gui=NONE       ctermfg=DarkYellow ctermbg=bg cterm=NONE
hi customHighlight    guifg=#CECECE guibg=bg gui=NONE       ctermfg=White ctermbg=bg cterm=NONE
hi customInvertedDark guifg=#000000 guibg=#8b4513           ctermfg=Black ctermbg=DarkYellow
hi customInvertedLight guifg=#CECECE guibg=#8b4513          ctermfg=White ctermbg=DarkYellow
hi customStatusLine   guifg=#CECECE guibg=#8b4513 gui=NONE  ctermfg=White ctermbg=DarkYellow cterm=NONE


" Common
" ======

execute 'source '. expand('<sfile>:h') .'/common.vim'


" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
