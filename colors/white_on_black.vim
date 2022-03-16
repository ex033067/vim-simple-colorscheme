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


" Color           Foreground Background
" --------------- ---------- ----------
" white bright    #E5E5E5    #FFFFFF
" white normal    #BFBFBF
" white dark      #666666
" black           #181818    #181818
" black light                #232323
" black lighter              #333333
" black lightest             #6A6A6A
" blue            #5080A2    #5080A2
" yellow          #FFD500
" orange          #F3B301    #F3B301
" brown           #AC6C1C    #AC6C1C
" green           #44B533
" red             #CE2B37    #CE2B37
" pink (future)   #F92672
" cyan (future)   #00B2B2


hi Normal                     guifg=#BFBFBF  guibg=NONE                                  |" fg=white normal

hi customItalic               guifg=fg       guibg=NONE     gui=italic     cterm=italic
hi customBold                 guifg=fg       guibg=NONE     gui=bold       cterm=bold
hi customUnderlined           guifg=fg       guibg=NONE     gui=underline  cterm=underline

hi customHighlightedText      guifg=#FFD500  guibg=NONE                                  |" fg=yellow
hi customUnderstate           guifg=#666666  guibg=NONE     gui=NONE       cterm=NONE    |" fg=white dark
hi customInvertedNormal       guifg=#181818  guibg=fg       gui=NONE       cterm=NONE    |" fg=black
hi customInvertedBright       guifg=#181818  guibg=#FFFFFF  gui=NONE       cterm=NONE    |" fg=black bg=white bright
hi customInvertedUnderstate   guifg=#181818  guibg=#6A6A6A                               |" fg=black bg=black lightest

hi customErrorMsg             guifg=#E5E5E5  guibg=#CE2B37                               |" fg=white normal bg=red
hi customWarningMsg           guifg=#181818  guibg=#F3B301                               |" fg=black bg=orange
hi customWarningText          guifg=#F3B301  guibg=NONE     gui=NONE       cterm=NONE    |" fg=orange
hi customSearch               guifg=#E5E5E5  guibg=#AC6C1C                               |" fg=white normal bg=brown
hi customLightCursorLine                     guibg=#333333  gui=NONE       cterm=NONE    |" bg=black lighter
hi customDarkCursorLine                      guibg=#1C1C1C  gui=NONE       cterm=NONE    |" bg=black light
hi customInvisibleCursorLine                 guibg=NONE     gui=NONE       cterm=NONE    |" transparent
hi customStatusLine           guifg=#181818  guibg=#5080A2  gui=NONE       cterm=NONE    |" fg=black bg=blue

hi customQuestion             guifg=#AC6C1C  guibg=NONE     gui=NONE       cterm=NONE    |" fg=brown
hi customCodeSnippet          guifg=#44b533  guibg=#181818  gui=NONE       cterm=NONE    |" fg=green bg=black
hi customString               guifg=#5080A2  guibg=NONE     gui=italic     cterm=italic  |" fg=blue
hi customConstant             guifg=#5080A2  guibg=NONE     gui=NONE       cterm=NONE    |" fg=blue
hi customBoolean              guifg=#AC6C1C  guibg=NONE     gui=NONE       cterm=NONE    |" fg=brown
hi customHeading              guifg=#5080A2  guibg=NONE     gui=bold       cterm=bold    |" fg=blue
hi customSubHeading           guifg=#5080A2  guibg=NONE     gui=NONE       cterm=NONE    |" fg=blue
hi customPositive             guifg=#44B533  guibg=NONE     gui=NONE       cterm=NONE    |" fg=green
hi customNegative             guifg=#CE2B37  guibg=NONE     gui=NONE       cterm=NONE    |" fg=red
hi customSpecial              guifg=fg       guibg=#232323  gui=NONE       cterm=NONE    |" fg=fg bg=black light
hi customSpecialKey           guifg=#5080A2  guibg=#232323  gui=NONE       cterm=NONE    |" fg=blue bg=black light
hi customMatchParen                          guibg=NONE     gui=bold,underline  cterm=bold,underline


" Separated groups
" ================

hi! link Directory    Normal
hi! link Special      customSpecial
hi! link SpecialKey   customSpecialKey

hi! link Ignore       customUnderstate
hi! link Conceal      customUnderstate
hi! link NonText      customUnderstate
hi! link EndOfBuffer  customUnderstate

hi! link QuickFixLine customLightCursorLine
hi! link qfFileName   customUnderstate
hi! link qflineNr     customUnderstate


" Syntax groups
" =============

hi! link Comment    customUnderstate
hi! link Constant   customConstant
hi! link String     customString

hi! link Statement  Normal
hi! link Type       Normal
hi! link PreProc    Normal
hi! link Identifier Normal

hi! link Todo       customWarningMsg
hi! link Error      customNegative
hi! link Underlined customUnderlined


" Elements of interface
" =====================

" Visual mode and Search
hi! link Visual       customLightCursorLine
hi! link Search       customSearch
hi! link IncSearch    customInvertedBright

" Indicators and references
hi! link MatchParen   customMatchParen
hi! link CursorLine   customInvisibleCursorLine
hi! link CursorColumn CursorLine
hi! link CursorLineNr CursorLine
hi! link ColorColumn  CursorLine
hi! link LineNr       customUnderstate
hi! link SignColumn   Normal
hi! link Folded       customUnderstate
hi! link FoldColumn   customUnderstate

" Menus
hi! link Pmenu        customStatusLine
hi! link PmenuSel     customInvertedBright
hi! link PmenuSbar    customInvertedNormal
hi! link PmenuThumb   Normal
hi! link WildMenu     customInvertedBright

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

hi! link TabLine      customUnderstate
hi! link TabLineFill  Normal
hi! link TabLineSel   customLightCursorLine


" Vim diff groups (see `:h diff.txt` for reference)
" =================================================

hi! link DiffAdd        customPositive
hi! link DiffChange     customWarningText
hi! link DiffText       customWarningMsg
hi! link DiffDelete     customNegative

" syntax/vim.vim file
" ===================

hi! link vimContinue Normal
hi! link vimSep      Normal
hi! link vimParenSep Normal

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

hi! link helpSpecial        customSpecialKey

hi! link helpOption         Underlined
hi! link helpURL            Underlined
hi! link helpExample        customCodeSnippet
hi! link helpCommand        Underlined
hi! link helpSectionDelim   customUnderstate

hi! link helpNotVi          customHeading
hi! link helpHeader         customHeading
hi! link helpHeadline       customSubHeading
hi! link helpWarning        customWarningText
hi! link helpNote           customWarningText


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

hi! link TagbarHighlight           customHighlightedText
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

hi! link pythonStrInterpRegion  String
hi! link pythonStrFormat        String
hi! link pythonStrFormatting    String
hi! link pythonDocTest2         customUnderstate


" yaml
" ====

hi! link yamlDocumentStart     customHighlightedText
hi! link yamlBlockMappingKey   Normal
hi! link yamlKeyValueDelimiter Normal
hi! link yamlPlainScalar       customConstant
hi! link yamlInteger           customConstant
hi! link yamlBool              customBoolean
hi! link yamlNull              customBoolean

" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
