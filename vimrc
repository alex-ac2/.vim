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
Plugin 'mattn/emmet-vim'
Plugin 'valloric/youcompleteme'

" <============================================>


call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set background=dark
"set t_Co=256
"let g:onedark_termcolors=256

"packadd! onedark.vim
"colorscheme onedark 

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

set tabstop=2
set shiftwidth=2
set expandtab

" Column guide
"set colorcolumn=80,100
"hi ColorColumn ctermbg=DarkGray guibg=DarkGray

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
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
let g:syntastic_quiet_messages = {
        \ "!level":  "errors",
        \ "type": "style" }

set hlsearch
set ignorecase
set incsearch
set smartcase
set encoding=utf-8

let maplocalleader = "\\"

inoremap jk <esc>
inoremap kj <esc>
inoremap <silent>jj <esc>
inoremap <silent>kk <esc>
inoremap C-h <L>


set notimeout
set nottimeout
nmap <Up> <NOP>
nmap <Down> <NOP>
nmap <Left> <NOP>
nmap <Right> <NOP>
" Remap of arrow keys
set <up>=OA
set <down>=OB
set <right>=OC
set <left>=OD


map <Up> <Nop>
map <Down> <Nop>
map <Right> <Nop>
map <Left> <Nop>

set number
set t_Co=256
set term=screen-256color
set ruler
set bs=2
set pastetoggle=<F2>
au BufNewFile,BufRead *.ejs set filetype=html

"set t_ku=^[OA
"set t_kd=^[OB
"set t_kr=^[OC
"set t_kl=^[OD

" Emmet 
let g:user_emmet_leader_key='<C-y>'

" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi
" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

let mapleader=" "

nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

