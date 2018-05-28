set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" /// PLUGINS /// 
" <============================================>

Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdTree'
Plugin 'itchyny/lightline.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/syntastic'
Plugin 'junegunn/fzf'

" <============================================>


call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set background=dark
"colorscheme solarized

filetype plugin indent on

" set runtimepath^=~/.vim/bundle/ctrlp.vim
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'

" Toggle nerdtree with F10
map <C-n> :NERDTreeToggle<CR>
" Current file in nerdtree
map <F9> :NERDTreeFind<CR>

"let NERDTreeMinimalUI = 1
" let NERDTreeDirArrows = 1

"set mouse=a
let g:NERDTreeMouseMode=3

let g:indentLine_setColors = 0

let g:indentLine_char = 'c'

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
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'

set hlsearch
set ignorecase
set incsearch
set smartcase

let maplocalleader = "\\"

inoremap jk <esc>
inoremap kj <esc>
inoremap <silent>jj <esc>
inoremap <silent>kk <esc>
inoremap C-h <L>
set number
set t_Co=256
set term=screen-256color
set ruler


let mapleader=" "

nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

