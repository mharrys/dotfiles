" Vim color file
" Maintainer:   Mattias Harrysson <mattias.harrysson at gmail.com>
" Last Change:  2013-02-05
" URL:          http://github.com/mharrys

" :he group-name
" :he highlight-groups
" :he cterm-colors

" colors used
" 52  #5f0000 DarkRed           : DiffDelete, ErrorMsg, Error
" 65  #5f875f DarkSeaGreen4     : DiffAdd
" 157 #afffaf DarkSeaGreen2     : DiffAdd
" 46  #00ff00 Green1            : IncSearch
" 16  #000000 Grey0             : LineNr, NonText, VisualNOS, Pmenu, VertSplit
" 232 #080808 Grey3             : Normal, PmenuSel
" 233 #121212 Grey7             : CursorIM, CursorColumn, ColorColumn, Folded, StatusLine, StatusLineNC, Visual, WildMenu, CursorLine
" 235 #262626 Grey15            : LineNr, NonText, Ignore, Comment, Directory
" 239 #4e4e4e Grey30            : VisualNOS, Pmenu, Todo, PmenuThumb
" 240 #585858 Grey35            : Normal, StatusLine, Operator, Folded, Cursor, CursorIM
" 246 #949494 Grey58            : ModeMsg, MoreMsg, Question, String, PmenuSel, Special, Title, ErrorMsg, Visual, CursorLineNr
" 152 #afd7d7 LightCyan3        : SpecialKey, WildMenu, Underlined
" 103 #8787af LightSlateGrey    : Constant, Type
" 147 #afafff LightSteelBlue    : DiffChange
" 66  #5f8787 PaleTurquoise4    : Function
" 60  #5f5f87 MediumPurple4     : Identifier, Statement, PreProc, DiffChange
" 144 #afaf87 NavajoWhite3      : Number, WarningMsg
" 219 #ffafff Plum1             : DiffText
" 96  #875f87 Plum4             : DiffText
" 196 #ff0000 Red1              : Search, Error

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="noeyepain"

