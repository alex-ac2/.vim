execute pathogen#infect()

syntax on
set background=dark
"colorscheme solarized

filetype plugin indent on

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Toggle nerdtree with F10
map <C-n> :NERDTreeToggle<CR>
" Current file in nerdtree
map <F9> :NERDTreeFind<CR>

"let NERDTreeMinimalUI = 1
" let NERDTreeDirArrows = 1

"set mouse=a
let g:NERDTreeMouseMode=3


set tabstop=4
set shiftwidth=4
set expandtab

set colorcolumn=80,100
hi ColorColumn ctermbg=lightmagenta  guibg=lightmagenta

set laststatus=2
set noshowmode

"Syntastic Settings for New Users
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


set hlsearch
set ignorecase
set incsearch
set smartcase



inoremap jk <esc>
inoremap kj <esc>
set number
set t_Co=256
set term=screen-256color
set ruler


let mapleader=" "

nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

