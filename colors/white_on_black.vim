" Vim colorscheme with harmonic basic colors
" Maintainer:	Vinicius Assef <viniciusban@gmail.com>
" Last Change:	2020 Abr 23
"
" Color codes from:
"   - https://www.rapidtables.com/web/color/RGB_Color.html
"   - https://www.color-hex.com/

" Preamble recommended by https://github.com/KevinGoodsell/vim-color-check/blob/master/color-scheme-recommendations.txt
set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = 'white_on_black'


hi Normal                  guifg=#BFBFBF  guibg=NONE
hi customBright            guifg=#FFFFFF  guibg=NONE       gui=NONE         cterm=NONE
hi customHighlightedText   guifg=#FFD500  guibg=NONE                                           |" fg=yellow
hi customUnderstate        guifg=#666666  guibg=NONE       gui=NONE         cterm=NONE
hi customItalic            guifg=fg       guibg=NONE       gui=italic       cterm=italic
hi customBold              guifg=fg       guibg=NONE       gui=bold         cterm=bold

hi customInvertedNormal    guifg=#181818       guibg=fg       gui=NONE         cterm=NONE
hi customInvertedUnderstate      guifg=#000000  guibg=#6A6A6A

hi customErrorMsg          guifg=#E5E5E5  guibg=#CE2B37                                      |" fg=white bg=red
hi customWarningMsg        guifg=#000000  guibg=#F3B301                                      |" fg=black bg=orange
hi customWarningText       guifg=#f3b301  guibg=NONE     gui=NONE         cterm=NONE         |" fg=orange
hi customSearch            guifg=#FFFFFF  guibg=#AC6C1C                                      |" fg=white bg=marron
hi customLightCursorLine                  guibg=#333333  gui=NONE         cterm=NONE
hi customDarkCursorLine                   guibg=#1C1C1C  gui=NONE         cterm=NONE
hi customStatusLine                       guibg=#294f6b  gui=NONE         cterm=NONE         |" bg=dark blue
hi customSelectedItem      guifg=#00B2B2  guibg=#232b2b  gui=bold         cterm=bold         |" fg=cyan

hi customString            guifg=#539ED6  guibg=NONE     gui=italic       cterm=italic       |" fg=blue
hi customTitle             guifg=#539ED6  guibg=NONE     gui=bold         cterm=bold         |" fg=blue
hi customPositive          guifg=#00D27F  guibg=NONE     gui=NONE         cterm=NONE         |" fg=green
hi customNegative          guifg=#CE2B37  guibg=NONE     gui=NONE         cterm=NONE         |" fg=red
hi customSpecial           guifg=#f92672  guibg=NONE     gui=NONE         cterm=NONE         |" fg=pink


" Separated groups
" ================

hi! link Directory    Normal
hi! link Special      customSpecial
hi! link SpecialKey   customSpecial

hi! link Ignore       customUnderstate
hi! link Conceal      customUnderstate
hi! link NonText      customUnderstate
hi! link EndOfBuffer  Normal

hi! link QuickFixLine customSelectedItem
hi! link qfFileName   customUnderstate
hi! link qflineNr     customUnderstate


" Syntax groups
" =============

hi! link Comment    customUnderstate
hi! link Constant   Normal
hi! link String     customString
hi! link Number     Normal

hi! link Statement  Normal
hi! link Type       Normal
hi! link PreProc    Normal
hi! link Identifier Normal

hi! link Todo       customWarningMsg
hi! link Error      customNegative
hi Underlined       guifg=fg         guibg=NONE      gui=underline  cterm=underline


" Elements of interface
" =====================

" Visual mode and Search
hi! link Visual       customInvertedNormal
hi! link Search       customSearch
hi! link IncSearch    customInvertedNormal

" Indicators and references
hi MatchParen         guibg=NONE      gui=underline  cterm=underline
hi! link CursorLine   customDarkCursorLine
hi! link CursorColumn CursorLine
hi! link CursorLineNr CursorLine
hi! link ColorColumn  CursorLine
hi! link LineNr       customUnderstate
hi! link SignColumn   Normal
hi! link Folded       customUnderstate
hi! link FoldColumn   customUnderstate

" Menus
hi! link Pmenu        customInvertedUnderstate
hi! link PmenuSel     customSelectedItem
hi! link PmenuSbar    customInvertedNormal
hi! link PmenuThumb   Normal
hi! link WildMenu     customSelectedItem

