set nocompatible
colorscheme eaw4
set antialias
set guifont=Consolas:h18
set cursorline

" make PeepOpen trigger on Apple-\
if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-\> <Plug>PeepOpen
end

" hide menu bar in MacVim
set guioptions-=T 
 
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


