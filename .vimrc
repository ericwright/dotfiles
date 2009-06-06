set nocompatible
filetype plugin on
syntax enable
set nohlsearch
set incsearch
set ruler
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smarttab
set ignorecase
set expandtab
set autoindent
set binary noeol
set backspace=indent,eol,start
set whichwrap=h,l,~,[,]
set linebreak
set enc=utf-8
set path+=**
set gcr=a:blinkwait0,a:block-cursor
let loaded_matchparen = 1

noremap K i<CR><Esc>h
noremap U  
noremap ci> T>ct<
noremap <D-\> :FuzzyFinderTextMate<CR>


au BufRead,BufNewFile *.arc set filetype=lisp
au BufRead,BufNewFile *.xaml set filetype=xml

au BufRead *.hs compiler ghc
au BufRead *.lhs compiler ghc

autocmd BufRead,BufNewFile Rakefile set filetype=ruby
autocmd BufRead,BufNewFile rakefile set filetype=ruby
autocmd BufRead,BufNewFile *.rake   set filetype=ruby
autocmd BufRead,BufNewFile .irbrc   set filetype=ruby
autocmd BufRead,BufNewFile *.rjs    set filetype=ruby


set pfn=Consolas:h10
set pheader=

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
    setlocal tabstop=8
    setlocal softtabstop=2
    setlocal shiftwidth=2
    setlocal expandtab

    imap <buffer> <CR> <C-R>=RubyEndToken()<CR>
endfunction

autocmd FileType ruby,eruby call UseRubyIndent()