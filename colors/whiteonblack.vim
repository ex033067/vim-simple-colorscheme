" Vim colorscheme with harmonic basic colors
" Maintainer:	Vinicius Assef <viniciusban@gmail.com>
" Last Change:	2020 Abr 23
"
" Color codes from:
"   - https://www.rapidtables.com/web/color/RGB_Color.html
"   - https://www.color-hex.com/

set background=dark
hi clear

let g:colors_name = 'whiteonblack'
let g:next_colorscheme = 'yellowonblack'
hi Normal             guifg=#FFFFFF guibg=#181818           ctermfg=White ctermbg=Black


" Custom groups
" =============

hi customDark         guifg=#999999 guibg=bg gui=NONE       ctermfg=Gray ctermbg=bg cterm=NONE
hi customHighlight    guifg=#FFFF00 guibg=bg gui=NONE       ctermfg=Yellow ctermbg=bg cterm=NONE
hi customInvertedDark guifg=#000000 guibg=#7A7A7A           ctermfg=Black ctermbg=DarkGray
hi customTitle        guifg=#FFFFFF guibg=#008B8B gui=NONE  ctermfg=White ctermbg=DarkCyan cterm=NONE
hi customHeader       guifg=#FFFF00 guibg=bg gui=NONE       ctermfg=Yellow ctermbg=bg cterm=NONE
hi customTodo         guifg=#FFFFFF guibg=#008B8B           ctermfg=White ctermbg=DarkCyan cterm=NONE
hi customStatusLine   guifg=#FFFF00 guibg=#7A7A7A gui=NONE  ctermfg=Yellow ctermbg=DarkGray cterm=NONE
hi customWarningMsg   guifg=#000000 guibg=#E4E318 gui=NONE  ctermfg=Black ctermbg=Yellow cterm=NONE


" Help groups
" ===========

hi  helpHyperTextEntry  guifg=#808000                ctermfg=DarkYellow
hi  helpHyperTextJump   guifg=#808000 gui=underline  ctermfg=DarkYellow cterm=underline


" Common
" ======

execute 'source '. expand('<sfile>:h') .'/common.vim'

" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
