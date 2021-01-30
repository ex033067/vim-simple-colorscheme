" Common settings for all simple colorschemes
"
" Color codes from:
"   - https://www.rapidtables.com/web/color/RGB_Color.html
"   - https://www.color-hex.com/


" Custom groups
" =============

hi customString       guifg=#A0A066 guibg=bg      gui=italic  cterm=italic
hi customWarningMsg   guifg=#000000 guibg=#D88724
hi customErrorMsg     guifg=#E5E5E5 guibg=#C02F1D
hi customLine                       guibg=#333333 gui=NONE    cterm=NONE
hi customDiffText     guifg=#E5E5E5 guibg=#3399FF gui=NONE    cterm=NONE
hi customVisual       guifg=#000000 guibg=#B0C000 gui=NONE    cterm=NONE

hi customPositive     guifg=#00FF00 guibg=NONE    gui=NONE    cterm=NONE
hi customNegative     guifg=#FF0000 guibg=NONE    gui=NONE    cterm=NONE
hi customAttention    guifg=#D88724 guibg=NONE    gui=NONE    cterm=NONE


" Separated groups
" ================

hi! link Directory    customDarker
hi! link Special      customAttention
hi! link SpecialKey   customAttention

hi! link Ignore       customDarker
hi! link Conceal      customDarker
hi! link NonText      customDarker
hi! link EndOfBuffer  Normal
hi! link QuickFixLine customTitle


" Syntax groups
" =============

hi! link Comment    customDarker
hi! link Constant   Normal
hi! link String     customString
hi! link Number     Normal

hi! link Statement  Normal
hi! link Type       Normal
hi! link PreProc    Normal
hi! link Identifier Normal

hi! link Todo       customTitle
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
hi! link Visual       customVisual
hi! link Search       customVisual
hi! link IncSearch    customWarningMsg

" Indicators and references
hi! link CursorLine   customLine
hi! link CursorColumn customLine
hi! link CursorLineNr customLine
hi! link ColorColumn  customLine
hi! link LineNr       customDarker
hi! link SignColumn   Normal
hi! link Folded       customDarker
hi! link FoldColumn   customDarker
hi! link MatchParen   Underlined

" Menus
hi! link Pmenu        customInvertedDark
hi! link PmenuSel     customVisual
hi! link PmenuSbar    customInvertedLight
hi! link PmenuThumb   Normal
hi! link WildMenu     customInvertedLight

" Messages and user interaction
hi! link ModeMsg      customTitle
hi! link MoreMsg      customTitle
hi! link Title        customTitle
hi! link Question     customTitle    | " Press ENTER or type command to continue
hi! link ErrorMsg     customErrorMsg
hi! link WarningMsg   customWarningMsg

" Spellcheck
hi! link SpellBad     customErrorMsg
hi! link SpellCap     customWarningMsg
hi! link SpellRare    customWarningMsg
hi! link SpellLocal   customWarningMsg

" Bars, lines and dividers
hi! link StatusLine   customInvertedLight
hi! link StatusLineNC customInvertedDark
hi! link VertSplit    customInvertedDark

hi! link TabLine      customInvertedDark
hi! link TabLineFill  customInvertedDark
hi! link TabLineSel   customInvertedLight


" Git diff groups
" ===============

hi! link diffLine       customTitle
hi! link diffText       customDiffText
hi! link diffChange     customTitle

hi! link diffSubname    customTitle
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

hi! link gitcommitSelected     customDarker
hi! link gitcommitSelectedType customPositive
hi! link gitcommitSelectedFile customPositive

hi! link gitcommitDiscarded     customDarker
hi! link gitcommitDiscardedType customNegative
hi! link gitcommitDiscardedFile customNegative

hi! link gitcommitUntracked     customDarker
hi! link gitcommitUntrackedFile Normal


" Help groups
" ===========

hi! link helpHyperTextEntry customDarker
hi! link helpHyperTextJump  Underlined

hi! link helpSpecial    Special

hi! link helpOption     customHighlight
hi! link helpExample    customHighlight
hi! link helpCommand    customBold
hi  helpSectionDelim    guifg=#A9A9A9

hi! link helpNotVi      customTitle
hi! link helpHeadline   customBold
hi! link helpWarning    customWarningMsg


" NERDTree
" ========

hi! link NERDTreeHelp           Normal
hi! link NERDTreeHelpTitle      customBold
hi! link NERDTreeHelpKey        customDarker
hi! link NERDTreeHelpCommand    customDarker
hi! link NERDTreeToggleOff      customNegative
hi! link NERDTreeToggleOn       customPositive

hi! link NERDTreeUp             customDarker
hi! link NERDTreeCWD            Normal
hi! link NERDTreeDir            customDarker
hi! link NERDTreeDirSlash       customDarker
hi! link NERDTreeFile           Normal
hi! link NERDTreeExecFile       customTitle


" vim-fugitive
" ============

hi! link fugitiveHeader             Normal
hi! link fugitiveSymbolicRef        customDarker

hi! link fugitiveCount              Normal
hi! link fugitiveUntrackedHeading   Normal
hi! link fugitiveUntrackedModifier  customDarker
hi! link fugitiveUntrackedSection   customDarker

hi! link fugitiveUnstagedHeading    Normal
hi! link fugitiveUnstagedModifier   customDarker
hi! link fugitiveUnstagedSection    customDarker

hi! link fugitiveStagedHeading      customPositive
hi! link fugitiveStagedModifier     customPositive
hi! link fugitiveStagedSection      customPositive

hi! link fugitiveHeading            Normal
hi! link fugitiveHash               customDarker
hi! link fugitiveSection            customDarker


" tabgar
" ======

hi! link TagbarFoldIcon            customDarker
hi! link TagbarVisibilityProtected customDarker
hi! link TagbarVisibilityPublic    customDarker
hi! link TagbarSignature           customDarker
hi! link TagbarKind                customPositive
hi! link TagbarNestedKind          customPositive
hi! link TagbarScope               customTitle
hi! link TagbarType                customDarker


" javascript
" ==========

hi! link jsThis Normal

" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
