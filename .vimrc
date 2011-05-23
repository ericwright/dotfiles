set nocompatible
filetype plugin indent on
syntax enable
let loaded_matchparen = 1
set autoindent
set backspace=indent,eol,start
set binary noeol
set enc=utf-8
set expandtab
set gcr=a:blinkwait0,a:block-cursor
set ignorecase
set incsearch
set linebreak
set nohlsearch
set path+=**
set ruler
set shiftwidth=2
set smarttab
set softtabstop=2
set tabstop=2
set visualbell t_vb=
set whichwrap=h,l,~,[,]

noremap K i<CR><Esc>h
noremap U  
noremap ci> T>ct<
noremap ci< T<ct>
noremap di> T>dt<
noremap di< T<dt>

au BufRead *.hs compiler ghc
au BufRead *.lhs compiler ghc
au BufRead,BufNewFile *.arc set filetype=lisp
au BufRead,BufNewFile *.xaml set filetype=xml
au BufRead,BufNewFile *.gsp set filetype=xml
au BufRead,BufNewFile Rakefile set filetype=ruby
au BufRead,BufNewFile rakefile set filetype=ruby
au BufRead,BufNewFile *.rake   set filetype=ruby
au BufRead,BufNewFile .irbrc   set filetype=ruby
au BufRead,BufNewFile *.rjs    set filetype=ruby
au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.textile set filetype=textile


" disable continuations of comment block on Enter
autocmd FileType * setlocal formatoptions-=cro
 
" warning dialogs go in status bar, not popup window
autocmd FileChangedRO * echohl WarningMsg | echo "File changed RO." | echohl None
autocmd FileChangedShell * echohl WarningMsg | echo "File changed shell." | echohl None

" ruby end tokens

function RubyEndToken ()
    let current_line = getline( '.' )
    let braces_at_end = '{\s*\(|\(,\|\s\|\w\)*|\s*\)\?$'
    let stuff_without_do = '^\s*\(class\|if\|unless\|begin\|case\|for\|module\|while\|until\|def\)'
    let with_do = 'do\s*\(|\(,\|\s\|\w\)*|\s*\)\?$'

    if match(current_line, braces_at_end) >= 0
        return "\<CR>}\<C-O>O\t"
    elseif match(current_line, stuff_without_do) >= 0
        return "\<CR>end\<C-O>O\t"
    elseif match(current_line, with_do) >= 0
        return "\<CR>end\<C-O>O\t"
    else
        return "\<CR>"
    endif
endfunction

function UseRubyIndent ()
    setlocal tabstop=2
    setlocal softtabstop=2
    setlocal shiftwidth=2
    setlocal expandtab

    imap <buffer> <CR> <C-R>=RubyEndToken()<CR>
endfunction

autocmd FileType ruby,eruby call UseRubyIndent()

" automatically checkout from Perforce
" http://stackoverflow.com/questions/1095708/disable-warning-in-vim
let s:IgnoreChange=0
autocmd! FileChangedRO * nested
    \ let s:IgnoreChange=1 |
    \ call system("p4 edit " . expand("%")) |
    \ set noreadonly
autocmd! FileChangedShell *
    \ if 1 == s:IgnoreChange |
    \   let v:fcs_choice="" |
    \   let s:IgnoreChange=0 |
    \ else |
    \   let v:fcs_choice="ask" |
    \ endif
