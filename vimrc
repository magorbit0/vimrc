" Vim plugin manager: https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'morhetz/gruvbox'

call plug#end()

colorscheme gruvbox
set background=dark
syntax on
set number
set expandtab
set tabstop=4
set hlsearch
set incsearch

" Mappings
map <C-n> :NERDTreeToggle<CR>

