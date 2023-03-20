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
" white dark      #7d7d7d
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
hi Terminal                   guifg=#BFBFBF  guibg=#181818                               |" fg=white bg=almost black

hi white_on_black_Italic               guifg=fg       guibg=NONE     gui=italic     cterm=italic
hi white_on_black_Bold                 guifg=fg       guibg=NONE     gui=bold       cterm=bold
hi white_on_black_Underlined           guifg=fg       guibg=NONE     gui=underline  cterm=underline

hi white_on_black_Documentation        guifg=#7d7d7d  guibg=NONE     gui=italic     cterm=italic  |" fg=white dark italic
hi white_on_black_Todo                 guifg=#C3CB71  guibg=NONE     gui=italic     cterm=italic  |" fg=light green italic

hi white_on_black_HighlightedText      guifg=#FFD500  guibg=NONE     gui=NONE       cterm=NONE    |" fg=yellow
hi white_on_black_StrongHighlightedText guifg=#FFD500 guibg=NONE     gui=bold       cterm=bold    |" fg=yellow bold
hi white_on_black_Faded                guifg=#7d7d7d  guibg=NONE     gui=NONE       cterm=NONE    |" fg=white dark
hi white_on_black_InvertedNormal       guifg=#181818  guibg=fg       gui=NONE       cterm=NONE    |" fg=black
hi white_on_black_InvertedBright       guifg=#181818  guibg=#FFFFFF  gui=NONE       cterm=NONE    |" fg=black bg=white bright
hi white_on_black_FadedInverted   guifg=#181818  guibg=#6A6A6A                               |" fg=black bg=black lightest

hi white_on_black_ErrorMsg             guifg=#E5E5E5  guibg=#CE2B37                               |" fg=white normal bg=red
hi white_on_black_WarningMsg           guifg=#181818  guibg=#F3B301                               |" fg=black bg=orange
hi white_on_black_WarningText          guifg=#F3B301  guibg=NONE     gui=NONE       cterm=NONE    |" fg=orange
hi white_on_black_Search               guifg=#FFD500  guibg=NONE     gui=underline  cterm=underline    |" fg=yellow underlined
hi white_on_black_InvertedSearch       guifg=#000000  guibg=#FFD500  gui=bold       cterm=bold    |" fg=black bg=yellow
hi white_on_black_LightCursorLine                     guibg=#333333  gui=NONE       cterm=NONE    |" bg=black lighter
hi white_on_black_DarkCursorLine                      guibg=#1C1C1C  gui=NONE       cterm=NONE    |" bg=black light
hi white_on_black_StatusLine           guifg=#181818  guibg=#5080A2  gui=NONE       cterm=NONE    |" fg=black bg=blue

hi white_on_black_Question             guifg=#AC6C1C  guibg=NONE     gui=NONE       cterm=NONE    |" fg=brown
hi white_on_black_CodeSnippet          guifg=#44b533  guibg=#181818  gui=NONE       cterm=NONE    |" fg=green bg=black
hi white_on_black_String               guifg=#5080A2  guibg=NONE     gui=italic     cterm=italic  |" fg=blue
hi white_on_black_Constant             guifg=#5080A2  guibg=NONE     gui=NONE       cterm=NONE    |" fg=blue
hi white_on_black_Boolean              guifg=#AC6C1C  guibg=NONE     gui=NONE       cterm=NONE    |" fg=brown
hi white_on_black_Heading              guifg=#5080A2  guibg=NONE     gui=bold       cterm=bold    |" fg=blue
hi white_on_black_SubHeading           guifg=#5080A2  guibg=NONE     gui=NONE       cterm=NONE    |" fg=blue
hi white_on_black_Positive             guifg=#44B533  guibg=NONE     gui=NONE       cterm=NONE    |" fg=green
hi white_on_black_Negative             guifg=#CE2B37  guibg=NONE     gui=NONE       cterm=NONE    |" fg=red
hi white_on_black_Special              guifg=fg       guibg=#232323  gui=NONE       cterm=NONE    |" fg=fg bg=black light
hi white_on_black_SpecialKey           guifg=#5080A2  guibg=#232323  gui=NONE       cterm=NONE    |" fg=blue bg=black light


