if &compatible
  set nocompatible
endif

if exists('skip_defaults_vim')
  finish
endif

let g:airline_theme='ravenpower'

set number
set relativenumber
set laststatus=2
set cursorline
set ruler
set wrap
set viminfo=

set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set linebreak

set ignorecase
set smartcase

set noshelltemp
set secure
set noswapfile

set backspace=indent,eol,start
set history=200
set showcmd
set wildmenu
set splitright
set cpoptions+=$

set ttimeout        " time out for key codes
set ttimeoutlen=100 " wait up to 100ms after Esc for special key

set display=truncate " Show @@@ in the last line if it is truncated.
set scrolloff=5

if has('reltime')
  set incsearch
endif

set hlsearch
set nrformats-=octal

map Q gq

inoremap <C-U> <C-G>u<C-U>

nnoremap j gj
nnoremap k gk

if has('mouse')
  set mouse=a
endif

if &t_Co > 2 || has("gui_running")
  syntax on
  let c_comment_strings=1
endif

if has("autocmd")
  filetype plugin indent on

  " Put these in an autocmd group, so that you can revert them with:
  " ":augroup vimStartup | au! | augroup END"
  augroup vimStartup
    au!
    autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
      \ |   exe "normal! g`\""
      \ | endif

  augroup END

endif " has("autocmd")

if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
          \ | wincmd p | diffthis
endif

if has('langmap') && exists('+langremap')
  set nolangremap
endif
