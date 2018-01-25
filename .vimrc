let g:airline_theme='jellybeans'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
let NERDTreeNaturalSort=1
map <C-n> :NERDTreeToggle<CR>

set number
set relativenumber
set laststatus=2
set cursorline
set ruler
set wrap
set viminfo=

set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set linebreak
set grepprg=rg

set ignorecase
set infercase
set smartcase

set noshelltemp
set secure
set noswapfile

set backspace=indent,eol,start
set history=200
set showcmd
set wildmenu
set splitright
set splitbelow
set cpoptions+=$

set ttimeout        " time out for key codes
set ttimeoutlen=100 " wait up to 100ms after Esc for special key

set display=truncate " Show @@@ in the last line if it is truncated.
set scrolloff=5

set incsearch
set hlsearch
set nrformats-=octal
set nolangremap
set mouse=a

map Q gq

inoremap <C-U> <C-G>u<C-U>
inoremap <C-l> <C-x><C-l>

nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'
nnoremap gj j
nnoremap gk k

" Nuke evil whitespace from orbit (from eli-schwartz)
function StripTrailingWhitespace()
    " Don't remove trailing whitespace for these filetypes
    if &ft =~ 'markdown\|gitsendemail\|json'
        return
    endif
    let save_cursor = getpos(".")
    " Match and remove blank lines at EOF
    :silent! %s#\($\n\s*\)\+\%$##
    " Match and remove whitespace at EOL
    :silent! %s#\s\+$##
    call setpos('.', save_cursor)
endfunction
autocmd BufWritePre * call StripTrailingWhitespace()

if &t_Co > 2 || has("gui_running")
  syntax on
  let c_comment_strings=1
endif

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

if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
          \ | wincmd p | diffthis
endif