" Separated groups
" ================

hi! link Directory    Normal
hi! link Special      white_on_black_Special
hi! link SpecialKey   white_on_black_SpecialKey

hi! link Ignore       white_on_black_Faded
hi! link Conceal      white_on_black_Faded
hi! link NonText      white_on_black_Faded
hi! link EndOfBuffer  white_on_black_Faded

hi! link QuickFixLine white_on_black_LightCursorLine
hi! link qfFileName   white_on_black_Faded
hi! link qflineNr     white_on_black_Faded


" Syntax groups
" =============

hi! link Comment    white_on_black_Faded
hi! link Constant   white_on_black_Constant
hi! link String     white_on_black_String

hi! link Statement  Normal
hi! link Type       Normal
hi! link PreProc    Normal
hi! link Identifier Normal

hi! link Todo       white_on_black_Todo
hi! link Error      white_on_black_Negative
hi! link Underlined white_on_black_Underlined


" Elements of interface
" =====================

" Visual mode and Search
hi! link Visual       white_on_black_LightCursorLine
hi! link Search       white_on_black_Search
hi! link IncSearch    white_on_black_InvertedSearch

" Indicators and references
hi! link MatchParen   white_on_black_StrongHighlightedText
hi! link CursorLine   white_on_black_DarkCursorLine
hi! link CursorColumn CursorLine
hi! link CursorLineNr white_on_black_HighlightedText
hi! link ColorColumn  CursorLine
hi! link LineNr       white_on_black_Faded
hi! link SignColumn   Normal
hi! link Folded       white_on_black_Faded
hi! link FoldColumn   white_on_black_Faded

" Menus
hi! link Pmenu        white_on_black_StatusLine
hi! link PmenuSel     white_on_black_InvertedBright
hi! link PmenuSbar    white_on_black_InvertedNormal
hi! link PmenuThumb   Normal
hi! link WildMenu     white_on_black_InvertedBright

" Messages and user interaction
hi! link ModeMsg      white_on_black_Question
hi! link MoreMsg      white_on_black_Question
hi! link Question     white_on_black_Question    | " Press ENTER or type command to continue
hi! link Title        white_on_black_Heading
hi! link ErrorMsg     white_on_black_ErrorMsg
hi! link WarningMsg   white_on_black_WarningMsg

" Spellcheck
hi! link SpellBad     white_on_black_ErrorMsg
hi! link SpellCap     white_on_black_WarningMsg
hi! link SpellRare    white_on_black_WarningMsg
hi! link SpellLocal   white_on_black_WarningMsg

" Bars, lines and dividers
hi! link StatusLine   white_on_black_StatusLine
hi! link StatusLineNC white_on_black_FadedInverted
hi! link VertSplit    white_on_black_FadedInverted

hi! link TabLine      white_on_black_Faded
hi! link TabLineFill  Normal
hi! link TabLineSel   white_on_black_LightCursorLine


" Vim diff groups (see `:h diff.txt` for reference)
" =================================================

hi! link DiffAdd        white_on_black_Positive
hi! link DiffChange     white_on_black_WarningText
hi! link DiffText       white_on_black_WarningMsg
hi! link DiffDelete     white_on_black_Negative

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
hi! link diffLine       white_on_black_WarningText
hi! link diffSubname    white_on_black_WarningText
hi! link diffFile       Normal
hi! link diffNewFile    Normal
hi! link diffIndexLine  Normal


" HTML
" ====

hi! link htmlH1     white_on_black_Heading
hi! link htmlBold   white_on_black_Bold
hi! link htmlItalic white_on_black_Italic


" Git commit groups
" =================

hi! link gitcommitSummary Normal
hi! link gitcommitBlank   white_on_black_WarningMsg
hi! link gitcommitBranch  Normal
hi! link gitcommitHeader  Normal
hi! link gitcommitDiff    Normal

