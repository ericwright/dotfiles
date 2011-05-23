" ===================================================================
"                 Personal Perforce Settings for VIM
" ===================================================================
" File:           $VIMFILES/config/plugin/perforce.vim
" Purpose:        Personal options for the Perforce plugin
" Author:         David Barsam
" Web:            N/A
" Size:           N/A
" ===================================================================

" ============
" Plugin is only valid if P4 Is in the path
" ============
if executable("p4")

    " ============
    " Helper Functions
    " ============
    function! FN_P4QueryInfo(field)
        return matchstr(system("p4 set"),  a:field.'=\zs\S*\ze\s(set)')
    endfunction

    function! FN_P4QueryInfo()
        let l:output = system("p4 set")
        return matchstr(l:output, 'P4PORT=\zs\S*\ze\s(set)') . " " . matchstr(l:output, 'P4CLIENT=\zs\S*\ze\s(set)') . " " . matchstr(l:output, 'P4USER=\zs\S*\ze\s(set)')
    endfunction

    " ============
    " Settings local to the machine, usuall consisting of the following lines:
    " let g:p4Presets = '<port> <client> <user>, <port> <client> <user>, etc"
    " let g:p4DefaultPreset = 0
    " ============
    let $VIMP4=$VIMFILES."/vimp4.txt"

    if filereadable(expand("$VIMP4"))
        source $VIMP4
    elseif exists("$P4PORT") && exists("$P4CLIENT") && exists("P4USER")
        let g:p4Presets = $P4PORT." ".$P4CLIENT." ".$P4USER
        let g:p4DefaultPreset = 0
    else
        let g:p4Presets = FN_P4QueryInfo()
        let g:p4DefaultPreset = 0
    endif

    " ============
    " Plugin Settings
    " ============
    let g:p4UseGUIDialogs = 1               " Use GUI Prompts when available
    let g:p4PromptToCheckout = 1            " Prompt when editing a controlled files
    let g:p4CheckOutDefault = 2             " Default to 'No' on checkout prompts

    " ============
    " Menu Configuration
    " ============
    let g:p4EnableMenu = 1                  " Enabled the Menus
    let g:p4UseExpandedMenu = 1
    let g:p4EnablePopupMenu = 1
    let g:p4UseExpandedPopupMenu = 0

    " Adjust our Menus to Accomodate the Perforce Menu(s)
    an 10.450 &File.-SEP_SCM-   <Nop>
    let g:p4MenuRoot = "10.455 &File."      " The Parent Menu for Menubar Perforce Menu

    an 1.57 PopUp.-SEP_SCM-     <Nop>
    let g:p4PopupMenuRoot = "1.56 PopUp."   " The Parent Menu for Popup Perforce Menu

    " ============
    " Status Line and Title String
    " ============
    if exists("g:StatusLines")
        let g:StatusLines['perforce']  = ""
        let g:StatusLines['perforce'] .='[%3.3n'                            " buffer number
        let g:StatusLines['perforce'] .='%H%M%R%W]'                         " flags
        let g:StatusLines['perforce'] .=' %t'                               " file name
        let g:StatusLines['perforce'] .=' %<'                               " truncate marker
        let g:StatusLines['perforce'] .='%='                                " right align marker
        let g:StatusLines['perforce'] .='(%3l,%3c%V)'                       " line & column
        let g:StatusLines['perforce'] .=' %{perforce#RulerStatus()}'        " Perforce Plugin status linee
        let g:StatusLines['perforce'] .=' [%{FN_SLFileType()},'             " filetype
        let g:StatusLines['perforce'] .='%{&fileencoding},'                 " file encoding
        let g:StatusLines['perforce'] .='%{&fileformat},'                   " file format
        let g:StatusLines['perforce'] .='%L]'                               " number of lines
        let g:StatusLines['perforce'] .=' %3.p%%'                           " percentage of buffer
    endif

    if exists("g:TitleStrings")
        let g:TitleStrings['perforce']  =""
        let g:TitleStrings['perforce'] .='%t'                               " file name
        let g:TitleStrings['perforce'] .='%(\ %M%)'                         " flags
        let g:TitleStrings['perforce'] .=' %{perforce#RulerStatus()}'       " Perforce Plugin status linee
        let g:TitleStrings['perforce'] .='%(\ (%<%{expand(\"%:~:p:h\")})%)' " full path and filename
    endif

    " Enable the Perforce Status Line
    let g:StatusLine = "perforce"

    " ============
    " Additional Perforce Plugin Vim Utilities
    " ============
    runtime perforce/perforceutils.vim
    runtime perforce/perforcemenu.vim
else
    let loaded_perforce = 1
    let loaded_perforcemenu = 1
    let no_perforce_maps = 1
endif

" ===================================================================
" End
" ===================================================================