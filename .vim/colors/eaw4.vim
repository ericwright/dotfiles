" Vim color file
" Original Maintainer: Eric Wright <ericwright@fastmail.fm>

" Modified: Eric Wright
" Last Change: 13 Sept 2005

" EAW v1.0
" A modification of the Gardener v1.1 colorscheme, itself a modification of the Guardian colorscheme v1.2




set background=dark
hi clear
syntax reset

if has("gui_running")

" Colors for the User Interface.
	hi linenr           guibg=#262626     guifg=#808080    gui=none
    hi Cursor           guibg=#ccffff
	hi cursorline		guibg=#111111 
	hi CursorColumn		guibg=#111111

    hi link             CursorIM Cursor
	hi Normal           guibg=black       guifg=white      gui=none 
    hi NonText          guibg=#222222     guifg=#ffffcc    gui=none 
    hi Visual           guibg=#444444     guifg=white      gui=none 

    hi Directory        guibg=bg	      guifg=#337700    gui=none

    hi IncSearch        guibg=#0066cc     guifg=white      gui=none
    hi link Seach       IncSearch

    hi SpecialKey       guibg=bg	      guifg=fg         gui=none 
    hi Titled           guibg=bg	      guifg=fg         gui=none 

    hi ErrorMsg         guibg=bg	      guifg=#f72435    gui=none 
    hi ModeMsg          guibg=bg	      guifg=#ffeecc    gui=none 
    hi link	            MoreMsg           ModeMsg
    hi Question         guibg=bg	      guifg=#ccffcc    gui=none 
    hi link	            WarningMsg        ErrorMsg

    hi StatusLineNC     guibg=#ffffcc	  guifg=black	   gui=none 
    hi StatusLine       guibg=#222222	  guifg=white	   gui=none 
    hi VertSplit        guibg=#222222	  guifg=#222222	   gui=none 

    hi DiffAdd          guibg=#446688     guifg=fg	       gui=none 
    hi DiffChange       guibg=#558855     guifg=fg	       gui=none 
    hi DiffDelete       guibg=#884444     guifg=fg	       gui=none 
    hi DiffText         guibg=#884444     guifg=fg	       gui=none 

    " Colors for Syntax Highlighting.
	hi Comment          guibg=bg          guifg=#bbbbbb    gui=none    


    hi Define	        guibg=bg          guifg=#66ccdd    gui=none
    hi Conditional      guibg=bg          guifg=#aadd55    gui=none

    hi Constant         guibg=bg          guifg=#e8ffbf	   gui=none    
    hi Identifier       guibg=bg          guifg=#CFB68E	   gui=none    
    hi String           guibg=bg          guifg=#dc6f57    gui=none    
    hi Character        guibg=bg          guifg=#ffffcc    gui=none    
    hi Number           guibg=bg          guifg=#95C7EF    gui=none    
    hi Boolean          guibg=bg          guifg=#ff55ff    gui=none    
    hi Float            guibg=bg          guifg=#bbddff    gui=none    

    hi Function         guibg=bg          guifg=#fff47f    gui=none    
    hi Statement        guibg=bg          guifg=#ffffcc    gui=none    

    hi Repeat           guibg=bg          guifg=#ff9900    gui=none    
    hi Label            guibg=bg          guifg=#ffccff    gui=none    
    hi Operator         guibg=bg          guifg=#cc9966    gui=none    
    hi Keyword          guibg=bg          guifg=#66ffcc    gui=none    
    hi Exception        guibg=bg          guifg=#66ffcc    gui=none    

    hi PreProc	        guibg=bg          guifg=#CFB68E    gui=none    
    hi Include	        guibg=bg          guifg=#99cc99    gui=none    
    hi link Macro	Include
    hi link PreCondit   Include

    hi Type		guibg=bg	      guifg=#C7FF8F    gui=none    
    hi Structure	guibg=bg	      guifg=#99ff99    gui=none    
    hi Typedef	        guibg=bg	      guifg=#99cc99    gui=italic  

    hi StorageClass	guibg=bg	      guifg=#99cc99	gui=none    
    hi Special	        guibg=bg	      guifg=#bbddff	gui=none    
    hi SpecialChar	guibg=bg	      guifg=#bbddff	gui=none    
    hi Tag		guibg=bg	      guifg=#bbddff	gui=none    
    hi Delimiter	guibg=bg	      guifg=fg		gui=none    
    hi SpecialComment   guibg=#444444     guifg=#eeeeee	   gui=italic  
    hi Debug	        guibg=bg          guifg=#ff9999	   gui=none    

    hi Underlined       guibg=bg          guifg=#99ccff    gui=underline

    hi Title            guibg=#444444     guifg=white	   gui=none    
    hi Ignore           guibg=bg	  guifg=#cccccc    gui=italic  
    hi Error            guibg=#f72435     guifg=white	   gui=none    
    hi Todo	        guibg=#333333     guifg=#ffffcc    gui=none    

    hi htmlH1           guibg=bg          guifg=#ffffff    gui=none
    hi htmlH2           guibg=bg          guifg=#dadada    gui=none
    hi htmlH3           guibg=bg          guifg=#c6c6c6    gui=none
    hi htmlH4           guibg=bg          guifg=#b2b2b2    gui=none
    hi htmlH5           guibg=bg          guifg=#9e9e9e    gui=none
    hi htmlH6           guibg=bg          guifg=#8a8a8a    gui=none

endif
" And finally.

let g:colors_name = "eaw4"
let colors_name   = "eaw4"

