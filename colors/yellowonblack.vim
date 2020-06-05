" Vim colorscheme with harmonic basic colors
" Maintainer:	Vinicius Assef <viniciusban@gmail.com>
" Last Change:	2020 Abr 23
"
" Color codes from:
"   - https://www.rapidtables.com/web/color/RGB_Color.html
"   - https://www.color-hex.com/

set background=dark
hi clear

let g:colors_name = 'yellowonblack'
let g:next_colorscheme = 'whiteonblack'
hi Normal             guifg=#FFFF00 guibg=#181818           ctermfg=Yellow ctermbg=Black


" Custom groups
" =============

hi customDark         guifg=#828309 guibg=bg gui=NONE       ctermfg=DarkYellow ctermbg=bg cterm=NONE
hi customHighlight    guifg=#FFFFFF guibg=bg gui=NONE       ctermfg=White ctermbg=bg cterm=NONE
hi customInvertedDark guifg=#000000 guibg=#828309           ctermfg=Black ctermbg=DarkYellow
hi customTitle        guifg=#FFFF00 guibg=#008B8B gui=NONE  ctermfg=Yellow ctermbg=DarkCyan cterm=NONE
hi customHeader       guifg=#F6F7F9 guibg=bg gui=NONE       ctermfg=White ctermbg=bg cterm=NONE
hi customTodo         guifg=#FFFFFF guibg=#008B8B           ctermfg=White ctermbg=DarkCyan cterm=NONE
hi customStatusLine   guifg=#FFFFFF guibg=#828309 gui=NONE  ctermfg=White ctermbg=DarkYellow cterm=NONE
hi customWarningMsg   guifg=#000000 guibg=#FFFFFF gui=NONE  ctermfg=Black ctermbg=White cterm=NONE


" Help groups
" ===========

hi  helpHyperTextEntry  guifg=#A9A9A9                  ctermfg=Gray
hi  helpHyperTextJump   guifg=#A9A9A9 gui=underline    ctermfg=Gray cterm=underline

" Common
" ======

execute 'source '. expand('<sfile>:h') .'/common.vim'


" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