hi ColorColumn      ctermfg=NONE ctermbg=16   guifg=NONE    guibg=#000000 term=NONE cterm=NONE gui=NONE
hi Cursor           ctermfg=NONE ctermbg=246  guifg=NONE    guibg=#585858 term=NONE cterm=NONE gui=NONE
hi CursorIM         ctermfg=NONE ctermbg=246  guifg=NONE    guibg=#585858 term=NONE cterm=NONE gui=NONE
hi CursorColumn     ctermfg=NONE ctermbg=233  guifg=#121212 guibg=#121212 term=NONE cterm=NONE gui=NONE
hi CursorLine       ctermfg=NONE ctermbg=233  guifg=NONE    guibg=#121212 term=NONE cterm=NONE gui=NONE
hi CursorLineNr     ctermfg=246  ctermbg=none guifg=#949494 guibg=NONE    term=NONE cterm=NONE gui=NONE
hi Directory        ctermfg=235  ctermbg=NONE guifg=NONE    guibg=NONE    term=NONE cterm=NONE gui=NONE
hi DiffAdd          ctermfg=157  ctermbg=65   guifg=#afffaf guibg=#5f875f term=NONE cterm=NONE gui=NONE
hi DiffChange       ctermfg=147  ctermbg=60   guifg=#afafff guibg=#5f5f87 term=NONE cterm=NONE gui=NONE
hi DiffDelete       ctermfg=NONE ctermbg=52   guifg=#5f0000 guibg=#5f0000 term=NONE cterm=NONE gui=NONE
hi DiffText         ctermfg=219  ctermbg=96   guifg=#ffafff guibg=#875f87 term=NONE cterm=NONE gui=NONE
hi ErrorMsg         ctermfg=246  ctermbg=52   guifg=#ff0000 guibg=#5f0000 term=NONE cterm=NONE gui=NONE
hi Function         ctermfg=66   ctermbg=NONE guifg=#5f8787 guibg=NONE    term=NONE cterm=NONE gui=NONE
hi Folded           ctermfg=240  ctermbg=233  guifg=#949494 guibg=#121212 term=NONE cterm=NONE gui=NONE
"hi FoldColumn
hi IncSearch        ctermfg=46   ctermbg=NONE guifg=#949494 guibg=#121212 term=NONE cterm=NONE gui=NONE
hi LineNr           ctermfg=235  ctermbg=16   guifg=#1c1c1c guibg=#000000 term=NONE cterm=NONE gui=NONE
hi ModeMsg          ctermfg=246  ctermbg=NONE guifg=#949494 guibg=NONE    term=NONE cterm=NONE gui=NONE
hi MoreMsg          ctermfg=246  ctermbg=NONE guifg=#949494 guibg=NONE    term=NONE cterm=NONE gui=NONE
hi NonText          ctermfg=235  ctermbg=16   guifg=#1c1c1c guibg=#000000 term=NONE cterm=NONE gui=NONE
hi Normal           ctermfg=240  ctermbg=232  guifg=#4e4e4e guibg=#080808 term=NONE cterm=NONE gui=NONE
hi Number           ctermfg=144  ctermbg=NONE guifg=#afaf87 guibg=NONE    term=NONE cterm=NONE gui=NONE
hi Operator         ctermfg=240  ctermbg=NONE guifg=#6c6c6c guibg=NONE    term=NONE cterm=NONE gui=NONE
hi Question         ctermfg=246  ctermbg=NONE guifg=#949494 guibg=NONE    term=NONE cterm=NONE gui=NONE
hi Search           ctermfg=196  ctermbg=NONE guifg=#949494 guibg=#121212 term=NONE cterm=NONE gui=NONE
hi SpecialKey       ctermfg=152  ctermbg=NONE guifg=#afd7d7 guibg=NONE    term=NONE cterm=NONE gui=NONE
hi StatusLine       ctermfg=240  ctermbg=233  guifg=#585858 guibg=#121212 term=NONE cterm=NONE gui=NONE
hi StatusLineNC     ctermfg=NONE ctermbg=233  guifg=NONE    guibg=#121212 term=NONE cterm=NONE gui=NONE
hi String           ctermfg=246  ctermbg=NONE guifg=#949494 guibg=NONE    term=NONE cterm=NONE gui=NONE
hi Title            ctermfg=246  ctermbg=NONE guifg=#949494 guibg=NONE    term=NONE cterm=NONE gui=NONE
hi VertSplit        ctermfg=16   ctermbg=16   guifg=#000000 guibg=#000000 term=NONE cterm=NONE gui=NONE
hi Visual           ctermfg=246  ctermbg=233  guifg=#949494 guibg=#121212 term=NONE cterm=NONE gui=NONE
hi VisualNOS        ctermfg=239  ctermbg=16   guifg=#949494 guibg=#000000 term=NONE cterm=NONE gui=NONE
hi WarningMsg       ctermfg=144  ctermbg=NONE guifg=#afaf87 guibg=NONE    term=NONE cterm=NONE gui=NONE
hi WildMenu         ctermfg=152  ctermbg=233  guifg=#afd7d7 guibg=#121212 term=NONE cterm=NONE gui=NONE
hi Pmenu            ctermfg=239  ctermbg=16   guifg=#4e4e4e guibg=#000000 term=NONE cterm=NONE gui=NONE
hi PmenuSel         ctermfg=246  ctermbg=232  guifg=#949494 guibg=#121212 term=NONE cterm=NONE gui=NONE
hi PmenuThumb       ctermfg=NONE ctermbg=239  guifg=NONE    guibg=NONE    term=NONE cterm=NONE gui=NONE
hi TabLine          ctermfg=239  ctermbg=16   guifg=#1c1c1c guibg=#000000 term=NONE cterm=NONE gui=NONE
hi TabLineFill      ctermfg=239  ctermbg=16   guifg=#1c1c1c guibg=#000000 term=NONE cterm=NONE gui=NONE
hi TabLineSel       ctermfg=246  ctermbg=NONE guifg=#949494 guibg=NONE    term=bold cterm=bold gui=bold
" syntax highlighting groups
hi Comment          ctermfg=235  ctermbg=NONE guifg=#303030 guibg=NONE    term=NONE cterm=NONE gui=NONE
hi Constant         ctermfg=103  ctermbg=NONE guifg=#8787af guibg=NONE    term=NONE cterm=NONE gui=NONE
hi Identifier       ctermfg=60   ctermbg=NONE guifg=#5f5f87 guibg=NONE    term=NONE cterm=NONE gui=NONE
hi Statement        ctermfg=60   ctermbg=NONE guifg=#5f5f87 guibg=NONE    term=NONE cterm=NONE gui=NONE
hi PreProc          ctermfg=60   ctermbg=NONE guifg=#875f87 guibg=NONE    term=NONE cterm=NONE gui=NONE
hi Type             ctermfg=103  ctermbg=NONE guifg=#8787af guibg=NONE    term=NONE cterm=NONE gui=NONE
hi Special          ctermfg=246  ctermbg=NONE guifg=#949494 guibg=NONE    term=NONE cterm=NONE gui=NONE
hi Underlined       ctermfg=152  ctermbg=NONE guifg=#afd7d7 guibg=NONE    term=underline cterm=underline gui=underline
hi Ignore           ctermfg=235  ctermbg=NONE guifg=#1c1c1c guibg=NONE    term=NONE cterm=NONE gui=NONE
hi Error            ctermfg=196  ctermbg=52   guifg=#ff0000 guibg=#5f0000 term=NONE cterm=NONE gui=NONE
hi Todo             ctermfg=239  ctermbg=NONE guifg=#303030 guibg=NONE    term=bold cterm=bold gui=bold
