" Don't make vim vi-compatible
set nocompatible

" Enable filetype plugins
filetype plugin on
filetype indent on

" Mapleader
let mapleader=","

" Enable syntax highlighting
syntax on

" Color scheme
set t_Co=256 " Enable full color support
set background=dark
colorscheme molotov

" Display cursor position
set ruler

" Highlight current line
set cursorline

" Display incomplete commands
set showcmd

" Indentation
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent

" Enable better command line <TAB> completion
set wildmenu

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Line numbers
set number
set numberwidth=5

" Line length ruler
set textwidth=80
set colorcolumn=+1

" Remap arrow keys
nnoremap <Left> :echoe "Don't be an idiot."<CR>
nnoremap <Right> :echoe "Don't be an idiot."<CR>
nnoremap <Up> :echoe "Don't be an idiot."<CR>
nnoremap <Down> :echoe "Don't be an idiot."<CR>

" New window goes below
set splitbelow

" New window goes right
set splitright

" Scroll offsets
set scrolloff=3
set sidescrolloff=3
set sidescroll=1

" Don't wrap lines
set nowrap

" Hide buffers instead of closing
set hidden

" History limit
set history=1000

" Show filename in window title bar
set title

" Searching
set ignorecase
set hlsearch   " highlight search terms
set incsearch  " show matches as you type

" Scroll viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Trim trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Set local directories
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

" Load local settings if they exist
if filereadable(glob("~/.vimrc.local"))
  source ~/.vimrc.local
endif
