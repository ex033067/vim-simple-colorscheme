" Common settings for all simple colorschemes
"
" Color codes from:
"   - https://www.rapidtables.com/web/color/RGB_Color.html
"   - https://www.color-hex.com/


" Custom groups
" =============

" if &background == 'light'
"     hi customString       guifg=#096595 guibg=bg      gui=italic  cterm=italic
"     hi customLightBackground                       guibg=#EEEEEE gui=NONE cterm=NONE
"     hi customPositive     guifg=#00CD00 guibg=NONE    gui=NONE cterm=NONE
" endif

" Separated groups
" ================

hi! link Directory    customDark
hi! link Special      customAttention
hi! link SpecialKey   customAttention

hi! link Ignore       customDark
hi! link Conceal      customDark
hi! link NonText      customDark
hi! link EndOfBuffer  customNormal
hi! link QuickFixLine customHighlightedText
hi! link qfFileName   customDarker
hi! link qflineNr     customDarker




" Syntax groups
" =============

hi! link Comment    customDark
hi! link Constant   customNormal
hi! link String     customString
hi! link Number     customNormal

hi! link Statement  customNormal
hi! link Type       customNormal
hi! link PreProc    customNormal
hi! link Identifier customNormal

hi! link Todo       customHighlightedText
hi! link Error      customNegative
hi Underlined       guifg=fg         guibg=bg      gui=underline  cterm=underline


" Elements of interface
" =====================

" Cursor
let &t_SI = "\<Esc>]12;green\x7" | " solid non-blinking cursor
let &t_SR = &t_SI
let &t_EI = &t_SI
hi  Cursor            guibg=#26CC00
hi! link TermCursor   Cursor
hi! link TermCursorNC Cursor
hi! link lCursor      Cursor

" Visual mode and Search
hi! link Visual       customInvertedNormal
hi! link Search       customSearch
hi! link IncSearch    customInvertedHighlight

" Indicators and references
hi MatchParen         guibg=bg      gui=underline  cterm=underline
hi! link CursorLine   customLightBackground
hi! link CursorColumn customLightBackground
hi! link CursorLineNr customLightBackground
hi! link ColorColumn  customLightBackground
hi! link LineNr       customDark
hi! link SignColumn   customNormal
hi! link Folded       customDark
hi! link FoldColumn   customDark

" Menus
hi! link Pmenu        customInvertedDark
hi! link PmenuSel     customInvertedNormal
hi! link PmenuSbar    customInvertedNormal
hi! link PmenuThumb   customNormal
hi! link WildMenu     customInvertedNormal

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
hi! link StatusLineNC customInvertedDark
hi! link VertSplit    customInvertedDark

hi! link TabLine      customInvertedDark
hi! link TabLineFill  customInvertedDark
hi! link TabLineSel   customInvertedNormal


" Git diff groups
" ===============

hi! link diffLine       customHighlightedText
hi! link diffText       customDiffText
hi! link diffChange     customAttention

hi! link diffSubname    customHighlightedText
hi! link diffRemoved    customNegative
hi! link diffAdded      customPositive
hi! link diffFile       customNormal
hi! link diffNewFile    customNormal
hi! link diffIndexLine  customNormal

hi! link DiffAdd        customPositive
hi! link DiffDelete     customNegative


" HTML
" ====

hi! link htmlH1     customTitle
hi! link htmlBold   customBold
hi! link htmlItalic customItalic


" Git commit groups
" =================

hi! link gitcommitSummary customNormal
hi! link gitcommitBlank   customWarningMsg
hi! link gitcommitBranch  customBold
hi! link gitcommitHeader  customNormal
hi! link gitcommitDiff    customNormal

hi! link gitcommitSelected     customDark
hi! link gitcommitSelectedType customPositive
hi! link gitcommitSelectedFile customPositive

hi! link gitcommitDiscarded     customDark
hi! link gitcommitDiscardedType customNegative
hi! link gitcommitDiscardedFile customNegative

hi! link gitcommitUntracked     customDark
hi! link gitcommitUntrackedFile customNormal


" Help groups
" ===========

hi! link helpHyperTextEntry customDark
hi! link helpHyperTextJump  Underlined

hi! link helpSpecial    SpecialKey

hi! link helpOption     customBright
hi! link helpExample    customBright
hi! link helpCommand    customBold
hi  helpSectionDelim    guifg=#A9A9A9

hi! link helpNotVi      customTitle
hi! link helpHeadline   customBold
hi! link helpWarning    customWarningMsg


" NERDTree
" ========

hi! link NERDTreeHelp           customNormal
hi! link NERDTreeHelpTitle      customTitle
hi! link NERDTreeHelpKey        customcustomNormal
hi! link NERDTreeHelpCommand    customcustomNormal
hi! link NERDTreeToggleOff      customNegative
hi! link NERDTreeToggleOn       customPositive

hi! link NERDTreeUp             customDark
hi! link NERDTreeCWD            customBright
hi! link NERDTreeDir            customNormal
hi! link NERDTreeDirSlash       customNormal
hi! link NERDTreeFile           customNormal
hi! link NERDTreeExecFile       customBright


" vim-fugitive
" ============

hi! link fugitiveHeader             customNormal
hi! link fugitiveSymbolicRef        customDark

hi! link fugitiveCount              customNormal
hi! link fugitiveUntrackedHeading   customNormal
hi! link fugitiveUntrackedModifier  customDark
hi! link fugitiveUntrackedSection   customDark

hi! link fugitiveUnstagedHeading    customNormal
hi! link fugitiveUnstagedModifier   customDark
hi! link fugitiveUnstagedSection    customDark

hi! link fugitiveStagedHeading      customPositive
hi! link fugitiveStagedModifier     customPositive
hi! link fugitiveStagedSection      customPositive

hi! link fugitiveHeading            customNormal
hi! link fugitiveHash               customDark
hi! link fugitiveSection            customDark


" tabgar
" ======

hi! link TagbarHighlight           customHighlightedText
hi! link TagbarFoldIcon            customDark

hi! link TagbarVisibilityPrivate   Normal
hi! link TagbarVisibilityProtected Normal
hi! link TagbarVisibilityPublic    Normal

hi! link TagbarSignature           Normal
hi! link TagbarKind                customTitle
hi! link TagbarNestedKind          customPositive
hi! link TagbarScope               Normal
hi! link TagbarType                Normal


" javascript
" ==========

hi! link jsThis customNormal


" python
" ======

hi! link pythonStrInterpRegion customString
hi! link pythonStrFormat customString
hi! link pythonStrFormatting customString

" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
