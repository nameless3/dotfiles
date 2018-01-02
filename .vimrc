. $VIMRUNTIME/defaults.vim

set number
set laststatus=2
set cursorline

set viminfo=

" display incomplete commands
set showcmd

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" for added security. don't use temp files, use pipes instead.
set noshelltemp
set secure

" disable swap files
set noswapfile

set relativenumber

let g:airline_theme='ravenpower'
