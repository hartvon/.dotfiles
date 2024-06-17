call plug#begin()
Plug 'tpope/vim-sensible'
call plug#end()

set undofile
set undodir=~/.vim/undodir

set autoindent expandtab ts=4 sw=4
autocmd Filetype sh setlocal expandtab ts=2 sw=2

