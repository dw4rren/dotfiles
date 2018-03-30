" 
" general settings ------------------------
"

set nocompatible " don't emulate vi
set modelines=0  " for security no modelines

" indent
set autoindent  " auto indent newlines
set smartindent " do smart indenting based on context

" tabs: by default be PEP8ish
set expandtab  " when I press tab, insert spaces
set tabstop=4  " visible width of tabs
set softtabstop=4 " edit as if tabs are 4 characters wide 
set shiftwidth=4  " spaces to use for indent
set shiftround 

set showmatch  " show matching braces
set ruler  " display cursor position at bottom
set hls  " highlight search pattern matches
set incsearch  " search as I type
set laststatus=2  " show a status line always 
set visualbell  " don't beep
set ignorecase  " case insensitive search
set nobackup  " no *~ files everywhere
set nowritebackup  " ditto (redundant?)
set noswapfile  " no *.swp files everywhere
set number  " turn on line numbers
set relativenumber " turn on relative line numbers
set history=1000  " long history
set showcmd  " display incomplete commands
set mouse=a  " use mouse 

filetype on
filetype plugin on
set ofu=syntaxcomplete#Complete
syntax enable

" leader
let mapleader = ','
map <leader>t :NERDTreeToggle<CR>
map <leader>f :CtrlP<CR>

" for markdown, spell check and soft break on words
autocmd FileType markdown setlocal spell spelllang=en_us
autocmd FileType markdown setlocal linebreak

" make copy and paste behavior more universal
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

"
" plugins -------------------------------
"

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'bling/vim-airline'
call plug#end()
