" Vim plugin manager: https://github.com/junegunn/vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" sudo apt-get install silversearcher-ag
" sudo apt install universal-ctags

call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'sheerun/vim-polyglot'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tpope/vim-fugitive'

call plug#end()

let g:airline#extensions#tabline#enabled=1
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

let g:mapleader=','

syntax on
colorscheme gruvbox
set background=dark

set number
set expandtab
set tabstop=4
set hlsearch
set incsearch
" Disable Background Color Erase
" It fixes background issues in some terminals (like Windows) after scrolling
set t_ut=

" Mappings
map <C-n> :NERDTreeToggle<CR>
map <C-b> :NERDTreeFind<CR>
map <Leader> <Plug>(easymotion-prefix)
map <F3> :Ag ''<Left>
map <F9> :bprev<CR>
map <F10> :bnext<CR>
map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

function! WinMove(key)
        let t:curwin = winnr()
        exec "wincmd ".a:key
        if (t:curwin == winnr())
                if (match(a:key, '[jk]'))
                        wincmd v
                else
                        wincmd s
                endif
                exec "wincmd ".a:key
        endif
endfunction
