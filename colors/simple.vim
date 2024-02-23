" Vim colorscheme with harmonic basic colors
" Maintainer:	Vinicius Assef <viniciusban@gmail.com>
" Last Change:	2024 Jan
"
" Color codes from:
"   - https://www.rapidtables.com/web/color/RGB_Color.html
"   - https://www.color-hex.com/

" Preamble recommended by https://github.com/KevinGoodsell/vim-color-check/blob/master/color-scheme-recommendations.txt
highlight clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "simple"

if &background == "light"
    " ------------- ------- ------- -------
    " Color table    Dark   Normal   Light
    " ------------- ------- ------- -------
    " gray                  #999999 #E5E5E5
    " black         #000000 #333333
    " blue          #005B96 #2980B9 #C1DDFF
    " yellow                #FFD500
    " orange                #F3B301 #FCEFCC
    " brown                 #AC6C1C
    " green         #008744 #44B533
    " red                   #CE2B37
    " pink (future)         #F92672
    " cyan (future)         #00B2B2
    " ------------- ------- ------- -------

    hi Normal       guifg=#333333  guibg=NONE

    " UI highlight groups
    hi CursorLine                  guibg=#C1DDFF  gui=NONE
    hi CursorLineNr guifg=#000000  guibg=NONE     gui=bold
    hi StatusLine   guifg=#E5E5E5  guibg=#005B96  gui=NONE
    hi StatusLineNC guifg=#999999  guibg=#E5E5E5
    hi Comment      guifg=#999999  guibg=NONE     gui=italic
    hi NonText      guifg=#999999  guibg=NONE     gui=nocombine
    hi DiffAdd      guifg=#44B533  guibg=NONE     gui=NONE
    hi DiffChange   guifg=#F3B301  guibg=NONE     gui=NONE
    hi DiffDelete   guifg=#CE2B37  guibg=NONE     gui=NONE
    hi ErrorMsg     guifg=#E5E5E5  guibg=#CE2B37
    hi WarningMsg   guifg=#333333  guibg=#F3B301
    hi Search                      guibg=#FCEFCC  gui=NONE
    hi IncSearch    guifg=#333333  guibg=#FFD500  gui=NONE
    hi Question     guifg=#AC6C1C  guibg=NONE     gui=NONE    |" Press ENTER or type command to continue
    hi SpecialKey   guifg=#2980B9  guibg=#E5E5E5  gui=NONE
    hi Title        guifg=fg       guibg=NONE     gui=bold

    " Syntax highlight groups
    hi Constant     guifg=#2980B9  guibg=NONE     gui=NONE
    hi Special      guifg=#2980B9  guibg=NONE     gui=NONE
    hi Underlined   guifg=fg       guibg=NONE     gui=underline
    hi String       guifg=#2980B9  guibg=NONE     gui=NONE
    hi @text.literal guifg=#2980B9  guibg=NONE     gui=NONE
    hi @text.strike gui=strikethrough
    hi @text.quote gui=italic
    hi @text.strong.markdown_inline gui=bold
    hi @text.emphasis.markdown_inline gui=italic
else
    echo "dark"
endif

" Links for UI
hi! link ColorColumn  CursorLine
hi! link Conceal      NonText
hi! link CursorColumn CursorLine
hi! link DiffText     WarningMsg
hi! link Directory    Normal
hi! link EndOfBuffer  NonText
hi! link VertSplit    StatusLineNC
hi! link Folded       NonText
hi! link FoldColumn   NonText
hi! link SignColumn   Normal
hi! link LineNr       NonText
hi! link MatchParen   CursorLineNr
hi! link ModeMsg      Question
hi! link MoreMsg      Question
hi! link Pmenu        StatusLine
hi! link PmenuSel     CursorLine
hi! link PmenuSbar    CursorLine
hi! link PmenuThumb   Normal
hi! link QuickFixLine CursorLine
hi! link qfFileName   NonText
hi! link qflineNr     NonText
hi! link SpellBad     WarningMsg
hi! link SpellCap     WarningMsg
hi! link SpellLocal   WarningMsg
hi! link SpellRare    WarningMsg
hi! link TabLine      NonText
hi! link TabLineFill  Normal
hi! link TabLineSel   StatusLine
hi! link Terminal     Normal
hi! link Visual       CursorLine
hi! link WildMenu     CursorLine
" Cursor
" lCursor
" CursorIM
" VisualNOS
" User1
" User2
" User3
" User4
" User5
" User6
" User7
" User8
" User9
" Menu
" Scrollbar
" Tooltip

" Links for syntax
hi! link Identifier Normal
hi! link Statement  Normal
hi! link PreProc    Normal
hi! link Type       Normal
hi! link Ignore     NonText
hi! link Error      DiffDelete
hi! link Todo       DiffChange
hi! link SpecialChar SpecialKey
hi! link @string.documentation Comment
" Character
" Number
" Boolean
" Float
" Function
" Conditional
" Repeat
" Label
" Operator
" Keyword
" Exception
" Include
" Define
" Macro
" PreCondit
" StorageClass
" Structure
" Typedef
" Tag
" Delimiter
" SpecialComment
" Debug

" syntax/diff.vim file
hi! link diffAdded      DiffAdd
hi! link diffChanged    DiffChange
hi! link diffRemoved    DiffDelete
hi! link diffComment    Comment
hi! link diffLine       DiffChange
hi! link diffSubname    DiffChange
hi! link diffFile       Normal
hi! link diffNewFile    Normal
hi! link diffIndexLine  Normal

" Git commit groups
hi! link gitcommitBlank   WarningMsg
hi! link gitcommitBranch  Normal
hi! link gitcommitHeader  NonText
hi! link gitcommitSelectedType DiffAdd
hi! link gitcommitSelectedFile DiffAdd
hi! link gitcommitDiscardedType NonText
hi! link gitcommitDiscardedFile NonText
hi! link gitcommitUntrackedFile NonText

" vim-fugitive
hi! link fugitiveStagedHeading  DiffAdd
hi! link fugitiveStagedModifier DiffAdd
hi! link fugitiveStagedSection  DiffAdd

" javascript
" hi! link jsThis Normal

" python
hi! link @boolean.python Normal
hi! link @constant.builtin.python Normal
hi! link @constant.python Normal
hi! link @constructor.python Normal
hi! link @function.builtin.python Normal
hi! link @number.python Normal
hi! link @float.python Normal
hi! link @punctuation.bracket.python Normal
hi! link @punctuation.delimiter.comment Comment
hi! link @punctuation.delimiter.python Normal

" yaml
hi! link @string.yaml Constant

" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
