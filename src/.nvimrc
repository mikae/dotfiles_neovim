" Set shell
set shell=/bin/sh

" Set encodings
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
scriptencoding utf-8

" Set fileformats
set fileformats=unix,dos,mac
set fileformat=unix

" When user presses gf, vim searches file in these dirs
set path=.,/usr/local/include,/usr/include,$HOME/.local/include

" If file change outside of vim, reload it
set autoread

" Enable hidden buffers
set hidden

" Highlighted, incremental, search with ignoring of case
set hlsearch
set incsearch

" Fast jump to matching pattern
set showmatch

" Set history
set history=5000

" Disable bomb
set nobomb

" No binary mode at the start of vim
set nobinary

" Set modeline
set modeline
set modelines=5

" No octal representation of numbers
set nrformats-=octal

" Always add g flag in :substitute
set gdefault

" Folding
set nofoldenable
set foldcolumn=2
" show fold by default
set foldlevel=99
set foldlevelstart=99

" Disable backup
set nobackup
set noswapfile
set undolevels=5000

" What backspace able to delete
set backspace=indent,eol,start

" set timeoutlen=1000
set timeoutlen=1000
set ttimeoutlen=0

" Prevent cursor from moving to beginning of line when switching buffers
set nostartofline

" Disable virtual edit
set virtualedit=

" Ignore case
set ignorecase
set smartcase

" No whichwraps
set whichwrap=

" Wildmenu
set wildmenu
set wildmode=list:longest,full
set wildignorecase

" Spaces instead of tabs
set expandtab
set smarttab
set noshiftround

" Indentation
set autoindent
set copyindent
set nopreserveindent
set nosmartindent

" Tabs == 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4

