
" Vim color file
" Original Maintainer: Eric Wright <ericwright@fastmail.fm>
" Modified: Eric Wright
" Last Change: 13 Sept 2005
" EAW v2.0
 
set background=dark
hi clear
syntax reset
 
if has("gui_running")
  hi Boolean          guibg=bg          guifg=#ff55ff    gui=none    
  hi Comment          guibg=bg          guifg=#999999    gui=none    
  hi Conditional      guibg=bg          guifg=#CFB68E gui=none
  hi Constant         guibg=bg          guifg=#C7FF8F gui=none    
  hi Cursor           guibg=#ccffff
  hi Debug          guibg=bg          guifg=#ff9999     gui=none    
  hi Define          guibg=bg          guifg=#58b5cc    gui=none
  hi Delimiter  guibg=bg        guifg=#bbddff    gui=none    
  hi DiffAdd          guibg=#446688     guifg=fg         gui=none 
  hi DiffChange       guibg=#558855     guifg=fg         gui=none 
  hi DiffDelete       guibg=#884444     guifg=fg         gui=none 
  hi DiffText         guibg=#884444     guifg=fg         gui=none 
  hi Directory        guibg=bg        guifg=#337700    gui=none
  hi Error            guibg=#dd0000     guifg=white     gui=none    
  hi ErrorMsg         guibg=bg        guifg=#ff0000    gui=none 
  hi Exception        guibg=bg          guifg=#66ffcc    gui=none    
  hi Folded           guibg=#333333  guifg=#999999
  hi Function         guibg=bg          guifg=#fff888    gui=none    
  hi Identifier       guibg=bg          guifg=#a384d6  gui=none    
  hi Ignore           guibg=bg    guifg=#cccccc    gui=italic  
  hi IncSearch        guibg=#0066cc     guifg=white      gui=none
  hi Include          guibg=bg          guifg=#88cc88    gui=none    
  hi Keyword          guibg=bg          guifg=#66ffcc    gui=none    
  hi Label            guibg=bg          guifg=#ffccff    gui=none    
  hi ModeMsg          guibg=bg        guifg=#ffeecc    gui=none 
  hi NonText          guibg=#222222     guifg=#ffffcc    gui=none 
  hi Normal           guibg=#000000       guifg=#eeeeee      gui=none 
  hi Number           guibg=bg          guifg=#95C7EF    gui=none    
  "hi Operator         guibg=bg          guifg=#cc9966    gui=none    
  hi PreProc          guibg=bg          guifg=#CFB68E    gui=none    
  hi PMenu            guibg=#3c4d61    guifg=fg  gui=none
  hi PMenuSel            guibg=#252f3c    guifg=fg  gui=none
  hi Question         guibg=bg        guifg=#ccffcc    gui=none 
  hi Special          guibg=bg        guifg=#bbddff  gui=none    
  hi SpecialChar	guibg=bg        guifg=#bbddff  gui=none    
  hi SpecialComment   guibg=#444444     guifg=#eeeeee     gui=italic  
  hi SpecialKey       guibg=bg        guifg=fg         gui=none 
  hi Statement        guibg=bg          guifg=#fff888    gui=none    
  hi StatusLine       guibg=#222222    guifg=white     gui=none 
  hi StatusLineNC     guibg=#ffffcc    guifg=black     gui=none 
  "hi StorageClass  guibg=bg        guifg=#99cc99  gui=none    
  hi String           guibg=bg          guifg=#dd0000    gui=none    
  "hi Structure  guibg=bg        guifg=#99ff99    gui=none    
  hi Tag    guibg=bg        guifg=#bbddff  gui=none    
  hi Title            guibg=#444444     guifg=white     gui=none    
  hi Titled           guibg=bg        guifg=fg         gui=none 
  hi Todo          guibg=#333333     guifg=#ffffcc    gui=none    
  hi Type    guibg=bg        guifg=#88cc88 gui=none    
  hi Typedef          guibg=bg        guifg=#99cc99    gui=italic  
  hi Underlined       guibg=bg          guifg=#99ccff    gui=underline
  hi VertSplit        guibg=#222222    guifg=#222222     gui=none 
  hi Visual           guibg=#444444     guifg=white      gui=none 
  hi cursorline    guibg=#222222
  hi htmlH1           guibg=bg          guifg=#ffffff    gui=none
  hi htmlH2           guibg=bg          guifg=#dadada    gui=none
  hi htmlH3           guibg=bg          guifg=#c6c6c6    gui=none
  hi htmlH4           guibg=bg          guifg=#b2b2b2    gui=none
  hi htmlH5           guibg=bg          guifg=#9e9e9e    gui=none
  hi htmlH6           guibg=bg          guifg=#8a8a8a    gui=none
  hi linenr           guibg=#262626     guifg=#808080    gui=none
  hi link MoreMsg ModeMsg
  hi link WarningMsg ErrorMsg
  hi link CursorIM Cursor
  hi link Macro  Include
  hi link PreCondit Include
  hi link Seach IncSearch
  hi link Repeat Conditional
  hi link Character String
  hi link Float Number
  hi link Structure Type
  hi link StorageClass Type
  hi link Operator Conditional
  
endif
 
let g:colors_name = "eaw2"
let colors_name   = "eaw2"

