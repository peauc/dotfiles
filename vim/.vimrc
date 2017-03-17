call plug#begin('~/.vim/plugged')
Plug 'Le-Bit/vim-epitech'
Plug 'vim-syntastic/syntastic'
call plug#end()
let g:epi_mode_emacs = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set nu
set numberwidth=3
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


