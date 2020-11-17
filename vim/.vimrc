set shell=/bin/bash

syntax on

set nocompatible
set noerrorbells visualbell t_vb=
set number
set relativenumber
set laststatus=2
set backspace=indent,eol,start
set hidden
set ignorecase
set smartcase
set incsearch
set mouse+=a
set colorcolumn=80
filetype plugin indent on
set autoindent
highlight ColorColumn ctermbg=0 guibg=lightgrey
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'airblade/vim-rooter'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go'
Plug 'preservim/nerdtree'

call plug#end()

colorscheme gruvbox
set background=dark

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co--exclude-standard']

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:rooter_silent_chdir = 1

let mapleader = "\<Space>"
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

" Open hotkeys
map <C-p> :Files<CR>
nmap <leader>; :Buffers<CR>

map <leader>\ :NERDTreeToggle<CR>

" Quick-save
nmap <leader>w :w<CR>

noremap <Up> <Nop>
noremap <Down> <Nop>

nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>
" Golang
let g:go_play_open_browser = 0
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1 

nnoremap <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

