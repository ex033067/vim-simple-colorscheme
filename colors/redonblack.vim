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
let g:next_colorscheme = 'blackonwhite'
hi Normal             guifg=#FF3232 guibg=#181818           ctermfg=Red ctermbg=Black


" Custom groups
" =============

hi customDark         guifg=#B20000 guibg=bg gui=NONE       ctermfg=DarkRed ctermbg=bg cterm=NONE
hi customHighlight    guifg=#E5E5E5 guibg=bg gui=NONE       ctermfg=White ctermbg=bg cterm=NONE
hi customInvertedDark guifg=#000000 guibg=#B20000           ctermfg=Black ctermbg=DarkRed
hi customStatusLine   guifg=#E5E5E5 guibg=#B20000 gui=NONE  ctermfg=White ctermbg=DarkRed cterm=NONE


" Help groups
" ===========

hi  helpHyperTextEntry  guifg=#A9A9A9                  ctermfg=Gray
hi  helpHyperTextJump   guifg=#A9A9A9 gui=underline    ctermfg=Gray cterm=underline

" Common
" ======

execute 'source '. expand('<sfile>:h') .'/common.vim'


" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
