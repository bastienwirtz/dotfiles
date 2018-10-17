" Syntax processing
colorscheme solarized
syntax on

" Indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
filetype indent on

" UI: show line number, display last command, current line highlight, command auto complete
set number
set showcmd
set cursorline
set wildmenu

" Search
set showmatch
set incsearch
set hlsearch

" Enable backups in tmp dir
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

