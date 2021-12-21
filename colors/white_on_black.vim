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


" Colors reserved for the future: #F92672 (pink) and #00B2B2 (cyan)

hi Normal                  guifg=#BFBFBF  guibg=NONE
hi customBright            guifg=#FFFFFF  guibg=NONE       gui=NONE         cterm=NONE
hi customHighlightedText   guifg=#FFD500  guibg=NONE                                           |" fg=yellow
hi customUnderstate        guifg=#666666  guibg=NONE       gui=NONE         cterm=NONE
hi customItalic            guifg=fg       guibg=NONE       gui=italic       cterm=italic
hi customBold              guifg=fg       guibg=NONE       gui=bold         cterm=bold

hi customInvertedNormal    guifg=#181818       guibg=fg       gui=NONE         cterm=NONE
hi customInvertedBright    guifg=#181818       guibg=#FFFFFF  gui=NONE         cterm=NONE
hi customInvertedUnderstate      guifg=#000000  guibg=#6A6A6A

hi customErrorMsg          guifg=#E5E5E5  guibg=#CE2B37                                      |" fg=white bg=red
hi customWarningMsg        guifg=#000000  guibg=#F3B301                                      |" fg=black bg=orange
hi customWarningText       guifg=#F3B301  guibg=NONE     gui=NONE         cterm=NONE         |" fg=orange
hi customSearch            guifg=#BFBFBF  guibg=#0b5394                                      |" fg=white bg=blue
hi customLightCursorLine                  guibg=#333333  gui=NONE         cterm=NONE
hi customDarkCursorLine                   guibg=#1C1C1C  gui=NONE         cterm=NONE
hi customStatusLine                       guibg=#294F6B  gui=NONE         cterm=NONE         |" bg=dark blue
hi customSelectedItem      guifg=#BFBFBF  guibg=#294F6B  gui=bold         cterm=bold         |" fg=white bg=dark blue

hi customQuestion          guifg=#AC6C1C  guibg=NONE     gui=NONE         cterm=NONE         |" fg=gold
hi customCodeSnippet       guifg=#66FF66  guibg=#232323  gui=NONE         cterm=NONE         |" fg=green bg=gray
hi customString            guifg=#a45b36  guibg=NONE     gui=italic       cterm=italic       |" fg=brown
hi customHeading           guifg=#539ED6  guibg=NONE     gui=bold         cterm=bold         |" fg=blue
hi customSubHeading        guifg=#539ED6  guibg=NONE     gui=NONE         cterm=NONE         |" fg=blue
hi customPositive          guifg=#00D27F  guibg=NONE     gui=NONE         cterm=NONE         |" fg=green
hi customNegative          guifg=#CE2B37  guibg=NONE     gui=NONE         cterm=NONE         |" fg=red
hi customSpecial           guifg=#d0417e  guibg=#232323  gui=NONE         cterm=NONE         |" fg=pink bg=gray


" Separated groups
" ================

hi! link Directory    Normal
hi! link Special      customSpecial
hi! link SpecialKey   customSpecial

hi! link Ignore       customUnderstate
hi! link Conceal      customUnderstate
hi! link NonText      customUnderstate
hi! link EndOfBuffer  customUnderstate

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
hi! link Visual       customLightCursorLine
hi! link Search       customSearch
hi! link IncSearch    customInvertedBright

" Indicators and references
hi MatchParen         guibg=NONE      gui=bold,underline  ctermbg=NONE cterm=bold,underline
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
hi! link ModeMsg      customQuestion
hi! link MoreMsg      customQuestion
hi! link Question     customQuestion    | " Press ENTER or type command to continue
hi! link Title        customHeading
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
hi! link TabLine      customUnderstate
hi! link TabLineFill  Normal
hi! link TabLineSel   customStatusLine


" Vim diff groups (see `:h diff.txt` for reference)
" =================================================

hi! link DiffAdd        customPositive
hi! link DiffChange     customWarningText
hi! link DiffText       customWarningMsg
hi! link DiffDelete     customNegative


" syntax/diff.vim file
" ====================

hi! link diffAdded      DiffAdd
hi! link diffChanged    DiffChange
hi! link diffRemoved    DiffDelete
hi! link diffComment    Comment
hi! link diffLine       customWarningText
hi! link diffSubname    customWarningText
hi! link diffFile       Normal
hi! link diffNewFile    Normal
hi! link diffIndexLine  Normal


" HTML
" ====

hi! link htmlH1     customHeading
hi! link htmlBold   customBold
hi! link htmlItalic customItalic


" Git commit groups
" =================

hi! link gitcommitSummary Normal
hi! link gitcommitBlank   customWarningMsg
hi! link gitcommitBranch  Normal
hi! link gitcommitHeader  Normal
hi! link gitcommitDiff    Normal

hi! link gitcommitSelected     customUnderstate
hi! link gitcommitSelectedType customPositive
hi! link gitcommitSelectedFile customPositive

hi! link gitcommitDiscarded     customUnderstate
hi! link gitcommitDiscardedType customUnderstate
hi! link gitcommitDiscardedFile customUnderstate

hi! link gitcommitUntracked     customUnderstate
hi! link gitcommitUntrackedFile Normal


" Help groups
" ===========

hi! link helpHyperTextEntry customUnderstate
hi! link helpHyperTextJump  Underlined

hi! link helpSpecial    customSpecial

hi! link helpOption     Underlined
hi! link helpURL        Underlined
hi! link helpExample    customCodeSnippet
hi! link helpCommand    customCodeSnippet
hi  helpSectionDelim    guifg=#A9A9A9

hi! link helpNotVi      Title
hi! link helpHeader     customHeading
hi! link helpHeadline   customSubHeading
hi! link helpWarning    customWarningText
hi! link helpNote       customWarningText


" NERDTree
" ========

hi! link NERDTreeHelp           customUnderstate
hi! link NERDTreeHelpTitle      customSubHeading
hi! link NERDTreeHelpKey        Normal
hi! link NERDTreeHelpCommand    Normal
hi! link NERDTreeToggleOff      customNegative
hi! link NERDTreeToggleOn       customPositive

hi! link NERDTreeUp             customUnderstate
hi! link NERDTreeCWD            customUnderstate
hi! link NERDTreeDir            customUnderstate
hi! link NERDTreeDirSlash       customUnderstate
hi NERDTreeFile guifg=#666666 guibg=NONE |" It sould be linked to customUnderstate, but there is a bug in NERDTree
hi! link NERDTreeExecFile       Normal
hi! link NERDTreeOpenable       customUnderstate
hi! link NERDTreeClosable       customUnderstate


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
hi! link TagbarKind                customSubHeading
hi! link TagbarNestedKind          customSubHeading
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