" Messages and user interaction
hi! link ModeMsg      customHighlightedText
hi! link MoreMsg      customHighLightedText
hi! link Question     customHighlightedText    | " Press ENTER or type command to continue
hi! link Title        customTitle
hi! link ErrorMsg     customErrorMsg
hi! link WarningMsg   customWarningMsg

" Spellcheck
hi! link SpellBad     customErrorMsg
hi! link SpellCap     customWarningMsg
hi! link SpellRare    customWarningMsg
hi! link SpellLocal   customWarningMsg

" Bars, lines and dividers
hi! link StatusLine   customStatusLine
hi! link StatusLineNC customInvertedUnderstate
hi! link VertSplit    customInvertedUnderstate

" hi! link TabLine      customInvertedUnderstate
hi! link TabLine      Normal
hi! link TabLineFill  Normal
hi! link TabLineSel   customStatusLine


" Git diff groups
" ===============

hi! link diffLine       customWarningText
hi! link diffText       customWarningMsg
hi! link diffChange     customWarningText

hi! link diffSubname    customHighlightedText
hi! link diffRemoved    customNegative
hi! link diffAdded      customPositive
hi! link diffFile       Normal
hi! link diffNewFile    Normal
hi! link diffIndexLine  Normal

hi! link DiffAdd        customPositive
hi! link DiffDelete     customNegative


" HTML
" ====

hi! link htmlH1     customTitle
hi! link htmlBold   customBold
hi! link htmlItalic customItalic


" Git commit groups
" =================

hi! link gitcommitSummary Normal
hi! link gitcommitBlank   customWarningMsg
hi! link gitcommitBranch  customBold
hi! link gitcommitHeader  Normal
hi! link gitcommitDiff    Normal

hi! link gitcommitSelected     customUnderstate
hi! link gitcommitSelectedType customPositive
hi! link gitcommitSelectedFile customPositive

hi! link gitcommitDiscarded     customUnderstate
hi! link gitcommitDiscardedType customNegative
hi! link gitcommitDiscardedFile customNegative

hi! link gitcommitUntracked     customUnderstate
hi! link gitcommitUntrackedFile Normal


" Help groups
" ===========

hi! link helpHyperTextEntry customUnderstate
hi! link helpHyperTextJump  Underlined

hi! link helpSpecial    customSpecial

hi! link helpOption     customHighlightedText
hi! link helpExample    customHighlightedText
hi! link helpCommand    customHighlightedText
hi  helpSectionDelim    guifg=#A9A9A9

hi! link helpNotVi      Title
hi! link helpHeadline   customBold
hi! link helpWarning    customWarningMsg


" NERDTree
" ========

hi! link NERDTreeHelp           Normal
hi! link NERDTreeHelpTitle      Title
hi! link NERDTreeHelpKey        customNormal
hi! link NERDTreeHelpCommand    customNormal
hi! link NERDTreeToggleOff      customNegative
hi! link NERDTreeToggleOn       customPositive

hi! link NERDTreeUp             Normal
hi! link NERDTreeCWD            customBright
hi! link NERDTreeDir            Normal
hi! link NERDTreeDirSlash       Normal
hi! link NERDTreeFile           Normal
hi! link NERDTreeExecFile       Normal


" vim-fugitive
" ============

hi! link fugitiveHeader             Normal
hi! link fugitiveSymbolicRef        customUnderstate

hi! link fugitiveCount              Normal
hi! link fugitiveUntrackedHeading   Normal
hi! link fugitiveUntrackedModifier  customUnderstate
hi! link fugitiveUntrackedSection   customUnderstate

hi! link fugitiveUnstagedHeading    Normal
hi! link fugitiveUnstagedModifier   customUnderstate
hi! link fugitiveUnstagedSection    customUnderstate

hi! link fugitiveStagedHeading      customPositive
hi! link fugitiveStagedModifier     customPositive
hi! link fugitiveStagedSection      customPositive

hi! link fugitiveHeading            Normal
hi! link fugitiveHash               customUnderstate
hi! link fugitiveSection            customUnderstate


" tabgar
" ======

hi! link TagbarHighlight           customSelectedItem
hi! link TagbarFoldIcon            customUnderstate

hi! link TagbarVisibilityPrivate   Normal
hi! link TagbarVisibilityProtected Normal
hi! link TagbarVisibilityPublic    Normal

hi! link TagbarSignature           Normal
hi! link TagbarKind                Title
hi! link TagbarNestedKind          Title
hi! link TagbarScope               Normal
hi! link TagbarType                Normal


" javascript
" ==========

hi! link jsThis Normal


" python
" ======

hi! link pythonStrInterpRegion String
hi! link pythonStrFormat String
hi! link pythonStrFormatting String

" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
