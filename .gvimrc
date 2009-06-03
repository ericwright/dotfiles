set nocompatible
colorscheme eaw2
set antialias
set guifont=Consolas:h12
set cursorline

" tabs
:nmap <D-]> :tabnext<cr>
:map <D-]> :tabnext<cr>
:imap <D-]> <ESC>:tabnext<cr>i

:map <D-[> :tabprevious<cr>
:nmap <D-[> :tabprevious<cr>
:imap <D-[> <ESC>:tabprevious<cr>i

:nmap <D-t> :tabnew<cr>
:imap <D-t> <ESC>:tabnew<cr>

:nmap <D-w> :tabclose<cr>
:imap <D-w> <ESC>:tabclose<cr>
