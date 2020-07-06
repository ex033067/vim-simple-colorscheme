" Vim colorscheme with harmonic basic colors
" Maintainer:	Vinicius Assef <viniciusban@gmail.com>
" Last Change:	2020 Abr 23
"
" Color codes from:
"   - https://www.rapidtables.com/web/color/RGB_Color.html
"   - https://www.color-hex.com/

set background=dark
hi clear

let g:colors_name = 'cyanonblack'
let g:next_colorscheme = 'amberonblack'
hi Normal             guifg=#00FFFF guibg=#181818           ctermfg=Cyan ctermbg=Black


" Custom groups
" =============

hi customDark         guifg=#008B8B guibg=bg gui=NONE       ctermfg=DarkCyan ctermbg=bg cterm=NONE
hi customHighlight    guifg=#FFFFFF guibg=bg gui=NONE       ctermfg=White ctermbg=bg cterm=NONE
hi customInvertedDark guifg=#000000 guibg=#008B8B           ctermfg=Black ctermbg=DarkCyan
hi customStatusLine   guifg=#FFFFFF guibg=#008B8B gui=NONE  ctermfg=White ctermbg=DarkCyan cterm=NONE


" Help groups
" ===========

hi  helpHyperTextEntry  guifg=#A9A9A9                  ctermfg=Gray
hi  helpHyperTextJump   guifg=#A9A9A9 gui=underline    ctermfg=Gray cterm=underline

" Common
" ======

execute 'source '. expand('<sfile>:h') .'/common.vim'


" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