hi! link gitcommitSelected     white_on_black_Faded
hi! link gitcommitSelectedType white_on_black_Positive
hi! link gitcommitSelectedFile white_on_black_Positive

hi! link gitcommitDiscarded     white_on_black_Faded
hi! link gitcommitDiscardedType white_on_black_Faded
hi! link gitcommitDiscardedFile white_on_black_Faded

hi! link gitcommitUntracked     white_on_black_Faded
hi! link gitcommitUntrackedFile Normal


" Help groups
" ===========

hi! link helpHyperTextEntry white_on_black_Faded
hi! link helpHyperTextJump  Underlined

hi! link helpSpecial        white_on_black_SpecialKey

hi! link helpOption         Underlined
hi! link helpURL            Underlined
hi! link helpExample        white_on_black_CodeSnippet
hi! link helpCommand        Underlined
hi! link helpSectionDelim   white_on_black_Faded

hi! link helpNotVi          white_on_black_Heading
hi! link helpHeader         white_on_black_Heading
hi! link helpHeadline       white_on_black_SubHeading
hi! link helpWarning        white_on_black_WarningText
hi! link helpNote           white_on_black_WarningText


" NERDTree
" ========

hi! link NERDTreeHelp           white_on_black_Faded
hi! link NERDTreeHelpTitle      white_on_black_SubHeading
hi! link NERDTreeHelpKey        Normal
hi! link NERDTreeHelpCommand    Normal
hi! link NERDTreeToggleOff      white_on_black_Negative
hi! link NERDTreeToggleOn       white_on_black_Positive

hi! link NERDTreeUp             white_on_black_Faded
hi! link NERDTreeCWD            white_on_black_Faded
hi! link NERDTreeDir            white_on_black_Faded
hi! link NERDTreeDirSlash       white_on_black_Faded
hi NERDTreeFile guifg=#7d7d7d guibg=NONE |" It sould be linked to white_on_black_Faded, but there is a bug in NERDTree
hi! link NERDTreeExecFile       Normal
hi! link NERDTreeOpenable       white_on_black_Faded
hi! link NERDTreeClosable       white_on_black_Faded


" vim-fugitive
" ============

hi! link fugitiveHeader             Normal
hi! link fugitiveSymbolicRef        white_on_black_Faded

hi! link fugitiveCount              Normal
hi! link fugitiveUntrackedHeading   Normal
hi! link fugitiveUntrackedModifier  white_on_black_Faded
hi! link fugitiveUntrackedSection   white_on_black_Faded

hi! link fugitiveUnstagedHeading    Normal
hi! link fugitiveUnstagedModifier   white_on_black_Faded
hi! link fugitiveUnstagedSection    white_on_black_Faded

hi! link fugitiveStagedHeading      white_on_black_Positive
hi! link fugitiveStagedModifier     white_on_black_Positive
hi! link fugitiveStagedSection      white_on_black_Positive

hi! link fugitiveHeading            Normal
hi! link fugitiveHash               white_on_black_Faded
hi! link fugitiveSection            white_on_black_Faded


" tabgar
" ======

hi! link TagbarHighlight           white_on_black_HighlightedText
hi! link TagbarFoldIcon            white_on_black_Faded

hi! link TagbarVisibilityPrivate   Normal
hi! link TagbarVisibilityProtected Normal
hi! link TagbarVisibilityPublic    Normal

hi! link TagbarSignature           Normal
hi! link TagbarKind                white_on_black_SubHeading
hi! link TagbarNestedKind          white_on_black_SubHeading
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
hi! link pythonDocTest2         white_on_black_Faded
hi! link pythonDocstring        white_on_black_Documentation


" yaml
" ====

hi! link yamlDocumentStart     white_on_black_HighlightedText
hi! link yamlBlockMappingKey   Normal
hi! link yamlKeyValueDelimiter Normal
hi! link yamlPlainScalar       white_on_black_Constant
hi! link yamlInteger           white_on_black_Constant
hi! link yamlBool              white_on_black_Boolean
hi! link yamlNull              white_on_black_Boolean

" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
