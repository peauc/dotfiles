syntax off
filetype plugin indent off
" Plugin Manager - Plug-
call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'
Plug 'posva/vim-vue'
Plug 'vim-airline/vim-airline'
"Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
call plug#end()
" ----------------------
"" Colorscheme
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

"" Misc
filetype plugin indent on
if !exists("g:syntax_on")
    syntax enable
endif
set number 
set smartindent
set autoread
set hlsearch
" set vim not compatible with vi
set nocompatible

" encoding is utf 8
set encoding=utf-8
set fileencoding=utf-8

" by default, in insert mode backspace won't delete over line breaks, or
" automatically-inserted indentation, let's change that
set backspace=indent,eol,start

" keep the cursor visible within 3 lines when scrolling
set scrolloff=5

" Vim General Config----
"" Rainbow
let g:rainbow_active = 1

let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
let g:rainbow_active = 1

""Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

""Copy current line
nmap <silent> _y :.w !xsel --clipboard<CR><CR>
""Copy all file
nmap <silent> _Y :%w !xsel --clipboard<CR><CR>
""Copy selected lines
vmap <silent> _y :w !xsel --clipboard<CR><CR>

" Clear highlight on double escape
nnoremap <esc><esc> :noh<return>

" More untuitive page navigation
noremap J L
noremap K H

"" Enable folding
set foldmethod=indent
set foldlevel=99

"" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"" Set default split position
set splitbelow
set splitright

"" Enable terminal creation
nmap <C-T> :vert terminal<return>

"" Set the clipboard to be the system's
set clipboard=unnamed

"" Set swap file to reside in the given directory
set directory^=$HOME/.vim/tmp//

"" Faster rendering
set ttyfast

"" Re-execute the last command but with sudo :)
cmap w!! w !sudo tee > /dev/null %


"" Python config
au BufNewFile, BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=119|
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set cc=120
highlight ColorColumn ctermbg=1
let g:python_highlight_all=1

" Vimwiki Plugin -------
let wiki_1 = {}
let wiki_1.path = '~/vimwiki/'
let wiki_1.syntax = 'markdown'
let wiki_1.ext = '.md'

let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_list = [wiki_1]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
" ----------------------

" NerdTree Plugin ------
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']	
" ----------------------

" CTRLP Plugin ---------
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|.pyc)$'
" ----------------------
"
" -------VueJS----------
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue
let g:vim_vue_plugin_load_full_syntax = 1
let g:vim_vue_plugin_debug = 1
" ----------------------

" YCM -----------------
let g:ycm_add_preview_to_completeopt = 'menu,menuone,popup'

" Syntastic Plugin -----
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggrregate_errors = 1
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_post_args="--max-line-length=120"
let g:pymode_lint_ignore = "E501,W"
" ----------------------
