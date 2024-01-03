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

let g:colors_name = 'black_on_white'

" Color          Dark    Light  Normal 
" ------------- ------- ------- -------
" gray                  #E5E5E5 #999999
" black         #000000         #333333
" blue                  #C1DDFF #5080A2
" yellow                        #FFD500
" orange                #FCEFCC #F3B301
" brown                         #AC6C1C
" green                         #44B533
" red                           #CE2B37
" pink (future)                 #F92672
" cyan (future)                 #00B2B2


" Basic elements
hi Normal                   guifg=#333333  guibg=NONE                               |" fg=black normal
set background=light
hi! link Terminal Normal


" -------------------------
" Named constants
" -------------------------

hi bow_Italic               guifg=fg       guibg=NONE     gui=italic     cterm=italic
hi bow_Bold                 guifg=fg       guibg=NONE     gui=bold       cterm=bold
hi bow_Underlined           guifg=fg       guibg=NONE     gui=underline  cterm=underline
hi bow_Faded                guifg=#999999  guibg=NONE     gui=NONE       cterm=NONE    |" fg=gray
hi bow_FadedWithBg          guifg=#999999  guibg=#E5E5E5                               |" fg=gray bg=light gray
hi bow_Highlighted          guifg=#000000  guibg=NONE     gui=bold       cterm=bold    |" fg=dark black bold

hi bow_CurrentItem                         guibg=#C1DDFF  gui=NONE       cterm=NONE    |" bg=light blue
hi bow_CurrentWindow        guifg=#E5E5E5  guibg=#5080A2  gui=NONE       cterm=NONE    |" fg=light gray bg=blue
hi bow_On                   guifg=#44B533  guibg=NONE     gui=NONE       cterm=NONE    |" fg=green
hi bow_Off                  guifg=#CE2B37  guibg=NONE     gui=NONE       cterm=NONE    |" fg=red
hi bow_Heading_1            guifg=#5080A2  guibg=NONE     gui=bold       cterm=bold    |" fg=blue
hi bow_Heading_2            guifg=#5080A2  guibg=NONE     gui=NONE       cterm=NONE    |" fg=blue

hi bow_Constant             guifg=#5080A2  guibg=NONE     gui=NONE       cterm=NONE    |" fg=blue
hi bow_String               guifg=#5080A2  guibg=NONE     gui=italic     cterm=italic  |" fg=blue
hi bow_Special              guifg=#5080A2  guibg=NONE     gui=NONE       cterm=NONE    |" fg=fg
hi bow_SpecialKey           guifg=#5080A2  guibg=#E5E5E5  gui=NONE       cterm=NONE    |" fg=blue bg=light gray
hi bow_ErrorMsg             guifg=#E5E5E5  guibg=#CE2B37                               |" fg=light gray bg=red
hi bow_Question             guifg=#AC6C1C  guibg=NONE     gui=NONE       cterm=NONE    |" fg=brown
hi bow_WarningMsg           guifg=#333333  guibg=#F3B301                               |" fg=black bg=orange
hi bow_WarningText          guifg=#F3B301  guibg=NONE     gui=NONE       cterm=NONE    |" fg=orange
hi bow_Search                              guibg=#FCEFCC  gui=NONE       cterm=NONE    |" bg=light orange
hi bow_IncSearch            guifg=#333333  guibg=#FFD500  gui=NONE       cterm=NONE    |" fg=black bg=yellow
hi white_on_black_Boolean   guifg=#AC6C1C  guibg=NONE     gui=NONE       cterm=NONE    |" fg=brown


" -------------------------
" Actual Colorings
" -------------------------

" Separated groups
" ================

hi! link Directory    Normal
hi! link Special      bow_Special
hi! link SpecialKey   bow_SpecialKey

hi! link Ignore       bow_Faded
hi! link Conceal      bow_Faded
hi! link NonText      bow_Faded
hi! link EndOfBuffer  bow_Faded

" Syntax groups
" =============

hi! link Comment    bow_Faded
hi! link Constant   bow_Constant
hi! link String     bow_String

hi! link Statement  Normal
hi! link Type       Normal
hi! link PreProc    Normal
hi! link Identifier Normal

hi! link Todo       bow_WarningText
hi! link Error      bow_Off
hi! link Underlined bow_Underlined

" Elements of interface
" =====================

" Visual mode and Search
hi! link Visual       bow_CurrentItem
hi! link Search       bow_Search
hi! link IncSearch    bow_IncSearch

" Indicators and references
hi! link MatchParen   bow_Highlighted

" Menus
hi! link Pmenu        bow_CurrentWindow
hi! link PmenuSel     bow_CurrentItem
hi! link PmenuSbar    bow_CurrentItem
hi! link PmenuThumb   Normal
hi! link WildMenu     bow_CurrentItem

" Messages and user interaction
hi! link ModeMsg      bow_Question
hi! link MoreMsg      bow_Question
hi! link Question     bow_Question    | " Press ENTER or type command to continue
hi! link Title        bow_Heading_1
hi! link ErrorMsg     bow_ErrorMsg
hi! link WarningMsg   bow_WarningMsg

" Spellcheck
hi! link SpellBad     bow_ErrorMsg
hi! link SpellCap     bow_WarningMsg
hi! link SpellRare    bow_WarningMsg
hi! link SpellLocal   bow_WarningMsg

" Bars, lines and dividers
hi! link StatusLine   bow_CurrentWindow
hi! link StatusLineNC bow_FadedWithBg
hi! link VertSplit    bow_FadedWithBg

