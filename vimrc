call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
call plug#end()

" auto open NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | wincmd p | endif

set relativenumber

set expandtab
set softtabstop=2
set shiftwidth=2

set nobackup
set nowritebackup
set noswapfile

" press \\ to toggle NerdTree
map <silent> <leader><leader> :NERDTreeToggle<CR>

" use ctrl-[hjkl] to select the active split!
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

autocmd Filetype php setlocal ts=4 sw=4

" indent line
let g:indentLine_color_term = 4
let g:indentLine_char = '┊'

