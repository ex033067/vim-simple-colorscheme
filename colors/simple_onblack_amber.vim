" Vim colorscheme with harmonic basic colors
" Maintainer:	Vinicius Assef <viniciusban@gmail.com>
" Last Change:	2020 Abr 23
"
" Color codes from:
"   - https://www.rapidtables.com/web/color/RGB_Color.html
"   - https://www.color-hex.com/

set background=dark
hi clear

let g:colors_name = 'simple_onblack_amber'
hi Normal             guifg=#FFBF00 guibg=#181818           ctermfg=Yellow ctermbg=Black


" Custom groups
" =============

hi customDark         guifg=#B28500 guibg=bg gui=NONE       ctermfg=DarkYellow ctermbg=bg cterm=NONE
hi customHighlight    guifg=#CECECE guibg=bg gui=NONE       ctermfg=White ctermbg=bg cterm=NONE
hi customBold         guifg=#FFFF00 guibg=bg gui=bold       ctermfg=LightYellow ctermbg=bg cterm=bold
hi customInvertedDark guifg=#000000 guibg=#B28500           ctermfg=Black ctermbg=DarkYellow
hi customInvertedLight guifg=#CECECE guibg=#B28500          ctermfg=White ctermbg=DarkYellow
hi customStatusLine   guifg=#CECECE guibg=#B28500 gui=NONE  ctermfg=White ctermbg=DarkYellow cterm=NONE

" Common
" ======

execute 'source '. expand('<sfile>:h') .'/simple_onblack_common.vim'


" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