hi! link TabLine      bow_Faded
hi! link TabLineFill  Normal
hi! link TabLineSel   bow_CurrentWindow

hi! link QuickFixLine bow_CurrentItem
hi! link qfFileName   bow_Faded
hi! link qflineNr     bow_Faded

hi! link CursorLine   bow_CurrentItem
hi! link CursorColumn bow_CurrentItem
hi! link CursorLineNr bow_Highlighted
hi! link ColorColumn  bow_CurrentItem
hi! link LineNr       bow_Faded
hi! link SignColumn   Normal

hi! link Folded       bow_Faded
hi! link FoldColumn   bow_Faded


" Vim diff groups (see `:h diff.txt` for reference)
" =================================================

hi! link DiffAdd        bow_On
hi! link DiffChange     bow_WarningText
hi! link DiffText       bow_WarningMsg
hi! link DiffDelete     bow_Off

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
hi! link diffLine       bow_WarningText
hi! link diffSubname    bow_WarningText
hi! link diffFile       Normal
hi! link diffNewFile    Normal
hi! link diffIndexLine  Normal


" HTML
" ====

hi! link htmlH1     bow_Heading_1
hi! link htmlBold   bow_Bold
hi! link htmlItalic bow_Italic


" Git commit groups
" =================

hi! link gitcommitSummary Normal
hi! link gitcommitBlank   bow_WarningMsg
hi! link gitcommitBranch  Normal
hi! link gitcommitHeader  Normal
hi! link gitcommitDiff    Normal

hi! link gitcommitSelected     bow_Faded
hi! link gitcommitSelectedType bow_On
hi! link gitcommitSelectedFile bow_On

hi! link gitcommitDiscarded     bow_Faded
hi! link gitcommitDiscardedType bow_Faded
hi! link gitcommitDiscardedFile bow_Faded

hi! link gitcommitUntracked     bow_Faded
hi! link gitcommitUntrackedFile Normal


" Help groups
" ===========

hi! link helpHyperTextEntry bow_Faded
hi! link helpHyperTextJump  Underlined

hi! link helpSpecial        bow_SpecialKey

hi! link helpOption         Underlined
hi! link helpURL            Underlined
hi! link helpExample        Normal
hi! link helpCommand        Underlined
hi! link helpSectionDelim   bow_Faded

hi! link helpNotVi          bow_Heading_1
hi! link helpHeader         bow_Heading_1
hi! link helpHeadline       bow_Heading_2
hi! link helpWarning        bow_WarningText
hi! link helpNote           bow_WarningText


" NERDTree
" ========

hi! link NERDTreeHelp           bow_Faded
hi! link NERDTreeHelpTitle      bow_Heading_2
hi! link NERDTreeHelpKey        Normal
hi! link NERDTreeHelpCommand    Normal
hi! link NERDTreeToggleOff      bow_Off
hi! link NERDTreeToggleOn       bow_On

hi! link NERDTreeUp             bow_Faded
hi! link NERDTreeCWD            bow_Faded
hi! link NERDTreeDir            bow_Faded
hi! link NERDTreeDirSlash       bow_Faded
hi NERDTreeFile guifg=#999999 guibg=NONE |" It sould be linked to bow_Faded, but there is a bug in NERDTree
hi! link NERDTreeExecFile       Normal
hi! link NERDTreeOpenable       bow_Faded
hi! link NERDTreeClosable       bow_Faded


" vim-fugitive
" ============

hi! link fugitiveHeader             Normal
hi! link fugitiveSymbolicRef        bow_Faded

hi! link fugitiveCount              Normal
hi! link fugitiveUntrackedHeading   Normal
hi! link fugitiveUntrackedModifier  bow_Faded
hi! link fugitiveUntrackedSection   bow_Faded

hi! link fugitiveUnstagedHeading    Normal
hi! link fugitiveUnstagedModifier   bow_Faded
hi! link fugitiveUnstagedSection    bow_Faded

hi! link fugitiveStagedHeading      bow_On
hi! link fugitiveStagedModifier     bow_On
hi! link fugitiveStagedSection      bow_On

hi! link fugitiveHeading            Normal
hi! link fugitiveHash               bow_Faded
hi! link fugitiveSection            bow_Faded


" tabgar
" ======

hi! link TagbarHighlight           bow_Highlighted
hi! link TagbarFoldIcon            bow_Faded

hi! link TagbarVisibilityPrivate   Normal
hi! link TagbarVisibilityProtected Normal
hi! link TagbarVisibilityPublic    Normal

hi! link TagbarSignature           Normal
hi! link TagbarKind                bow_Heading_2
hi! link TagbarNestedKind          bow_Heading_2
hi! link TagbarScope               Normal
hi! link TagbarType                Normal


" javascript
" ==========

hi! link jsThis Normal


" python
" ======

hi! link pythonStrInterpRegion  bow_String
hi! link pythonStrFormat        bow_String
hi! link pythonStrFormatting    bow_String
hi! link pythonDocTest2         bow_Faded
hi! link pythonDocstring        bow_String


" yaml
" ====

hi! link yamlDocumentStart     bow_Highlighted
hi! link yamlBlockMappingKey   Normal
hi! link yamlKeyValueDelimiter Normal
hi! link yamlPlainScalar       bow_Constant
hi! link yamlInteger           bow_Constant
hi! link yamlBool              white_on_black_Boolean
hi! link yamlNull              white_on_black_Boolean

" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4
