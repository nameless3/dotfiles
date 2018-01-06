set rtp^=/usr/share/vim/vimfiles/

let g:airline_theme='ravenpower'

set number
set relativenumber
set cursorline
set wrap

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set linebreak
set grepprg=rg

set ignorecase
set smartcase

set noshelltemp
set secure
" set noswapfile

set splitright
set splitbelow
set cpoptions+=$

set ttimeout        " time out for key codes
set ttimeoutlen=100 " wait up to 100ms after Esc for special key

set scrolloff=5

" set nrformats-=octal

map Q gq

inoremap <C-U> <C-G>u<C-U>

nnoremap j gj
nnoremap k gk

" set mouse=a

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
