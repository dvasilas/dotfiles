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
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

highlight ColorColumn ctermbg=0 guibg=lightgrey
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'cocopon/iceberg.vim'
Plug 'preservim/tagbar'
"Plug 'airblade/vim-rooter'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'fatih/vim-go'
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'https://github.com/yegappan/mru'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'scrooloose/syntastic'

call plug#end()

colorscheme iceberg
"set background=dark

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co--exclude-standard']

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:rooter_silent_chdir = 1
let g:airline#extensions#tabline#enabled = 1


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
"
" Golang
let g:go_play_open_browser = 0
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1 

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_include_dirs = [ '../include', 'include' ]
let g:syntastic_c_remove_include_errors = 1

nnoremap <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

autocmd BufRead,BufNewFile {*.markdown,*.mdown,*.mkdn,*.md,*.mkd,*.mdwn,*.mdtxt,*.mdtext,*.text} set filetype=markdown
autocmd FileType markdown setlocal syntax=off 

highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/

set list
set listchars=tab:▸\
